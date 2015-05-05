/*
(c) 2015 - Sergio Formiggini
sergio.formiggini@gmail.com

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

A little fee is required if you use this software for business or
industrial/commercial products.
*/

#include "circbuff.h"

#ifndef NULL
#define NULL 0
#endif

#ifndef __AVR__
#define _INIT_(m) \
    m_intalloc(false),\
    m_bufferDim(0),\
	rPtr(0),\
	wPtr(0),\
	mem(m),\
	overflow(false),\
	overwritten(false)
#else
#define _INIT_(m) \
    m_bufferDim(0),\
    rPtr(0),\
    wPtr(0),\
    mem(m),\
    overflow(false),\
    overwritten(false)
#endif

#ifndef __AVR__
CircularBuffer::CircularBuffer(CircularBuffer::m_size lmem):
        _INIT_(NULL)
{
    evalBuffDim(lmem);
    mem=new char[bufferDim()];
    if (mem==NULL) {
        evalBuffDim(0);
    } else {
        m_intalloc=true;
    }
}
#endif

CircularBuffer::CircularBuffer(char *bmem, CircularBuffer::m_size lmem):
        _INIT_(bmem)
{
#ifndef __AVR__
    m_intalloc=false;
#endif

    evalBuffDim(lmem);
}

CircularBuffer::~CircularBuffer()
{
#ifndef __AVR__
    if (m_intalloc) {
		if (mem!=NULL) {
			delete mem;
			mem=NULL;
		}
	}
#endif
}

int CircularBuffer::getByte()
{
	if (rPtr==wPtr && !overflow)
		return -1; //nothing to read
    char ch=mem[rPtr];
#ifdef CIRCBUFF_POW2DIM
    rPtr=(rPtr+1)&(bufferDim()-1);
#else
    rPtr=(rPtr+1)%bufferDim();
#endif
	overflow=false;
    return ((unsigned int)(ch) & 0xFF);
}

CircularBuffer::m_size CircularBuffer::getData(char *buff, m_size len)
{
    m_size i=0;
    while(i<len && getByte(buff[i])>=0)
        i++;

    return i;
}

CircularBuffer::putres_et CircularBuffer::putByte(const char ch,bool overwrite)
{
    bool ow=overflow;

	//rPtr still not read!!!
    if (overwrite || !ow) {
    //if (overwrite || !overflow) {
        mem[wPtr]=ch;
#ifdef CIRCBUFF_POW2DIM
        wPtr=(wPtr+1)&(bufferDim()-1);
#else
        wPtr=(wPtr+1)%bufferDim();
#endif
        //if (overflow) {
        if (ow) {
			overwritten=true;
			overflow=false;
		}
	}

	//The next write should overwrite!!!
	if (wPtr==rPtr)
		overflow=true;

    //return (overwritten)?OVERWRITTEN:(overflow)?NOT_WRITTEN:WRITTEN;
    return (!ow)?WRITTEN:(overwrite)?OVERWRITTEN:NOT_WRITTEN;
}

CircularBuffer::m_size CircularBuffer::putData(const char *buff, m_size len, bool overwrite)
{
    m_size i=0;

    while(i<len && putByte(buff[i],overwrite)!=NOT_WRITTEN)
        i++;

    return i;
}




