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

#ifndef REGTIM85_H_
#define REGTIM85_H_
#include "h_types.h"
#include "regmacros.h"
//Bit  7    6     5      4      3    2    1    0
//0x2C TSM PWM1B COM1B1 COM1B0 FOC1B FOC1A PSR1 PSR0
//--------------------------------------------
#define GTCCR	REGDECL(0x2C)
#define TSM		BV_(7)
#define PWM1B	BV_(6)
#define COM1B1	BV_(5)
#define COM1B0	BV_(4)
#define FOC1B	BV_(3)
#define FOC1A	BV_(2)
#define PSR1	BV_(1)
#define PSR0	BV_(0)

//TCCR0A – Timer/Counter Control Register A
//Bit 7      6      5      4      3 2 1     0
//    COM0A1 COM0A0 COM0B1 COM0B0 – – WGM01 WGM00
#define TCCR0A				REGDECL(0x2A)

//TCCR0B – Timer/Counter Control Register B
//Bit 7     6     5 4 3     2    1    0
//    FOC0A FOC0B – – WGM02 CS02 CS01 CS00
#define TCCR0B              REGDECL(0x33)
#define CS0_0_2(n)  		(n)
#define CS0_STOP			CS0_0_2(0)
#define CS0_CLK_DIV1		CS0_0_2(1)		//Without prescaler!
#define CS0_CLK_DIV8		CS0_0_2(2)
#define CS0_CLK_DIV64		CS0_0_2(3)
#define CS0_CLK_DIV256		CS0_0_2(4)
#define CS0_CLK_DIV1024		CS0_0_2(5)
#define CS0_CLK_EXT_FALLING_EDGE	CS0_0_2(6)
#define CS0_CLK_EXT_RISING_EDGE		CS0_0_2(7)

#define RCLK_DIV0(d) \
    ((d<=1)?1UL:\
    (d<=8+(64-8)/2)?8UL:\
    (d<=64+(256-64)/2)?64UL:\
    (d<=256+(1024-256)/2)?256UL:\
    1024UL)

#define SELCS0(d) \
    ((d<=1)?CS0_CLK_DIV1:\
    (d<=8+(64-8)/2)?CS0_CLK_DIV8:\
    (d<=64+(256-64)/2)?CS0_CLK_DIV64:\
    (d<=256+(1024-256)/2)?CS0_CLK_DIV256:\
    CS0_CLK_DIV1024)

//TCNT0
#define TCNT0               REGDECL(0x32)
#define OCR0A               REGDECL(0x29)
#define OCR0B               REGDECL(0x28)

//TCCR1 – Timer/Counter Control
//Bit  7    6     5      4      3    2    1    0
//0x30 CTC1 PWM1A COM1A1 COM1A0 CS13 CS12 CS11 CS10
#define TCCR1				REGDECL(0x30)
#define TCCR1B				TCCR1   //To use as tiny84 (but 84 is 16 bit register)
//--------------------------------------------
#define CTC1				BV_(7)
#define PWM1A				BV_(6)
#define COM1A1				BV_(5)
#define COM1A0				BV_(4)
#define CS1_0_3(n)  		(n)	//Async P(LL)CLK/(1<<(n-1)), Sync CLK/(1<<(n-1)))
#define CS1_STOP			CS1_0_3(0)
#define CS1_CLK_DIV1		CS1_0_3(1)
#define CS1_CLK_DIV2		CS1_0_3(2)
#define CS1_CLK_DIV4		CS1_0_3(3)
#define CS1_CLK_DIV8		CS1_0_3(4)
#define CS1_CLK_DIV16		CS1_0_3(5)
#define CS1_CLK_DIV32		CS1_0_3(6)
#define CS1_CLK_DIV64		CS1_0_3(7)
#define CS1_CLK_DIV128		CS1_0_3(8)
#define CS1_CLK_DIV256		CS1_0_3(9)
#define CS1_CLK_DIV512		CS1_0_3(0xA)
#define CS1_CLK_DIV1024		CS1_0_3(0xB)
#define CS1_CLK_DIV2048		CS1_0_3(0xC)
#define CS1_CLK_DIV4096		CS1_0_3(0xD)
#define CS1_CLK_DIV8192		CS1_0_3(0xE)
#define CS1_CLK_DIV16384	CS1_0_3(0xF)

