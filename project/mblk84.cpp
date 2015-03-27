//#define __STDINT_H_
//#include <stdint.h>
//#include <stddef.h>

#include "inithw.h"
#include "circbuff.h"
#include "attimer.h"
#include "spi.h"
#include "reg/regdport.h"
#include "reg/regusi.h"

/*
#define __FNC_inlinememcpy
#define __FNC_inlinememset
#include "fnclib.h"
//#include <string.h>
*/

/*
extern uint8_t _end;
extern uint8_t __stack;
   __asm volatile ("    ldi r30,lo8(_end)\n"
                    "    ldi r31,hi8(_end)\n"
                    "    ldi r24,lo8(0xc5)\n" // STACK_CANARY = 0xc5
                    "    ldi r25,hi8(__stack)\n"
                    "    rjmp .cmp\n"
                    ".loop:\n"
                    "    st Z+,r24\n"
                    ".cmp:\n"
                    "    cpi r30,lo8(__stack)\n"
                    "    cpc r31,r25\n"
                    "    brlo .loop\n"
                    "    breq .loop"::);
*/

ATTimer timer;
uint32_t cycleTime=0;
uint16_t Mcyct=0;
uint16_t mcyct=-1;
uint32_t ledtime=_Sec(2);

SPI spi;
bool master=true;
uint16_t speed=0; //Speed is only for master communication
uint32_t loopdelay=0;

void setup();
void toggleLed(uint32_t wait_usec=0,int led=0);
void blink(uint32_t usec, int i, int led=0);
void spiCommMstr();
void spiCommSlv();
void commandMng(size_t r);
uint32_t tryNopDelay(uint32_t le, unsigned int li);

#ifdef __AVR_ATtiny84__
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

void setup()
{
    static char rx[64]; // may not be used directly!!!
    static char tx[64]; // may not be used directly!!!

    spi.begin(rx,sizeof(rx),tx,sizeof(tx),master,speed);
    if (master)
        spi.enabled(true);

    DDRLED |= PLED; 	//LED output
    PORTLED &= ~PLED;   //Low (off)

#ifdef DDRDEB
    DDRDEB |= PDEB; 	//PORTB4 output
    PORTDEB &= ~PDEB;   //PORTB4 Low (off)
#endif

#if PCS != 0
    if (master) {
        DDRCS |= PCS;
        PORTCS |= PCS;	//HIGH not selected
    } else {
        DDRCS &= ~PCS;	//Input
        PORTCS |= PCS;	//Pull-up
    }
#endif
    /* (*WR) ATTENTION: The timer.begin disables:
     * PLL, sets its own: CLKPR, TCCR1, TIFR and TMSK
     */

    timer.begin(true);
}

int main()
{  
#define TIME_TO_SLAVE_VERIFY  _mSec(500)
#define TIME_TO_MASTER_SEND   _Sec(3)

    static uint32_t tled=0,tsend=0;
    static uint64_t	t0;
    static uint8_t csStatus,k1=0xFF;

    inithw();
    setup();

    PORTDEB |= PDEB;
    loopdelay=tryNopDelay(512,8191);
    PORTDEB &= ~PDEB;

    if (master) {
        /*        spi.transfer('I');
        spi.transfer('\'');
        spi.transfer('M');
        timer.udelay(_mSec(250));
        // spi.transfer((char *)" Here!",6);
        timer.udelay(_Sec(1));*/
        ;
    } else {
        if (!(PINCS & PCS)) {
            //even cnt returns the led in the prev status
            blink(_mSec(25),20);
        }
        if (!(PINUSI & SCK)) {
            toggleLed(_Sec(1)); //turn on
            //odd cnt returns the led in status inverse of prev
            blink(_mSec(25),19);
        }
    }

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

        if (!master) {
            //Manage CS
            csStatus=(PINCS & PCS);
            if (csStatus!=k1) {
                k1=csStatus;
                spi.enabled((csStatus)?false:true);
                if (csStatus) {
                    //if blink-cnt is even the led return in the prev pos! :)
                    blink(_mSec(25),20); //CS HIGH - intr off
                } else {
                    spi.enhancedSetData2Xmit("L",1);
                    size_t q=spi.rxBufferDim();
                    spi.enhancedSetData2Xmit(&q,1);
                    q=spi.txBufferDim();
                    spi.enhancedSetData2Xmit(&q,1);

                    blink(_mSec(125),4); //CS LOW - intr on
                }
            }

            if (!csStatus) { //IF there's a CS (CS Low active)
                if (tsend<=cycleTime) {
                    spiCommSlv();
                    tsend=TIME_TO_SLAVE_VERIFY;
                } else {
                    tsend-=cycleTime;
                }
            }
        } else {
            if (tsend<=cycleTime) {
                PORTCS &= ~PCS;	//LOW == selected
                spiCommMstr();
                tsend=TIME_TO_MASTER_SEND;
                PORTCS |= PCS;	//HIGH == not selected
            } else {
                tsend-=cycleTime;
            }
        }

        cycleTime=-(uint32_t)t0; t0=timer.baseTime(); cycleTime+=(uint32_t)t0;
        if (Mcyct<cycleTime)
            Mcyct=cycleTime;
        if (mcyct>cycleTime && cycleTime)
            mcyct=cycleTime;
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

void spiCommMstr()
{
    char ch=SPI::__USI_NODATA_FF;
    // (*SW) doesn't use if code is one of the controlled by enhanced!
    spi.setData2Xmit('\x9A');

    spi.enhancedSetData2Xmit(timer.baseTime());
    spi.enhancedSetData2Xmit((uint16_t)cycleTime);
    spi.enhancedSetData2Xmit((uint16_t)timer.uTick());
    spi.masterSetActiveSlave2Xmit('\xCC');

    //spi.enhancedSetData2Xmit(mcyct);

    spi.enhancedSetData2Xmit(loopdelay);
    // (*SW) doesn't use if code is one of the controlled by enhanced!
    spi.setData2Xmit('\xEE');

    SPI::m_size k=spi.rxBufferDim();
    spi.enhancedSetData2Xmit(k);

    k=spi.getRcvdDataSize();
    spi.enhancedSetData2Xmit(k);
    if (k) {
        blink(_mSec(125),4);
    } else {
        blink(_mSec(25),20);
    }

    k=8;
    while(spi.getRcvdDataSize() && k--) {
        if (spi.enhancedGetRcvdData(ch)) {
            spi.enhancedSetData2Xmit(ch);
            blink(_mSec(125),4,PDEB);
        }
    }

    k=spi.get2XmitDataSize();
    spi.sendMaster(k); // (*SW) k is always 1 ???
}

void spiCommSlv()
{
    char ch;
    if (!spi.get2XmitDataSize()) {
        PORTB ^= PB0;
        spi.enhancedSetData2Xmit(timer.baseTime());
        spi.enhancedSetData2Xmit('\xCC');
        spi.enhancedSetData2Xmit((uint16_t)cycleTime);
        spi.enhancedSetData2Xmit(mcyct);
        spi.enhancedSetData2Xmit(loopdelay);
        spi.enhancedSetData2Xmit(ch); //echo recv char ... 1 by 1
    }
}

void commandMng(size_t r)
{
    UNUSED(r);
}

uint32_t tryNopDelay(uint32_t le, unsigned int li)
{
    uint32_t t0=timer.baseTime();

    for(;le>0;le--)
        NOPLOOPDELAY(li);

    return timer.baseTime()-t0;
}
