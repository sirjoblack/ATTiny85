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

#ifndef CIRCBUFF_H_
#define CIRCBUFF_H_

#include "h_types.h"

/* (*1) m_size MUST be unsigned! Mostly if
CIRCBUFF_POW2DIM is set
#define CIRCBUFF_POW2DIM */

#if defined(__AVR_ATtiny85__) || defined(__AVR_ATtiny84__)
#define CIRCBUFF_SIZE_T uint8_t  /* (*1) */
#else
#ifdef __AVR__
#pragma message "Compiling - Unrecognized CPU (Using Tiny84/85)"
#define CIRCBUFF_SIZE_T uint8_t  /* (*1) */
#endif
#endif


class CircularBuffer
{
public:
#ifdef CIRCBUFF_SIZE_T  /* (*1) */
    typedef CIRCBUFF_SIZE_T m_size;
#else
    typedef size_t m_size;
#endif

    typedef enum putres_e {
        WRITTEN,
        OVERWRITTEN=-1,
        NOT_WRITTEN=-2
    } putres_et;

    CircularBuffer(char *mem, m_size lmem);

#ifndef __AVR__
    CircularBuffer(m_size lmem);
#endif

    ~CircularBuffer();

#ifdef CIRCBUFF_POW2DIM
#define __CIRCBUFFDIM() ((wPtr-rPtr)&(bufferDim()-1))
#else
#define __CIRCBUFFDIM() ((wPtr-rPtr+bufferDim())%bufferDim())
#endif
    /**
     * @brief dataSize
     * @return
     *  returns the amount of data inside the buffer.
     */
    inline m_size dataSize() {
        return ((overflow)?bufferDim():__CIRCBUFFDIM());}

    /**
     * @brief freeSpace
     * @return
     *  returns the amount of bytes still not used in the buffer.
     */
    inline m_size freeSpace() {return bufferDim()-dataSize();}
    inline bool overWrite() {return overwritten;}
    inline m_size bufferDim() {return m_bufferDim;}

    /**
     * @brief getByte
     *  takes a byte from the buffer.
     *
     * @return
     *  returns -1 if there are no bytes in the buffer, otherwise
     *  it returns the value of a byte taking it from the circular
     *  buffer (value from 0 to 255)
     */
    int getByte();
    inline int getByte(char &ch) { int j=getByte();ch=(j<0)?ch:j;return j;}

    /**
     * @brief getData
     *  takes maximum a number of len bytes from the circular
     *  buffer and keeps them into the buffer buff.
     * @param buff
     *  is the buffer where the bytes taken from the
     *  circular buffer will be kept.
     * @param len
     *  is the maximum number of bytes you will take from the
     *  circular buffer.
     * @return
     *  the number of bytes taken from the circular buffer and
     *  inserted into the buff buffer. If there are no byte to
     *  take the returned value is 0.
     */
    m_size getData(char *buff, m_size len);

    /**
     * @brief putByte
     *  Stores a byte into the circular buffer.
     * @param ch
     *  The char to store.
     * @param overwrite
     *  If overwrite is set as true, The byte in the circular
     *  buffer that has not been read will be overwritten.
     *  Otherwise, if overwrite is false (default), this method
     *  will not insert the byte in the circular buffer if there
     *  are no space to insert it.
     * @return
     *  returns a value of type CircularBuffer::putres_et. If no
     *  error occurs the method returns CircularBuffer::WRITTEN,
     *  if a byte was inserted overwriting the circular buffer
     *  contents the method returns CircularBuffer::OVERWRITTEN,
     *  if nothing has been inserted in the circular buffer the
     *  method returns CircularBuffer::NOT_WRITTEN.
     */
    putres_et putByte(const char ch, bool overwrite=false);

    /**
     * @brief putData
     *  Stores some bytes into the circular buffer.
     * @param buffer
     *  is the buffer containing the data to store in the circular
     *  buffer.
     * @param len
     *  is the maximum number of bytes the method will store in the
     *  circular buffer. Values of len bigger than the effective
     *  circular buffer dimension may result in an incorrect behavior
     *  when the parameter overwrite is true (only the last inserted
     *  bytes will be present in the circular buffer).
     * @param overwrite
     *  If overwrite is set as true, The bytes in the circular
     *  buffer that have not been read will be overwritten.
     *  Otherwise, if overwrite is false (default), this method
     *  will not insert bytes in the circular buffer when there
     *  is no space to insert them then the insertion stops.
     * @return
     *  Returns the number of byte inserted in the circular buffer.
     */
    m_size putData(const char *buff, m_size len, bool overwrite=false);

    /**
     * @brief reset
     *  flushes the buffer. All bytes that was in the circular
     *  buffer are loss.
     */
    inline void reset() {rPtr=0;wPtr=0;overflow=false;overwritten=false;}

    /**
     * @brief setBufferSpec
     *  sets the position and dimension of the circular buffer.
     * @param buff
     *  is the memory area pointer that will be used to store
     *  circular buffer data.
     * @param len
     *  the maximum number of bytes the circular buffer may store.
     *  If the class circular buffer is compiled with
     *  -D CIRCBUFF_POW2DIM the buffer dimension is
     *  rounded at the nearest and smallest power of 2.
     */
    inline void setBufferSpec(const char *buff,const m_size len) {mem=(char *)buff;evalBuffDim(len);}

private:
#ifndef __AVR__
    bool m_intalloc;
#endif

#ifdef CIRCBUFF_POW2DIM
    inline void evalBuffDim(m_size lmem) {
        m_bufferDim=-1;
        m_bufferDim>>=1;
        m_bufferDim+=1;
        while(m_bufferDim && !(lmem&m_bufferDim))
            m_bufferDim>>=1;
    }
#else
    inline void evalBuffDim(m_size lmem) {
        m_bufferDim=lmem;
    }
#endif

    m_size m_bufferDim;
    volatile m_size rPtr;
    volatile m_size wPtr;
    char * mem;

    //Overflow alarm! The next byte written should overwrite!!!
    volatile bool overflow;
    volatile bool overwritten;
};

#endif /* CIRCBUFF_H_ */
