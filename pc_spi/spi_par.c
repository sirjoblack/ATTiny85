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

#include "spi_par.h"

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <pthread.h>

#include "timefn.h"

#include <sys/io.h>

#define __EDGE_BASED

typedef void * THFN_t (void *);

static void *spi_transferSlv(spi_st *s);
static inline int intSpi_getByte(spi_st *s);
static inline int intSpi_putByte(char ch,spi_st *s);

//User get the spi-received byte
int spi_getByte(spi_st *s)
{
    char ch;
    int retval=-1;

    if (pthread_mutex_trylock(&s->mrx)) {
        //perror("");
        return -1;
    }
    //pthread_mutex_lock(&s->mrx);

    if (s->rrx!=s->wrx)
    {
        ch=s->rx[s->rrx];
        s->rrx++;
        s->rrx%=s->lrx;
        retval=(int)((unsigned int)ch&0xff);
    }

    pthread_mutex_unlock(&s->mrx);
    return retval;
}

//User puts bytes to xmit
ssize_t spi_putData(char *d,size_t l,spi_st *s) {
    size_t i;
    for(i=0;i<l;i++) {
        spi_putByte(d[i],s);
    }

    return l;
}

//User puts the byte to xmit
int spi_putByte(char ch,spi_st *s)
{
    pthread_mutex_lock(&s->mtx);

    //(*SW) Verifiche e se errore: return -1; rtx=wtx e overrun!!!
    s->tx[s->wtx]=ch;

    s->wtx++;
    s->wtx%=s->ltx;

    pthread_mutex_unlock(&s->mtx);

    return (int)((unsigned int)ch&0xff);
}

//SPI gets the byte to xmit (SPI read)
int intSpi_getByte(spi_st *s)
{
    char ch;
    int retval=-1;

    if (pthread_mutex_trylock(&s->mtx)) {
        //perror("");
        return -1;
    }

    //pthread_mutex_lock(&s->mtx);

    if (s->rtx!=s->wtx)
    {
        ch=s->rx[s->rtx];
        s->rtx++;
        s->rtx%=s->ltx;
        retval=(int)((unsigned int)ch&0xff);
    }

    pthread_mutex_unlock(&s->mtx);
    return retval;
}

//SPI puts the received byte
int intSpi_putByte(char ch,spi_st *s)
{
    pthread_mutex_lock(&s->mrx);

    //(*SW) Verifiche e se errore: return -1; rtx=wtx e overrun!!!
    s->rx[s->wrx]=ch;

    s->wrx++;
    s->wrx%=s->lrx;

    pthread_mutex_unlock(&s->mrx);

    return (int)((unsigned int)ch&0xff);
}

//spi_transferSlv Thread
void * spi_transferSlv(spi_st *s)
{
    //To avoid stack use! :)
    static u_int8_t p,p1,vp,fcnt=0;
    static char rch=0xAA;
    // static int tch=0xFF;

    p1=(s->posEdge)?S_SCK:0;

    while(!s->exit) {
        //CS, Clock and Data are read!
        vp=inb(s->portin);
        if (s->waitCs) {
            if (vp&S_CS) {
                //Reset acquisition
                fcnt=0;p1=(s->posEdge)?S_SCK:0;
            }
            //Waits the CS goes LOW!
            while(vp&S_CS && !s->exit) {
                //CS, Clock and data are read!
                vp=inb(s->portin);
                sched_yield();
            }
        }

        p=(vp&S_SCK); //Clock pulse value

        if (p1!=p) {
            // (*SW) (Is this to be deleted?) stores clock data
            if (s->tstore!=NULL) {
                s->tstore[s->ctstore]=getusec();
                s->ctstore=(s->ctstore+1)%s->ltstore;
            }

            p1=p; //Attention: p and vp are used below!!! (*1)

            if ( (!p) == (!s->posEdge) ) {
                rch <<= 1;
                rch |= ((vp & DI) ? 1 : 0);
            } else {
                if (s->outenable) {               
                    vp=inb(s->portout); // (*1)
                    p=(rch&0x80);
                    //the bit is set when the bit to send
                    //differs from that on the port, .
                    if (!(vp&DO) != !p) {
                        vp = SETBITS(vp, ((p)?DO:0), DO);
                        outb(vp, s->portout);
                    }
                }
            }

            if (++fcnt==16) {//OVF intr :)
                fcnt=0;

                //save byte
                intSpi_putByte(rch,s);

                //acquire new byte to xmit
                rch=intSpi_getByte(s);
                //intSpi_getByte return -1 if
                //nothing into the buffer
            }
        }

        if (s->udelay)
            usleep(s->udelay);
    }

    //printf("%d ==>\n",(int)((unsigned int)ch2&0xFFU));
    pthread_exit(&s->me);
}

int spi_transferMstr(char ch, char outst, spi_st *s)
{
    uint8_t i;

    int ret=0;

    for (i = 0; i < 8; i++) {
        //Put data
        outst = SETBITS(outst, (ch&0x80)?DO:0, DO);
        outb(outst, s->portout);
        outst |= SCK;	//Open data transmission
        outb(outst, s->portout);
        usleep(s->udelay);

        //Recv
        ch <<= 1;
        ch |= (inb(s->portin) & DI) ? 1 : 0;

        outst &= ~(SCK); //Close data transmission
        outb(outst, s->portout);
        usleep(s->udelay);
    }

    return (!ret) ? ( (int)((unsigned int)(ch) & 0xFFU) ) : (int)ret;
}

//IF start is true returns 0 if ok else an error code
//IF start is false returns the thread retval
int slaveThread(spi_st *s,bool start)
{
    int ret=0;

    s->exit=!start;

    if (start) {
        /*debug purpose*/
        s->tstore=malloc(1024*sizeof(uint32_t));
        s->ltstore=1024;
        s->ctstore=0;

        /* Prepares resources */
        s->rx=malloc(128);
        s->lrx=128;
        s->rrx=0;
        s->wrx=0;
        if (pthread_mutex_init(&s->mrx,NULL)) {
            perror("");
            return 1;
        }

        s->tx=malloc(128);
        s->ltx=128;
        s->rtx=0;
        s->wtx=0;
        if (pthread_mutex_init(&s->mtx,NULL)) {
            perror("");
            return 2;
        }

        pthread_attr_init(&s->attr);
        if (pthread_create(
                (pthread_t*)&s->me,
                (pthread_attr_t*)&s->attr,
                (THFN_t *)spi_transferSlv,
                (void *)s))
            return 3;
    } else {
        void * r;
        pthread_join(s->me,&r);

        pthread_mutex_destroy(&s->mrx);
        pthread_mutex_destroy(&s->mtx);

        if (s->rx!=NULL)
            free(s->rx);

        if (s->tx!=NULL)
            free(s->tx);

        ret=*(int *)r;
    }

    return ret;
}
