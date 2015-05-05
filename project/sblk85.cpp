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

//#define __STDINT_H_
//#include <stdint.h>
//#include <stddef.h>

#include "inithw.h"
#include "circbuff.h"
#include "attimer.h"
#include "spi.h"
#include "reg/regdport.h"
#include "reg/regusi.h"
#include "fnclib.h"

#if !defined(__AVR_ATtiny84__) && !defined(__AVR_ATtiny85__)
#define __AVR_Other
#endif

#if defined(__AVR_ATtiny84__) || defined(__AVR_Other)
#define PLED	PB2
#define PORTLED PORTB
#define DDRLED	DDRB

#define PORTDEB PORTB
#define DDRDEB	DDRB
#define PDEB    PB0

#define PCS		PA7
#define PORTCS	PORTA
#define DDRCS	DDRA
#define PINCS	PINA
#endif

#ifdef __AVR_ATtiny85__
#define PLED	PB4
#define PORTLED PORTB
#define DDRLED	DDRB

#define PORTDEB PORTB
#define DDRDEB	DDRB
#define PDEB    PB4

#define PCS		PB3
#define PORTCS	PORTB
#define DDRCS	DDRB
#define PINCS	PINB
#endif

ATTimer timer;
uint32_t ledtime=_Sec(2);
uint32_t cycleTime=0;

typedef struct blk_s {
    uint8_t timeled;
    char times;
    int msec;
} blk_st;

blk_st blk={PLED,10,100};

SPI spi;

void setup();
void toggleLed(uint32_t wait_usec=0,int led=0);
void blink(uint32_t usec, int i, int led=0);
void spiCommSlv();
char execCmd(char *cmd);

void setup()
{
    static char rx[32]; // may not be used directly!!!
    static char tx[32]; // may not be used directly!!!

    spi.begin(rx,sizeof(rx),tx,sizeof(tx));

    DDRLED |= PLED; 	//LED output
    PORTLED &= ~PLED;   //Low (off)

#ifdef DDRDEB
    DDRDEB |= PDEB; 	//PORTB4 output
    PORTDEB &= ~PDEB;   //PORTB4 Low (off)
#endif

#if PCS != 0
    DDRCS &= ~PCS;	//Input
    PORTCS |= PCS;	//Pull-up
#endif

    timer.begin();
}

int main()
{  
    static uint32_t tled=0,tled2=0;
    static uint64_t	t0;
    static uint8_t csStatus,k1=0xFF;

    inithw();
    setup();

    timer.reset();
    t0=timer.baseTime();

    for(;;) //forever!!!
    {
        if (tled<=cycleTime) {
            toggleLed();
            tled=ledtime;
        } else {
            tled-=cycleTime;
        }

        if (blk.times) {
            //blink(_mSec(blk.msec),blk.times,blk.timeled);
            if (tled2<=cycleTime) {
                toggleLed(0,blk.timeled);
                blk.times--;
                tled2=(!blk.times)?0:_mSec(blk.msec);
            } else {
                tled2-=cycleTime;
            }
        }

        //Manage CS
        csStatus=(PINCS & PCS);
        if (csStatus!=k1) {
            k1=csStatus;
            spi.enabled((csStatus)?false:true);
        }

        if (!csStatus) { //IF there's a CS (CS Low active)
            if (spi.getRcvdDataSize()) {
                spiCommSlv();
            }
        }

        cycleTime=-(uint32_t)t0; t0=timer.baseTime(); cycleTime+=(uint32_t)t0;
    }

    return 0;
}

void toggleLed(uint32_t wait_usec, int led)
{
    PORTB ^= (!led)?PLED:led; //Toggle!!
    if (wait_usec)
        timer.udelay(wait_usec);
}

void blink(uint32_t usec,int i, int led)
{
    for(;i!=0;i--)
        toggleLed(usec,led);
}

void spiCommSlv()
{
    static int cmdb=0;
    static char cmd[16];
    int j;
    while( !((j=spi.getRcvdByte())<0) ) {
        if (j==0xFF)
            continue;

        cmd[cmdb]=j;

        if (cmd[cmdb]=='#') {
            if (cmdb==0)
                continue;
            cmd[cmdb]=0;
            spi.setByte2Xmit(cmd[0]);
            if ( (cmd[cmdb]=execCmd(cmd))!=0 ) {
                spi.setByte2Xmit('?');
                spi.setByte2Xmit(cmd[cmdb]);
            } else {
                spi.setData2Xmit("OK",2);
            }

            cmdb=0;
        } else {
            cmdb++;
            if (cmdb==16) {
                spi.setByte2Xmit('Z');
                spi.setByte2Xmit('?');
                spi.setByte2Xmit(cmd[cmdb]);
                cmdb=0;
            }
        }
    }
}

char execCmd(char *cmd)
{
    //cmd = lnnnnnn => l"edtime" nnnnnn=usec
    if (cmd[0]=='l') {
        if (!*(cmd+1))
            return 'T';

        ledtime=_strntoll(cmd+1,-1,0);
        return 0;
    }

    //cmd = bLttmmmmmm => b"link" L=Led[0|1] tt=times mmm...=msec
    if (cmd[0]=='b') {
        blk.times=0;

        if (!*(cmd+1))
            return 0x41;
        uint8_t x=_strntoll(cmd+1,1,0);
        blk.timeled=(x==0)?PLED:PDEB;

        if (!*(cmd+4))
            return 0x42;
        blk.msec=_strntoll(cmd+4,-1,0);

        if (!*(cmd+2))
            return 0x43;
        blk.times=_strntoll(cmd+2,2,0);

        return 0;
    }

    //cmd = t => t"imespec"
    if (cmd[0]=='t') {
        spi.setData2Xmit((uint16_t)TICK_ns_10th);
        spi.setData2Xmit((uint16_t)timer.uTick());
        spi.setData2Xmit((uint32_t)timer.baseTime());
        return 0;
    }

    return 0xEE;
}