#define RCLK_DIV1(d) \
    ((d<=1)?1UL:(d<=2)?2UL:\
    (d<=4+1)?4UL:(d<=8+3)?8UL:\
    (d<=16+7)?16UL:(d<=32+15)?32UL:\
    (d<=64+31)?64UL:(d<=128+63)?128UL:\
    (d<=256+127)?256UL:(d<=512+255)?512UL:\
    (d<=1024+511)?1024UL:(d<=2048+1023)?2048UL:\
    (d<=4096+2047)?4096UL:(d<=8192+4095)?8192UL:\
    (d<=16384+8191)?16384UL:16384UL)

#define SELCS1(d) \
    ((d<=1)?CS1_CLK_DIV1:(d<=2)?CS1_CLK_DIV2:\
    (d<=4+1)?CS1_CLK_DIV4:(d<=8+3)?CS1_CLK_DIV8:\
    (d<=16+7)?CS1_CLK_DIV16:(d<=32+15)?CS1_CLK_DIV32:\
    (d<=64+31)?CS1_CLK_DIV64:(d<=128+63)?CS1_CLK_DIV128:\
    (d<=256+127)?CS1_CLK_DIV256:(d<=512+255)?CS1_CLK_DIV512:\
    (d<=1024+511)?CS1_CLK_DIV1024:(d<=2048+1023)?CS1_CLK_DIV2048:\
    (d<=4096+2047)?CS1_CLK_DIV4096:(d<=8192+4095)?CS1_CLK_DIV8192:\
    (d<=16384+8191)?CS1_CLK_DIV16384:CS1_CLK_DIV16384)

//Bit  7 6     5     4     3     2    1    0
//0x38 - OCF1A OCF1B OCF0A OCF0B TOV1 TOV0 -
#define TIFR		REGDECL(0x38)
#define TIFR1		TIFR    //To use as tiny84
#define TIFR0		TIFR    //To use as tiny84
#define OCF(c,n)	BV_(3+(c)*2+(1-(n)))  //c=0 | 1 ; n=0(A) n=1(B)
#define OCF1A		OCF(1,0)
#define OCF1B		OCF(1,1)
#define OCF0A		OCF(0,0)
#define OCF0B		OCF(0,1)
#define TOV(n)		BV_((n)+1)
#define TOV1		TOV(1)
#define TOV0		TOV(0)
#define TOV0_AT     256UL
#define TOV1_AT     256UL

//Bit  7 6      5      4      3      2     1     0
//0x39 - OCIE1A OCIE1B OCIE0A OCIE0B TOIE1 TOIE0 -
#define TIMSK		REGDECL(0x39)
#define TIMSK1		TIMSK   //To use as tiny84
#define TIMSK0		TIMSK   //To use as tiny84
#define OCIE(c,n)	BV_(3+(c)*2+(1-(n)))  //c=0 | 1 ; n=0(A) n=1(B)
#define OCIE1A		OCIE(1,0)
#define OCIE1B		OCIE(1,1)
#define OCIE0A		OCIE(0,0)
#define OCIE0B		OCIE(0,1)
#define TOIE(n)		BV_((n)+1)
#define TOIE1		TOIE(1)
#define TOIE0		TOIE(0)

//Bit  7   6 5 4 3 2    1    0
//0x27 LSM - - - - PCKE PLLE PLOCK
#define PLLSCR		REGDECL(0x27)
#define LSM			BV_(7)
#define PCKE		BV_(2)
#define PLLE		BV_(1)
#define PLOCK		BV_(0)

#define TCNT1	REGDECL(0x2F)

#define OCR1A	REGDECL(0x2E)
#define OCR1B	REGDECL(0x2B)
#define OCR1C	REGDECL(0x2D)

typedef uint8_t timer0_t;
typedef uint8_t timer1_t;

#endif /* REGTIM85_H_ */
