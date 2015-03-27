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

#ifndef ATTIMER_H_
#define ATTIMER_H_

#include "h_types.h"

class ATTimer
{
public:
	ATTimer();
	~ATTimer();
    /**
     * @brief begin
     *      starts the timer. The call of this method by the first
     *      instance of this class initializes and starts the
     *      TIMER OVF interrupt of the timer counter specified by
     *      the macro W_TCNT (attimerdefs.h).
     *
     *      The timer counter that will be used is defined in
     *      the file attimerdefs.h (W_TCNT). The default is timer
     *      counter 1, but it may be changed compiling with
     *      -DWATCH_IS_TIMER0.
     */
    void begin();

    /**
     * @brief getInstance  
     * @return
     *      returns the number of the instanced instance. A
     *      returned value of 1 indicates the first instance.
     */
    int getInstance() {return myinstance;}

    /**
     * @brief udelay
     *      generates a delay in usec. The program will be
     *      stop for ((int)(usec/TTICK_us))*TTICK_us
     *      microseconds.
     *
     * @param usec
     *      is the delay time expressed in usec. Althoug
     *      the usec value is specified in unit, the
     *      resolution is not 1 usec, but TTICK_us. The
     *      resolution may be changed only modifying the
     *      value of the timer counter clock divisor
     *      TCLK_DIV in attimerdefs.h.
     *
     * @return
     *      the remainder time in usec. This value is max
     *      TTICK_us - 1.
     */
    static uint16_t udelay(uint32_t usec);

    /**
     * @brief baseTime
     * @return
     *      returns the time elapsed since the begin method
     *      of the first class instance has been called.
     */
    uint64_t baseTime();

    /**
     * @brief time
     * @return
     *      returns the time elapsed since the begin method
     *      of the relevant instance has been called.
     *
     */
    inline uint64_t time() {return baseTime()-m_startTime;}

    /**
     * @brief uTick
     * @return
     *      returns the clock resolution in usec.
     */
    uint32_t uTick();

    /**
     * @brief reset
     *      resets the instance time to 0; if the
     *      reset is called by the first instance the
     *      timer counter used to generate time is
     *      re-initialized. When the reset is called
     *      for the first instance it need to call
     *      the reset function for all other instances.
     */
    void reset();

    //------>> (*ATTENTION) may not be called outside ISR <<------
    /**
     * @brief timerISR
     *  This function has to be called only by the ISR!!!
     */
    inline static void timerISR(void);

private:
    uint64_t m_startTime;

    uint8_t myinstance;
    static uint8_t instance;
    static bool volatile btIdx;
    static uint64_t volatile m_baseTime[2];

};

#endif /* AT85TIMER_H_ */
