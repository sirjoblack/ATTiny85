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
industrial/commercial product.
*/

#ifndef H_TYPES_H_
#define H_TYPES_H_

#ifdef __AVR__
#ifndef __STDINT_H_

typedef signed int int8_t __attribute__((__mode__(__QI__)));
typedef unsigned int uint8_t __attribute__((__mode__(__QI__)));
typedef signed int int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int uint16_t __attribute__ ((__mode__ (__HI__)));
typedef signed int int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int uint32_t __attribute__ ((__mode__ (__SI__)));
typedef signed int int64_t __attribute__((__mode__(__DI__)));
typedef unsigned int uint64_t __attribute__((__mode__(__DI__)));

#endif /* ifndef __STDINT_H_ */

#ifndef _STDDEF_H /* also _STDIO_H */
typedef uint16_t size_t;
typedef int16_t ssize_t;

#ifdef __GNUG__
#define NULL __null
#else
#define NULL 0
#endif

#endif /* #ifndef _STDDEF_H */
#else

//PC Intel case!
#include <stdio.h>
#include <stdint.h>
#include <stddef.h>

#endif

#define UNUSED(x) (void)(x)

#define _uSec(n)     (n)
#define _mSec(n)     ((n)*1000UL)
#define _Sec(n)      ((n)*1000000UL)

#endif /* H_TYPES_H_ */
