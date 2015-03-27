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

#ifndef REGTIMER_H_
#define REGTIMER_H_

#include "h_types.h"
#include "regmacros.h"
#include "bits.h"

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

#ifdef __AVR_Selected
#undef __AVR_Selected
#endif

#define CLKPR			REGDECL(0x26)
#define CLKPCE			BV_(7)
#define CLKPS(n) 		(n)	//(1<<n) will be the clk divisor!

/* (*1) */
#define SELCLKPS(d) 	((d<=1)?CLKPS(0):(d<=2)?CLKPS(1):\
						(d<=4+1)?CLKPS(2):(d<=8+3)?CLKPS(3):\
						(d<=16+7)?CLKPS(4):(d<=32+15)?CLKPS(5):\
						(d<=64+31)?CLKPS(6):(d<=128+63)?CLKPS(7):\
                        (d<=256+127)?CLKPS(8):CLKPS(8))

//Oscillator Calibration Register
//Bit  7    6    5    4    3    2    1    0
//0x31 CAL7 CAL6 CAL5 CAL4 CAL3 CAL2 CAL1 CAL0
#define OSCCAL	REGDECL(0x31)

#ifdef ___tiny84
#include "regtim84.h"
#endif
#ifdef ___tiny85
#include "regtim85.h"
#endif

#ifdef ___tiny84
#undef ___tiny84
#endif
#ifdef ___tiny85
#undef ___tiny85
#endif

#endif /* REGTIMER_H_ */
