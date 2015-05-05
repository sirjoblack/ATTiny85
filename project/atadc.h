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
#ifndef ATADC_H
#define ATADC_H

#include "h_types.h"
#include "reg/regadc.h"
#include "reg/timing.h"

class ATADC
{
public:
    typedef enum ref_e {
        VCC=ADCREF_VCC,
        V1_1=ADCREF_1_1,
        VEXT=ADCREF_EXT
#ifdef __AVR_ATtiny85__
        ,
        V2_56B=ADCREF_2_56B,
        V2_56=ADCREF_2_56
#endif
    } ref_et;

    ATADC();
    ~ATADC();

//125 KHz sampling rate
#if CLK_KHz==16000
#define ADC_DEFDIV 128
#else
#if CLK_KHz==8000
#define ADC_DEFDIV 64
#else
#define ADC_DEFDIV 32
#endif  //CLK_KHz==8000
#endif  //CLK_KHz==16000

    void begin(uint8_t mux, ref_et aref=VCC, uint8_t div=SELADPS(ADC_DEFDIV));
    inline void beginTemperature() {begin(ADCTEMPERATURE,V1_1,SELADPS(ADC_DEFDIV));}

    void enable();
    int16_t acquire();
    void disable();

    bool singleMode() const {return m_singleMode;}
    void setSingleMode(const bool singleMode) {m_singleMode = singleMode;}

    bool adlar() const {return m_adlar;}
    void setAdlar(bool adlar) {m_adlar = adlar;}

private:
    inline uint8_t mux() const { return m_mux;  }
    inline void setMux(uint8_t mux) { m_mux = mux; }

    inline uint8_t aref() const { return m_aref; }
    inline void setAref(ref_et aref) { m_aref = (uint8_t)aref; }

    inline uint8_t clkDiv() const {return m_clkDiv;}
    inline void setClkDiv(uint8_t clkdiv) {m_clkDiv = clkdiv;}

    uint8_t m_mux;
    uint8_t m_aref;
    uint8_t m_clkDiv;
    bool m_singleMode;
    uint8_t m_adlar;
};

#endif // ATADC_H
