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

#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <time.h>
#include <sys/timeb.h>
#include <sys/time.h>
#include <errno.h>

#include <sys/io.h>
#include <sys/types.h>

#include "bits.h"
#include "getchar.h"
#include "spi_par.h"
#include "cbool.h"
#include "timefn.h"

#define PORT 0x378

static int portout  =   PORT;
static int portin   =   PORT+1;
static int portctrl =   PORT+2;

static volatile uint8_t outst=0;
static bool enhanced=false;
static bool enhF=false;
static bool bus=false;
static bool cs=false;

static uint8_t rxb[128];
static char txb[128];

void keyboardCommand(int *ex, spi_st *s);
bool busState(bool set, bool value, spi_st *s);
bool csState(bool set, bool value, spi_st *s);
void masterManager();
void slaveManager();
void directSet(int argc, char **argv);
void printBuffer(uint8_t *rxb, size_t i);
void tryParallelPort(uint32_t loop);
void sendMasterLine(char * cmd);

int main(int argc,char **argv)
{
    if (ioperm(0x278,0x187,1)) {
        puts(strerror(errno));
        return errno;
    }

    if (argc==1 || *argv[1]=='M') {
        //master=true; //default
        masterManager();
        return 0;
    }

    if (*argv[1]=='m') {
        sendMasterLine(argv[2]);
        return 0;
    }

    if (*argv[1]=='S') {
        slaveManager();
    } else if (*argv[1]=='t') {
        uint32_t loop=10000;
        if (argc>2)
            loop=strtol(argv[2],NULL,0);
        tryParallelPort(loop);
    } else {
        directSet(argc,argv);
    }

    return 0;
}

void sendMasterLine(char * cmd)
{
    spi_st s;
    size_t i;
    s.master=true;
    s.portin=portin;
    s.portout=portout;
    s.portctrl=portctrl;

    s.outenable=true;
    s.udelay=6;
    s.posEdge=true;

    outst=inb(portout);
    outst &= ~SCK;
    outb(outst,portout);

    busState(true,true,&s); //
    csState(true,true,&s); //set CS Low *true"

    for(i=0;i<strlen(cmd);i++) {
        spi_transferMstr(cmd[i],outst,&s);
        cmd[i]=(char)0xFF;
        usleep(20); //Delay between chars
    }

    usleep(100000);

    for(i=0;i<32;i++) {
        cmd[i]=spi_transferMstr(0xFF,outst,&s);
        usleep(20); //Delay between chars
    }

    printBuffer((uint8_t *)cmd,i);

    busState(true,true,&s); //
    csState(true,false,&s); //set CS HIGH (false)
    outb(outst,portout);
}

void tryParallelPort(uint32_t loop)
{
    uint32_t t0=getusec(),tt;
    uint32_t l=loop;
    for(;l!=0;l--) {
        inb(portin);
    }

    tt=getusec()-t0;
    printf("Input time Total:%u usec %c Single:%lf usec\n",tt,'-',(double)tt/(double)loop);

    char x=inb(portout);
    t0=getusec();
    l=loop;
    for(;l!=0;l--) {
        outb(l&0xF,portout);
    }

    tt=getusec()-t0;
    outb(x,portout);
    printf("Output time Total:%u usec %c Single:%lf usec\n",tt,'-',(double)tt/(double)loop);

 /*   {
        char i=0;
        l=loop;
        FILE *f=fopen("/dev/memory","a+");
        if (f!=NULL) {
            t0=getusec();

            for(;l!=0;l--)
                fwrite(&i,1,1,f);

            tt=getusec()-t0;;
            printf("Output time Total:%u usec %c Single:%lf usec\n",tt,'-',(double)tt/(double)loop);
        } else {
            perror("");
        }

    }*/
    return;
}

void slaveManager()
{
    size_t i=0;
    int j,cnt=0;
    uint32_t t0;
    int ex=0;
    spi_st s;

    s.master=false;
    s.portin=portin;
    s.portout=portout;
    s.portctrl=portctrl;
    s.outenable=true;
    s.udelay=0;
    s.posEdge=true;
    s.waitCs=true;

    if (slaveThread(&s,true))
        exit(0);

    echo(0);

    do {
        i=0;t0=getusec();
        while( !ex && i<sizeof(rxb)) {
            if ( (j=spi_getByte(&s))>=0 ) {
                t0=0;
                rxb[i]=j;i++;
            } else {
                if (t0) {
                    if (getusec()-t0>300000)
                        break;
                } else {
                    t0=getusec();
                }
               // sched_yield();
                usleep(20);
            }
            keyboardCommand(&ex,&s);
        }

        if (i>2)
            cnt=0;

        if (cnt)
            cnt--;

        if (!cnt && i)
            printBuffer(rxb,i);

        if (i<=2) {
            usleep(20000);
            if (!cnt)
                cnt=100;
        }

        keyboardCommand(&ex,&s);

        if (strlen(txb)!=0) {
            spi_putData(txb,strlen(txb),&s);
            txb[0]=0;
        }
    } while(!ex);

    slaveThread(&s,false);
    busState(true,false,&s);

    echo(1);
#undef BYTE
}

