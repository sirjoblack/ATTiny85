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

#ifndef INITHW_H
#define INITHW_H
#include "reg/reggeneral.h"
#include "reg/regtimer.h"
#include "reg/timing.h"
#include "fnasm.h"

inline void inithw()
{
    uint8_t sr=SREG;
    cli();

#ifdef __AVR_ATtiny85__
    //Disable PLL
    PLLSCR &= ~(PLLE | PCKE);
    nop();
#endif

    // Change prescaler
    CLKPR = CLKPCE;					//Start prescaler update
    CLKPR = SELCLKPS(CLKPS_DIV);	//Prescaler CLK Divisor = 1 (1<<0) [ (*1) - register.h ]
    nop();

    SREG=sr;

    //Global Timer CR
    GTCCR = 0;

#ifdef __AVR_ATtiny84__
    TIMSK1 = 0;
    TIMSK0 = 0;
#endif

#ifdef __AVR_ATtiny85__
    TIMSK = 0;
#endif
}

#endif // INITHW_H
