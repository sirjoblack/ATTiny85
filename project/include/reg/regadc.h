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

#ifndef REGADC_H
#define REGADC_H

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

/*ADMUX – ADC Multiplexer Selection Register (Tiny85)
Bit 7     6     5     4     3    2    1    0
    REFS1 REFS0 ADLAR REFS2 MUX3 MUX2 MUX1 MUX0*/

/*ADMUX – ADC Multiplexer Selection Register (Tiny84)
Bit 7     6     5    4    3    2    1    0
    REFS1 REFS0 MUX5 MUX4 MUX3 MUX2 MUX1 MUX0*/
#define ADMUX   REGDECL(0x07)
#define REFS1   BV_(7)
#define REFS0   BV_(6)

#define ADCREF_VCC  (0)
#define ADCREF_1_1     (REFS1)
#define ADCREF_EXT     (REFS0)

#ifdef ___tiny85
#define ADLAR   BV_(5)
#define REFS2   BV_(4)

#define ADCREF_2_56B    (REFS2 | REFS1)
#define ADCREF_2_56     (REFS2 | REFS0 | REFS1)

#define ADCMUX3_0(n)    ((n) & (BV_(3)|BV_(2)|BV_(1)|BV_(0)))
#define ADCn(n)         ADCMUX3_0(n)
#define ADCTEMPERATURE  ADCn(0xF)
#define ADCSINGLE_MAX  ADCn(3)
#endif

#ifdef ___tiny84
#define MUX5_0(n)  ((n) & (BV_(5)|BV_(4)|BV_(3)|BV_(2)|BV_(1)|BV_(0)))
#define ADCn(n)  MUX5_0(n)
#define ADCSINGLE_MAX  ADCn(7)
#define ADCTEMPERATURE ADCn(0x22)
#endif

/*ADCSRA – ADC Control and Status Register A
Bit 7    6    5     4    3    2     1     0
    ADEN ADSC ADATE ADIF ADIE ADPS2 ADPS1 ADPS0*/
#define ADCSRA  REGDECL(0x06)
#define ADEN    BV_(7)
#define ADSC    BV_(6)
#define ADATE   BV_(5)
#define ADIF    BV_(4)
#define ADIE    BV_(3)
#define ADPS2   BV_(2)
#define ADPS1   BV_(1)
#define ADPS0   BV_(0)

#define ADPS_M  (ADPS2|ADPS1|ADPS0)

#define RADPS(d) 	((d<=2)?2:(d<=4+1)?4:\
                    (d<=8+3)?8:(d<=16+7)?16:\
                    (d<=32+15)?32:(d<=64+31)?64:128)

#define SELADPS(d)  ((RADPS(d)==2)?1:(RADPS(d)==4)?2:\
                    (RADPS(d)==8)?3:(RADPS(d)==16)?4:\
                    (RADPS(d)==32)?5:(RADPS(d)==64)?6:7)


/*ADCSRB – ADC Control and Status Register B    tiny 85
Bit     7   6    5   4 3 2     1     0
0x03    BIN ACME IPR – – ADTS2 ADTS1 ADTS0*/

/*ADCSRB – ADC Control and Status Register B    tiny 84
Bit     7   6    5 4     3 2     1     0
0x03    BIN ACME – ADLAR – ADTS2 ADTS1 ADTS0*/

#define ADCSRB  REGDECL(0x03)
#define BIN     BV_(7)
#define ACME    BV_(6)
#define ADTS2   BV_(2)
#define ADTS1   BV_(1)
#define ADTS0   BV_(0)

#ifdef ___tiny85
#define ADTS_FREE   0
#define ADTS_ACMP   (ADTS0)           //Analog comparator
#define ADTS_EXT    (ADTS1)
#define ADTS_TC0MA  (ADTS0 | ADTS1)   //TC 0 match A
#define ADTS_TC0OVF (ADTS2)
#define ADTS_TC0MB  (ADTS2 | ADTS0)   //TC 0 match B
#define ADTS_PCIR   (ADTS2 | ADTS1)// Pin Change Interrupt Request
#endif

#ifdef ___tiny84
#define ADTS_FREE   0
#define ADTS_ACMP   (ADTS0)           //Analog comparator
#define ADTS_EXT    (ADTS1)
#define ADTS_TC0MA  (ADTS0 | ADTS1)   //TC 0 match A
#define ADTS_TC0OVF  (ADTS2)
#define ADTS_TC1MB  (ADTS2 | ADTS0)   //TC 0 match B
#define ADTS_TC1OVF (ADTS2 | ADTS1)// Pin Change Interrupt Request
#define ADTS_TC1CE  (ADTS2 | ADTS1 | ADTS0)//Timer/Counter1 Capture Event
#endif


#ifdef ___tiny85
#define IPR     BV_(5)
#endif

#ifdef ___tiny84
#define ADLAR   BV_(4)
#endif

/*DIDR0 – Digital Input Disable Register 0      tiny 85
Bit  7 6 5     4     3     2     1     0
0x14 – – ADC0D ADC2D ADC3D ADC1D AIN1D AIN0D*/

#ifdef ___tiny85
#define DIDR0   REGDECL(0x14)
#define ADC0D   BV_(5)
#define ADC2D   BV_(4)
#define ADC3D   BV_(3)
#define ADC1D   BV_(2)
#define AIN1D   BV_(1)
#define AIN0D   BV_(0)
#endif

/*DIDR0 – Digital Input Disable Register 0      tiny 84
Bit  7     6     5     4     3     2     1     0
0x01 ADC7D ADC6D ADC5D ADC4D ADC3D ADC2D ADC1D ADC0D*/

#ifdef ___tiny84
#define DIDR0   REGDECL(0x1)
#define ADCnD(mux) ((mux!=ADCTEMPERATURE)?(1<<mux):0)
#endif

#ifdef ___tiny85
#define ADCnD(mux) ((mux==0)?ADC0D:(mux==1)?ADC1D:(mux==2)?ADC2D:(mux==3)?ADC3D:0)
#endif

/*ADCL and ADCH – The ADC Data Register
IF ADLAR = 0
Bit  15   14   13   12   11   10   9    8
0x05 –    –    –    –    –    –    ADC9 ADC8      ADCH
Bit  7    6    5    4    3    2    1    0
0x04 ADC7 ADC6 ADC5 ADC4 ADC3 ADC2 ADC1 ADC0      ADCL

IF ADLAR = 1
Bit  15   14   13   12   11   10   9    8
0x05 ADC9 ADC8 ADC7 ADC6 ADC5 ADC4 ADC3 ADC2      ADCH
Bit  7    6    5    4    3    2    1    0
0x04 ADC1 ADC0 -    -    -    -    -    -         ADCL */
#define ADCH   REGDECLB(0x05)
#define ADCL   REGDECLB(0x04)
#define ADCW   REGDECLW(0x04)       //If ADLAR == 0
#define ADCB   ADCH                 //If ADLAR == 1

typedef uint8_t  adcb_t;
typedef uint16_t adcw_t;

#ifdef ___tiny85
#define SET_ADLAR(v) SETBITS(ADMUX,((v))?ADLAR:0,ADLAR)
#endif

#ifdef ___tiny84
#define SET_ADLAR(v) SETBITS(ADCSRB,(((v))?ADLAR:0),ADLAR)
#endif

#ifdef ___tiny84
#undef ___tiny84
#endif
#ifdef ___tiny85
#undef ___tiny85
#endif
#endif /* REGADC_H */
