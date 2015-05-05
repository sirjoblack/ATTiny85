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
#include "atadc.h"

ATADC::ATADC():
    m_mux(0),
    m_aref(0),
    m_clkDiv(0),
    m_singleMode(false),
    m_adlar(false)
{
}

ATADC::~ATADC()
{
}

void ATADC::begin(uint8_t mux, ATADC::ref_et aref, uint8_t div)
{
    setMux(mux);
    setAref(aref);
    setClkDiv(div);
}

int16_t ATADC::acquire()
{
    uint32_t cnt=200000;
    int16_t retval;

    if (singleMode())
        ADCSRA |= ADSC;

    while(!(ADCSRA & ADIF) && --cnt);

    retval=(adlar())?(int16_t)(ADCB):(int16_t)(ADCW);

    if (ADCSRA & ADIF)
        ADCSRA |= ADIF;

    if (!cnt)
        retval=-1;

    return retval;
}

void ATADC::enable()
{
    // (*WR) TODO: differential!
    DIDR0 |= ADCnD(mux());

    ADMUX=aref()|mux();

    ADCSRA=SETBITS(ADCSRA,ADEN|clkDiv()|((singleMode())?0:ADATE),ADEN|ADATE|ADPS_M);
    ADCSRB = (0 | ADTS_FREE);
    SET_ADLAR(adlar());// AT Tiny 85 use ADCSRA, Tiny 84 use ADCSRB

    if (!singleMode())
        ADCSRA |= ADSC;
}

void ATADC::disable()
{
    ADCSRA &= ~(ADEN);

    // (*WR) TODO: differential!
    DIDR0 &= ~(ADCnD(mux()));
}
























