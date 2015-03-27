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

#include "spi.h"
#include "fnasm.h"
#include "reg/timing.h"
#include "reg/interrupt.h"
#include "reg/regusi.h"

//#define __USI_ENABLE_HW_MASTER

SPI * SPI::m_spiThis=NULL;
#ifdef SPI__USE_ICNT
char SPI::icnt=1;
#endif

#define _INIT_\
    m_master(false),\
    m_enhFlag(false),\
    m_output(true),\
    m_activeSlave(0),\
    m_delayNops(0),\
    m_rx(NULL,0),\
    m_tx(NULL,0)

SPI::SPI():
    _INIT_
{
        }

  SPI::~SPI()
{
}

//speed = bit/sec (Hz)
void SPI::begin(const void *rx, m_size lrx, const void *tx, m_size ltx, bool master, uint16_t speed)
{
    _setSpiThis(this);
    setMaster(master);
    setRxBufferSpec(rx,lrx);
    setTxBufferSpec(tx,ltx);
    setDelayNops(speed); //(*SW) To be computed as better possible!
}

void SPI::enabled(bool enab)
{
    USICR = 0;

    if (!enab) {
        //All signals as input without pull-up (3-state)
        DDRUSI &= ~(MISO | MOSI | SCK);
        PORTUSI &= ~(MISO | MOSI | SCK);

        return;
    }

    if (master()) {
        //MOSI and SCK output (HIGH), MISO input (LOW)
        DDRUSI = SETBITS(DDRUSI, MOSI | SCK, MISO|MOSI|SCK);
        //MOSI /  SCK / MISO no pull-up
        PORTUSI = SETBITS(PORTUSI, 0 , MISO|MOSI|SCK); //0 = posEdge - start
    } else {
        //MISO output (HIGH), MOSI and SCK input (LOW)
        DDRUSI = SETBITS(DDRUSI, (_output())?MISO:0 , MISO|MOSI|SCK);       
        PORTUSI = SETBITS(PORTUSI, 0, MISO|MOSI|SCK);

        USICR = USICS_POSEDGE | USIWM_3W;

        _enableOvfInterrupt();
    }
}

void SPI::outputEnable(bool enab)
{
    if (master())
        return;

    cli();
    setOutput(enab);
    DDRUSI = SETBITS(DDRUSI, (enab)?MISO:0 , MISO);
    PORTUSI &= ~MISO;
    sei();
}

void SPI::_enableOvfInterrupt()
{
    cli();
    uint8_t ch=__USI_PRESENCE_FLAG;

    ch=_getByte2Xmit();

    USISR = USIOIF; //Clear ovf
    //USICR |= USIOIE; //Enable OVF interrupt
    USICR |= USIOIE;
    //On first request slave may return PRESENCE FLAG
    USIDR = ch;

    sei();
}

SPI::m_size SPI::enhancedGetRcvdData(const void *rx, m_size len)
{
#define __rx(i) *((char *)rx+i)
#define __rx_(i) *((uint8_t *)rx+i)
    size_t i=0;

    UNUSED(rx); // to avoid warning!

    while(i<len) {
        if ( m_rx.getByte(__rx(i))>=0 ) {
            if (!m_enhFlag) {
                if (__rx_(i)==__USI_ISDATA_FLAG) {
                    m_enhFlag=true;
                    continue;
                }
                if ( (__rx_(i)==__USI_NODATA_FF) ||
                     (__rx_(i)==__USI_NODATA_ZERO) ||
                     (__rx_(i)==__USI_PRESENCE_FLAG) )
                    continue;

            } else {
                if (__rx_(i)!=__USI_NODATA_FF &&
                    __rx_(i)!=__USI_NODATA_ZERO &&
                    __rx_(i)!=__USI_PRESENCE_FLAG &&
                    __rx_(i)!=__USI_ISDATA_FLAG)
                    setActiveSlave(__rx_(i));
            }

            i++;
            m_enhFlag=false;
        } else {
            break;
        }
    }

    return i;
}

SPI::m_size SPI::enhancedSetData2Xmit(const void *tx, m_size len)
{
    //uint8_t *ch=(uint8_t *)tx;
#define __tx(i) *((uint8_t *)tx+i)
    //CircularBuffer::putres_et res=CircularBuffer::WRITTEN;

    size_t i=0;
    while(i<len) { // && res!=CircularBuffer::NOT_WRITTEN) {
        if (__tx(i)==__USI_ISDATA_FLAG || __tx(i)==__USI_NODATA_FF ||
                __tx(i)==__USI_NODATA_ZERO || __tx(i)==__USI_PRESENCE_FLAG) {
            m_tx.putByte(__USI_ISDATA_FLAG,true);   //res = m_tx ...
        }
        //if (res!=CircularBuffer::NOT_WRITTEN) {
        m_tx.putByte(__tx(i),true); //res = m_tx ...
        i++;
        //}
    }

    return i;
}

//rlen=0 doesn't store received data
SPI::m_size SPI::sendMaster(m_size rlen)
{
    m_size cnt=0;
    uint8_t ch=SPI::__USI_NODATA_FF;

    while (!(_getByte2Xmit(ch)<0) || rlen) {
#ifdef __USI_ENABLE_HW_MASTER
         for(ch=0;ch<16;ch++) {
            r^=USICLK;

            USICR=r;
/*
            if (ch&2) {
                PORTUSI = SETBITS(PORTUSI,(ch2&0x80)?MOSI:0,MOSI);
                //PORTB ^= SETBITS(PORTUSI,(ch2&0x80)?PB0:0,PB0);
                ch2>>=1;
            }*/
            NOPLOOPDELAY(delayNops());
        }
        ch=USIDR;
#else
        for(uint8_t i=0;i<8;i++) {
            //Set the bit to send
            PORTUSI = SETBITS(PORTUSI,(ch&0x80)?MOSI:0,MOSI);
            //PORTB ^= SETBITS(PORTUSI,(ch&0x80)?PB0:0,PB0); //Debug Tiny84
            PORTUSI |= SCK; //Strobe!!!
            NOPLOOPDELAY(delayNops());

            ch<<=1;
            //Get the bit sent from slave                                 
            ch|=(PINUSI&MISO)?1:0;
            PORTUSI &= ~SCK;//Leaves strobe!!!
            NOPLOOPDELAY(delayNops())
        }
#endif

        if (rlen) {
            _setRcvdByte(ch);
            rlen--;
        }

        ch=SPI::__USI_NODATA_FF;
        cnt++;
    };

    return cnt;
}

void SPI::isr(void)
{
    SPI *spi=SPI::_spiThis();
    uint8_t ch;

    ch=USIDR;

    spi->_setRcvdByte(ch);
    USISR |= USIOIF;

    ch=SPI::__USI_NODATA_FF;
    if (spi->_output())
        ch=spi->_getByte2Xmit();

    USIDR=ch;

#ifdef SPI__USE_ICNT
    SPI::_icnt++;
#endif
}

ISR(USI_OVF_VECT) // OVF interrupt
{
    SPI::isr();
}

/*
typedef void FN_ (uint8_t);
static FN_ * fn;

NAKED_ISR(_VECTOR(12))
{
    register uint8_t counter asm("r3");

    counter++;
    fn(counter);
    reti();
}
*/
