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

#include "h_types.h"
#include "attimer.h"
#include "reg/timing.h"
#include "fnasm.h"
#include "reg/reggeneral.h"
#include "reg/regtimer.h"
#include "attimerdefs.h"

//Static values
uint8_t ATTimer::instance=0;
bool volatile ATTimer::btIdx=false;
uint64_t volatile ATTimer::m_baseTime[2]={0,0};

ATTimer::ATTimer()
{
    instance++;
    myinstance=instance;

    m_startTime=0;
}

ATTimer::~ATTimer()
{
}

void ATTimer::begin()
{
    if (myinstance!= 1) {
        m_startTime=baseTime();
        return;
    }

    uint8_t sr;

    sei();

    sr=SREG;
    cli();

    //Disables timer OVF interrupts
    W_TIMSK &= ~W_TOIE;

    W_TCCR = W_SELCS(TCLK_DIV); // [ (*2) - register.h ]
    nop();

    W_TIMSK |= W_TOIE;
    nop();

    reset();

    SREG=sr;
    //Debug while(!(TIMSK&TOIE1));
}

void ATTimer::reset()
{
    if (myinstance!=1) {
        m_startTime=baseTime();
        return;
    }

    m_startTime=0;

    uint8_t sr=SREG;
    cli();

    m_baseTime[0]=0;
    m_baseTime[1]=0;

    W_TCNT=0;
    //Clear timer interrupt flags
    if (W_TIFR & W_TOV)
        W_TIFR &= W_TOV;

    SREG=sr;
}

uint16_t ATTimer::udelay(uint32_t usec)
{
#define CNT_ (W_TOV_AT - 0x10UL)
    timer1_t t0;
    uint16_t remainder=usec%TTICK_us;

    //usec becomes the number of ticks!
    usec=usec/TTICK_us;

    // is ">" so the "if" below is always executed!!! :)
    while(usec > (uint32_t)CNT_) {
        t0=W_TCNT;
        while ((timer1_t)(W_TCNT-t0) < (timer1_t)CNT_);
        usec-=(timer1_t)(W_TCNT-t0);
    }

    if ((timer1_t)usec) {
        t0=W_TCNT;
        while ((timer1_t)(W_TCNT-t0)<(timer1_t)usec);
    }
#undef CNT_

    return remainder;
}

uint64_t ATTimer::baseTime()
{
    uint32_t x=W_TCNT*TTICK_us;
    uint64_t y=m_baseTime[btIdx];
    uint64_t z=y+x;
    return z;
}

uint32_t ATTimer::uTick() {return TTICK_us;}

void ATTimer::timerISR(void)
{
    uint32_t x=(TTICK_us*W_TOV_AT);
    uint64_t y=m_baseTime[btIdx];
    uint64_t z=y+x;
    m_baseTime[!btIdx]=z;
    btIdx=!btIdx;
}

ISR(W_ISR) // TOV of cntX
{
    ATTimer::timerISR();
}
