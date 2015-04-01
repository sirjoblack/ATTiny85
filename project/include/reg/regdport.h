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
#ifndef REGDPORT_H
#define REGDPORT_H

#include "bits.h"
#include "regmacros.h"

#ifdef __AVR_ATtiny84__
#define __AVR_Selected
#define ___tiny84
#endif

#ifdef __AVR_ATtiny85__
#define __AVR_Selected
#define ___tiny85
#endif

#ifndef __AVR_Selected
#pragma message "Compiling - Unrecognized CPU (Using Tiny84)"
#define ___tiny84
#endif

#undef __AVR_Selected

#define DDR(p)      (p-1)
#define PIN(p)      (p-2)

#ifdef ___tiny84
#define __PORTADDRA  0x1B
#define PORTA		REGDECL(__PORTADDRA)
#define DDRA		REGDECL(DDR(__PORTADDRA))   //REGDECL(0x1A)
#define PINA		REGDECL(PIN(__PORTADDRA))   //REGDECL(0x19)

#define PA7      BV_(7)
#define PA6      BV_(6)
#define PA5      BV_(5)
#define PA4      BV_(4)
#define PA3      BV_(3)
#define PA2      BV_(2)
#define PA1      BV_(1)
#define PA0      BV_(0)
#endif

#define __PORTADDRB  0x18
#define PORTB		REGDECL(__PORTADDRB)
#define DDRB		REGDECL(DDR(__PORTADDRB))   //REGDECL(0x17)
#define PINB		REGDECL(PIN(__PORTADDRB))   //REGDECL(0x16)

#ifdef ___tiny85
#define PB5      BV_(5)
#define PB4      BV_(4)
#endif
#define PB3      BV_(3)
#define PB2      BV_(2)
#define PB1      BV_(1)
#define PB0      BV_(0)

#ifdef ___tiny84
typedef struct dport_s {
    volatile unsigned char * volatile port;
    unsigned char bitmask;
} dport_st;

#define PORTSET(p,b)            (dport_st){(unsigned char *)(REGDECL_PTR(__PORTADDR ## p)),(P ## p ## b)}
#define PORT_from_SET(dport)    *(dport.port)
#define DDR_from_SET(dport)     *(DDR(dport.port))
#define PIN_from_SET(dport)     *(PIN(dport.port))
#define PORTbit_from_SET(dport)   dport.bitmask
#endif

#ifdef ___tiny85
typedef uint8_t dport_st;
#define PORTSET(p,b)            (dport_st)(PB ## b)
#define PORT_from_SET(dport)    PORTB
#define DDR_from_SET(dport)     DDRB
#define PIN_from_SET(dport)     PINB
#define PORTbit_from_SET(dport)   (uint8_t)dport
#endif

#ifdef ___tiny84
#undef ___tiny84
#endif
#ifdef ___tiny85
#undef ___tiny85
#endif

#endif // REGDPORT_H