void masterManager()
{
    echo(0);

    spi_st s;
    int ex=0;

    s.master=true;

    s.portin=portin;
    s.portout=portout;
    s.portctrl=portctrl;

    s.outenable=true;
    s.udelay=0;
    s.posEdge=true;
    s.tstore=NULL;

    busState(false,false,&s); //get bus state

    outst=inb(portout);
    outst &= ~SCK;
    outb(outst,portout);

    csState(false,false,&s); //get CS
    //csState(true,false); //Deselect CS

    puts("Hit \"s\" to insert the string to send");
    txb[0]=0;

    while(!ex) {
        int i,j;
        keyboardCommand(&ex,&s);
        fflush(stdout);
        if (strlen(txb)) {
            for(i=0;i<(int)strlen(txb) && i<(int)sizeof(txb);i++) {
                rxb[i]=spi_transferMstr(txb[i],outst,&s);
                usleep(20); //Delay between chars

            }

            usleep(2000);

            for(j=0;j<32  && j+i<(int)sizeof(txb);j++) {
                rxb[i+j]=spi_transferMstr(0xFF,outst,&s);
                usleep(20); //Delay between chars
            }

            printBuffer(rxb,i+j);
            txb[0]=0;
        }
    }

    csState(true,false,&s);
    busState(true,false,&s);
    echo(1);
}

void directSet(int argc, char **argv)
{
    int port=PORT;
    char *ch=argv[1];
    unsigned char x;
    bool loop = false;

    __useconds_t udelay=0;

    if (argc>2) {
        port=strtol(argv[2],NULL,0);
    } else {
        if ((*ch|0x20)=='i')
            port=PORT+1;
    }
    if (*ch=='s') {
        printf("Set: ");
        x=inb(port) |  strtol(++ch,NULL,0);
    } else if (*ch=='t') {
        printf("Toggle: ");
        x=inb(port) ^  strtol(++ch,NULL,0);
    } else if (*ch=='r') {
        printf("Reset: ");
        x=inb(port) & ~strtol(++ch,NULL,0);
    } else {
        x=strtol(ch,NULL,0);
    }

    if (*ch=='i') {
        printf("Reading: ");
    } else if (*ch=='I') {
        printf("Reading: ");
        loop=true;
        udelay=(__useconds_t)strtol(++ch,NULL,0);
        if (!udelay)
            udelay=1000000;
    } else {
        outb(x,port);
    }

    if (loop)
        echo(0);

    do {
        x=inb(port);
        printf("%03X => %02X\n",port,x);
        if (udelay>0)
            usleep(udelay);
    } while(loop && getAChar()<0);

    if (loop)
        echo(1);

}

void printBuffer(uint8_t *buff,size_t i)
{
    int j,k=i;

    printf("%10u\n",getusec());
    if (enhanced) {
        k=0;
        for(j=0;j<(int)i;j++) {
            if (enhanced) {
                if (!enhF && buff[j]==0x1B) {
                    enhF=true;
                    continue;
                }
            }
            enhF=false;
            buff[k++]=buff[j];
            //printf("%02X ",buff[j]);
        }
        buff[k]=0;
    }

    displayBuffer(NULL,(char *)buff,k);

    fflush(stdin);
}

void keyboardCommand(int *ex,spi_st *s)
{
    int i;
    uint32_t udelay=s->udelay;

    if ( (i=getAChar())>=0 ) {
        switch(i) {
        case 't':
        {
            uint16_t j,t,f;
            if (s->tstore==NULL)
                return;
            t=s->ctstore;
            f=(t-60+s->ltstore)%s->ltstore;
            for(j=f;j<t;j++)
                printf("%u\n",s->tstore[j]);
        }
            break;

        case 's':
            echo(1);
            printf("Insert data to XMIT: ");
            fflush(stdin);
            scanf("%s",txb);
            echo(0);
            if (!s->master) {
                puts("cazzo");
                spi_putData(txb,strlen(txb),s);
            }
            break;
        case 'c':
            csState(true,!cs,s);
            usleep(1000000);
            break;
        case 'e':
            enhanced=!enhanced;
            printf("Enhanced: %s\n",(enhanced)?"on":"off");
            break;
        case 'q':
            *ex=1;
            break;

        case 'o': // bus driver OE (LOW) (abilitato notOE)
            busState(true,!bus,s);
            break;

        case '+':
            udelay++;
            break;
        case '-':
            udelay--;
            break;
        case '*':
            udelay*=2;
            break;
        case '/':
            udelay/=2;
            break;
        default:
            printf("Received Key %08X%s%c\n",i,
                   (i>31 && i<128)?" - ":"",
                   (i>31 && i<128)?i:'\x0');
            break;
        }
    }

    if (udelay!=s->udelay) {
        printf("Delay %d usec\n",udelay);
        s->udelay=udelay;
    }
}

bool busState(bool set,bool value, spi_st *s)
{
    char x;
    //Get!
    x=inb(portctrl);

    //UNUSED(s);

    //Set!
    if (set) {
        if (value)
            x |= 1;   //Inverted pin 1 (ACK)
        else
            x &= ~1;
        outb(x,portctrl);
    }
    bus=(x&1)?true:false;
    printf("Bus: %s (pin-led %s) [HIT \"o\" to toggle]\n",
           (bus)?"enabled":"disabled",
           (bus)?"off":"on");

    return bus;
}

bool csState(bool set, bool value, spi_st *s)
{
    char x;
    //Get!

    if (s->master) {
        x=outst;

        //Set!
        if (set) {
            if (value)
                x &= ~CS; //CS is valid if low!
            else
                x |= CS;

            outb(x,portout);
            outst=x;
        }

        cs=(x&CS)?false:true;
        printf("CS: %s [HIT \"c\" to toggle]\n",
               (cs)?"Selected [Low]":"Not selected [High]");
    } else {
        //Slave CS
        cs=inb(portin)&S_CS;
        printf("CS: %s [Slave]\n",
               (cs)?"Selected [Low]":"Not selected [High]");
    }

    return cs;
}
