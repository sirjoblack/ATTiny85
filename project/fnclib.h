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

#ifndef FNCLIB_H
#define FNCLIB_H

#include "h_types.h"

/*_memcpy-----------------------------------*/
#ifdef __FNC_INLINE_MEMCPY
#undef __FNC_INLINE_MEMCPY
#endif
#if defined (__FNC_inlinememcpy) || defined (__FNC_inlineall)
#define __FNC_INLINE_MEMCPY inline
#else
#define __FNC_INLINE_MEMCPY
#endif
#define __FNC_MEMCPY() \
    __FNC_INLINE_MEMCPY void * _memcpy(void *d,void *s,size_t q) \
{\
    do {\
    --q;\
    *((uint8_t *)d+q)=*((uint8_t *)s+q);\
    } while(q);\
    \
    return d;\
    }
#if defined (__FNC_inlinememcpy) || defined (__FNC_inlineall)
__FNC_MEMCPY()
#endif

/*_memset-----------------------------------*/
#ifdef __FNC_INLINE_MEMSET
#undef __FNC_INLINE_MEMSET
#endif
#if defined (__FNC_inlinememset) || defined (__FNC_inlineall)
#define __FNC_INLINE_MEMSET inline
#else
#define __FNC_INLINE_MEMSET
#endif
#define __FNC_MEMSET() \
    __FNC_INLINE_MEMSET void * _memset(void *d,char s,size_t q) \
{\
    do {\
    --q;\
    *((uint8_t *)d+q)=s;\
    } while(q);\
    \
    return d;\
    }
#if defined (__FNC_inlinememset) || defined (__FNC_inlineall)
__FNC_MEMSET()
#endif

/*new inlineable ...*/

/*-----------------------------------------*/

#ifdef __cplusplus
extern "C" {
#endif /*__cplusplus*/
#if !defined (__FNC_inlinememcpy) && !defined (__FNC_inlineall)
    /**
    * @brief _memcpy
    *      This function do a reverse copy, if s and d overlap
    *      in the same memory area only if s is less than d
    *      the copy will be correctly accomplished.
    *
    * @param d
    *      pointer of the destination memory area
    *
    * @param s
    *      pointer of the source memory area
    *
    * @param q
    *      number of bytes to copy from s to d.
    * @return
    */
    void * _memcpy(void *d,void *s,size_t q);
#endif
#if !defined (__FNC_inlinememset) && !defined (__FNC_inlineall)
    void * _memset(void *d,char s,size_t q);
#endif
    /* extern void *_memset(void *, int, size_t); */

    char * _strcpy(char *sd, char *ss);
    char * _strchr(char *sd, char s);
    size_t _strlen(char *sd);

    /**
    * @brief _strntoll
    *      This function converts n characters of a string in a
    *      64bit signed integer.
    *
    *      It auto-recognizes number basis if the parameter base
    *      is specified as 0. C-standard number representation
    *      such as: 0xnnnn (hex), 0nnnnnnn (octal) are recognized;
    *      moreover this function recognizes a special string format
    *      "*bnnnnnnn" where b is the basis value ('2'=2, '3'=3, ...,
    *      'A'=10,'B'=11, ... 'Z'=36) and nnnnnnn are the digits.
    *      IE: *210010111 is converted as binary 10010111 => 0x97.
    *
    *      All chars leading on the left of the string (specified by x)
    *      that have value less than or equal space are skipped; the
    *      first char on the right that has value less than '0' stops
    *      the conversion.
    *
    *      A char that has a value out of the base bounds (0 -> base-1)
    *      stops the conversion.
    *
    * @param x
    *      The pointer of the string containing the number to convert.
    *
    * @param n_
    *      The number of chars to read to generate the number, if this
    *      number is -1 (<0) the string is read as an ascii0 string.
    *
    * @param base
    *      The base to use or 0 if the base is intrinsic at the string.
    *      If base is specified as 0 the number are interpreted as
    *      explained above.
    *
    * @return
    *      0 or the value converted till a stop condition.
    */
    int64_t _strntoll(char * x, ssize_t n_, unsigned int base);

#ifdef __cplusplus
} /* extern "C" */

#endif /*__cplusplus*/

#endif /* FNCLIB_H */
