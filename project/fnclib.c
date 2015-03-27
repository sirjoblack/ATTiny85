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

#include "fnclib.h"

__FNC_MEMCPY()

__FNC_MEMSET()

char * _strcpy(char *sd, char *ss)
{
    int i=0;
    do {
        *(sd+i)=*(ss+i);
        i++;
    } while(*(ss+i));

    return sd;
}

size_t _strlen(char *sd)
{
    size_t i=0;
    while(*(sd+i))
        i++;
    return i;
}

char * _strchr(char *sd, char s)
{
    while(*sd!=0 && *sd!=s)
        sd++;

    return (*sd!=0)?sd:NULL;
}

char * _strcat(char *sd,char *ss)
{
    return _strcpy(sd+_strlen(sd),ss);
}

int64_t _strntoll(char * x, ssize_t n_, unsigned int base)
{
    uint64_t z=0, k;
    int64_t sign=1;
    ssize_t n=0;

    if (n_<0) {
        n_=_strlen(x);
    }

    if (!n_)
        return 0;

    while( x[n]<='\x20' && n<n_ ) {
        n++;
    }

    if (n==n_)
        return 0;

    switch(x[n]) {
    case '-': sign=-1;n++;break;
    case '+': n++; break;
    default:break;
    }

    if (n==n_)
        return 0;

    if (base == 0) {
        switch(x[n]) {
        case '0':
            base = 8; n++;
            if (x[n]=='x') {
                base=16; n++;
            }
            break;
        case 'x': case 'X':
        case '*':
            n++;base=x[n]-'0';
            if (base>9)
                base-=7;    /* A=10 */
            if (base<=0)
                base=10;
            n++;
            break;
        default:
            base=10;
            break;
        }
    }

    while (n<n_) {
        k=x[n++];
        if (k<'0')
            break;
        if (k>='0' && k<='9') {
            k-='0';
        } else {
            if (k>'Z')
                k-=32;
            k-='A';k+=10;
            if (k<10)
                break;
        }
        if (k>=base)
            break;
        z = z * base + k;
    }

    return sign*(int64_t)z;
}
