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

#ifndef ATTIMERDEFS_H
#define ATTIMERDEFS_H

#include "reg/timing.h"
#include "reg/regtimer.h"
#include "reg/interrupt.h"

//REMEMBER that not all the clock divisor are correct!
//In any case RCLK_DIV retrieves the nearest correct value!
#ifdef __AVR_ATtiny85__
#define __AVR_Selected
#define TCLK_DIV   RCLK_DIV(128UL)    //Minimum value with CLKPS_DIV is 16UL (see the relevant SELCS0)
#endif                                //Value of 8 gives a counter tick of 500 ns (with 16MHz cpu-clk)
#ifdef __AVR_ATtiny84__
#define __AVR_Selected
#define TCLK_DIV   RCLK_DIV(64UL)     //Minimum value with CLKPS_DIV is 8UL (see the relevant SELCS0)
#endif                                 //Value of 4 gives a counter tick of 500 ns (with 8MHz cpu-clk)

#ifndef __AVR_Selected
#pragma message "Compiling - Unrecognized CPU (Using Tiny84)"
#define TCLK_DIV   RCLK_DIV(64UL)     //Minimum value with CLKPS_DIV is 8UL
#endif                                 //Value of 4 gives a counter tick of 500 ns (with 8MHz cpu-clk)

#undef __AVR_Selected

#define TTICKf_us  (TICKf_ns/1000.0*TCLK_DIV)
#define TTICK_us   ((unsigned long)(TTICKf_us))

#ifdef WATCH_IS_TIMER0
#define W_TCNT      TCNT0
#define W_TIFR      TIFR0
#define W_TIMSK     TIMSK0
#define W_TCCR      TCCR0B
#define W_TOV       TOV0
#define W_TOV_AT    TOV0_AT
#define W_TOIE      TOIE0
#define W_ISR       TIM0_OVF_VECT
#else
#define W_TCNT      TCNT1
#define W_TIFR      TIFR1
#define W_TIMSK     TIMSK1
#define W_TCCR      TCCR1B
#define W_TOV       TOV1
#define W_TOV_AT    TOV1_AT
#define W_TOIE      TOIE1
#define W_ISR       TIM1_OVF_VECT
#endif

#endif // ATTIMERDEFS_H
