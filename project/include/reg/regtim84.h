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


#ifndef REGTIM84_H_
#define REGTIM84_H_
/*
GTCCR – General Timer/Counter Control Register
Bit
7 6 5 4 3 2 1 0
0x23 (0x43) TSM – – – – – – PSR10
Read/Write R/W R R R R R R R/W
Initial Value 0 0 0 0 0 0 0 0
*/
#define GTCCR	REGDECL(0x23)
#define TSM		BV_(7)
#define PSR10	BV_(0)

/*
TCCR0A – Timer/Counter Control Register A
Bit
			7	   6	  5		 4		3 2 1	  0
0x30 (0x50) COM0A1 COM0A0 COM0B1 COM0B0 – – WGM01 WGM00
Read/Write R/W R/W R/W R/W R R R/W R/W
Initial Value 0 0 0 0 0 0 0 0
*/
#define TCCR0A				REGDECL(0x30)
#define COM0A1				BV_(7)
#define COM0A0				BV_(6)
#define COM0B1				BV_(5)
#define COM0B0				BV_(4)
#define WGM01				BV_(2)
#define WGM00				BV_(1)
/*
TCCR0B – Timer/Counter Control Register B
Bit
7 6 5 4 3 2 1 0
0x33 (0x53) FOC0A FOC0B – – WGM02 CS02 CS01 CS00
Read/Write W W R R R/W R/W R/W R/W
Initial Value 0 0 0 0 0 0 0*/
#define TCCR0B				REGDECL(0x33)
#define FOC0A				BV_(7)
#define FOC0B				BV_(6)
#define WGM02				BV_(4)
#define CS0_0_2(n)  		(n)
#define CS0_STOP			CS0_0_2(0)
#define CS0_CLK_DIV1		CS0_0_2(1)		//Without prescaler!
#define CS0_CLK_DIV8		CS0_0_2(2)
#define CS0_CLK_DIV64		CS0_0_2(3)
#define CS0_CLK_DIV256		CS0_0_2(4)
#define CS0_CLK_DIV1024		CS0_0_2(5)
#define CS0_CLK_EXT_FALLING_EDGE	CS0_0_2(6)
#define CS0_CLK_EXT_RISING_EDGE		CS0_0_3(7)

/* (*2) */
#define SELCS0(d) \
		((d<=1)?CS0_CLK_DIV1:\
		(d<=8+(64-8)/2)?CS0_CLK_DIV8:\
		(d<=64+(256-64)/2)?CS0_CLK_DIV64:\
		(d<=256+(1024-256)/2)?CS0_CLK_DIV256:\
		CS0_CLK_DIV1024)

/*
TCCR1A – Timer/Counter1 Control Register A
Bit
7 6 5 4 3 2 1 0
0x2F (0x4F) COM1A1 COM1A0 COM1B1 COM1B0 – – WGM11 WGM10
Read/Write R/W R/W R/W R/W R R R/W R/W
Initial Value 0 0 0 0 0 0 0 0
*/
#define TCCR1A				REGDECL(0x2F)
#define COM1A1				BV_(7)
#define COM1A0				BV_(6)
#define COM1B1				BV_(5)
#define COM1B0				BV_(4)
#define WGM11				BV_(2)
#define WGM10				BV_(1)

/*
TCCR1B – Timer/Counter1 Control Register B
Bit
			7 	  6 	5 4	  	3	  2	   1 	0
0x2E (0x4E) ICNC1 ICES1 – WGM13 WGM12 CS12 CS11 CS10
Read/Write R/W R/W R R/W R/W R/W R/W R/W
Initial Value 0 0 0 0 0 0 0 0
*/
#define TCCR1B				REGDECL(0x2E)
//--------------------------------------------
#define ICNC1				BV_(7)
#define ICES1				BV_(6)
#define WGW13				BV_(5)
#define WGM12				BV_(4)
#define CS1_0_2(n)  		(n)
#define CS1_STOP			CS1_0_2(0)
#define CS1_CLK_DIV1		CS1_0_2(1)		//Without prescaler!
#define CS1_CLK_DIV8		CS1_0_2(2)
#define CS1_CLK_DIV64		CS1_0_2(3)
#define CS1_CLK_DIV256		CS1_0_2(4)
#define CS1_CLK_DIV1024		CS1_0_2(5)
#define CS1_CLK_EXT_FALLING_EDGE	CS1_0_2(6)
#define CS1_CLK_EXT_RISING_EDGE		CS1_0_3(7)

/* (*2) */
#define SELCS1(d) \
		((d<=1)?CS1_CLK_DIV1:\
		(d<=8+(64-8)/2)?CS1_CLK_DIV8:\
		(d<=64+(256-64)/2)?CS1_CLK_DIV64:\
		(d<=256+(1024-256)/2)?CS1_CLK_DIV256:\
		CS1_CLK_DIV1024)

/*
TCCR1C – Timer/Counter1 Control Register C
Bit
7 6 5 4 3 2 1 0
0x22 (0x42) FOC1A FOC1B – – – – – –
Read/Write W W R R R R R R
Initial Value 0 0 0 0 0 0 0 0
*/
#define TCCR1C	REGDECL(0x22)
#define FOC1A	BV_(7)
#define FOC1B	BV_(6)

/*
TIFR0 – Timer/Counter 0 Interrupt Flag Register
Bit 		7 6 5 4 3 2 	1 	  0
0x38 (0x58) – – – – – OCF0B OCF0A TOV0
Read/Write R R R R R R/W R/W R/W
Initial Value 0 0 0 0 0 0 0 0
*/
#define TIFR0		REGDECL(0x38)
#define OCF0B		BV_(2)
#define OCF0A		BV_(1)
#define TOV0		BV_(0)
#define TOV0_AT     256UL

/*
TIFR1 – Timer/Counter Interrupt Flag Register 1
Bit 		7 6 5 	 4 3 2 	   1 	 0
0x0B (0x2B) – – ICF1 – – OCF1B OCF1A TOV1
Read/Write R R R/W R R R/W R/W R/W
Initial Value 0 0 0 0 0 0 0 0
*/
#define TIFR1		REGDECL(0x0B)
#define ICF1		BV_(5)
#define OCF1B		BV_(2)
#define OCF1A		BV_(1)
#define TOV1		BV_(0)
#define TOV1_AT     65536UL

/*
TIMSK0 – Timer/Counter 0 Interrupt Mask Register
Bit 		7 6 5 4 3 2 	 1 		0
0x39 (0x59) – – – – – OCIE0B OCIE0A TOIE0
*/
#define TIMSK0		REGDECL(0x39)
#define TOIE0		BV_(0)
#define OCIE0A		BV_(1)
#define OCIE0B		BV_(2)

/*
TIMSK1 – Timer/Counter Interrupt Mask Register 1
Bit 		7 6 5     4 3 2      1      0
0x0C (0x2C) – – ICIE1 – – OCIE1B OCIE1A TOIE1
*/
#define TIMSK1		REGDECL(0xC)
#define TOIE1		BV_(0)
#define OCIE1A		BV_(1)
#define OCIE1B		BV_(2)
#define ICIE1		BV_(5)


#define TCNT0	REGDECLB(0x32)
#define TCNT1	REGDECLW(0x2C)

#define OCR0A	REGDECL(0x36)
#define OCR0B	REGDECL(0x3C)

#define OCR1A	REGDECLW(0x2A)
#define OCR1B	REGDECLW(0x28)
#define	ICR1	REGDECLW(0x24)

typedef uint8_t timer0_t;
typedef uint16_t timer1_t;

#endif /* REGTIM84_H_ */
