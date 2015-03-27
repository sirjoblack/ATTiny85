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
#ifndef TIMING_H
#define TIMING_H

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

/* (*1) */
#ifdef ___tiny84
#define RCLK_DIV(d)	((d<=1)?1UL:\
		(d<=8+(64-8)/2)?8UL:\
		(d<=64+(256-64)/2)?64UL:\
		(d<=256+(1024-256)/2)?256UL:\
		1024UL)
#endif

#ifdef ___tiny85
#define RCLK_DIV(d)	((d<=1)?1UL:(d<=2)?2UL:\
                    (d<=4+1)?4UL:(d<=8+3)?8UL:\
                    (d<=16+7)?16UL:(d<=32+15)?32UL:\
                    (d<=64+31)?64UL:(d<=128+63)?128UL:\
                    (d<=256+127)?256UL:(d<=512+255)?512UL:\
                    (d<=1024+511)?1024UL:(d<=2048+1023)?2048UL:\
                    (d<=4096+2047)?4096UL:(d<=8192+4095)?8192UL:\
                    (d<=16384+8191)?16384UL:16384UL)
#endif

/* (*2) */
#define RCLKPS(d) 	((d<=1)?1UL:(d<=2)?2UL:\
                    (d<=4+1)?4UL:(d<=8+3)?8UL:\
                    (d<=16+7)?16UL:(d<=32+15)?32UL:\
                    (d<=64+31)?64UL:(d<=128+63)?128UL:\
                    (d<=256+127)?256UL:256UL)

/* (*3) */
#ifdef ___tiny85
#define CLK_KHz     		16000UL	//16 MHz (Low Fuse 0xE1)
#endif
#ifdef ___tiny84
#define CLK_KHz     		8000UL	//8 MHz (Low Fuse 0xE2)
#endif

#define CLKPS_DIV   		RCLKPS(1UL)
#define CLK_CYCLE_FREQ_KHz	(CLK_KHz/CLKPS_DIV)  //KHz
#define TICKf_ns    		(CLKPS_DIV*1000000.0/CLK_KHz)
#define TICK_ns_10th   		((unsigned long)(TICKf_ns*10)) //tenth of nsec

//Number of ticks in 1 us
#define TICK_TO_1_us    ((unsigned long)(1000.0/TICKf_ns))

#ifdef ___tiny84
#undef ___tiny84
#endif

#ifdef ___tiny85
#undef ___tiny85
#endif

#endif // TIMING_H
