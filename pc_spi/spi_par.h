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

#ifndef SPI_PAR_H_
#define SPI_PAR_H_

#include <unistd.h>
#include <pthread.h>
#include <sys/types.h>
#include <stdint.h>
#include "bits.h"
#include "cbool.h"

#define DO      BV_(0)
#define SCK     BV_(1)
#define CS      BV_(2)

#define DI      BV_(6)
#define S_CS    BV_(4)
#define S_SCK   BV_(5)

typedef struct spi_s {   
    pthread_attr_t attr;
    pthread_t me;
    volatile bool exit;
    /*---------------------------------*/
    bool master;
    bool outenable;
    int portout;
    int portin;
    int portctrl;

    uint32_t udelay;    //in slave delay between clock reading
    bool posEdge;
    bool waitCs;

    //SPI trasmetterà da tx
    char *tx;
    size_t ltx;
    volatile int rtx;   //SPI read pointer
    volatile int wtx;   //User write pointer
    pthread_mutex_t mtx;  //flag buffer in use!

    //SPI riceverà dentro rx
    char *rx;
    size_t lrx;
    volatile int rrx;   //User read pointer
    volatile int wrx;   //SPI write pointer
    pthread_mutex_t mrx; //flag buffer in use!

    uint32_t *tstore;
    uint16_t ltstore;
    uint16_t ctstore;

} spi_st;

#ifdef __cplusplus
extern "C" {
#endif /*__cplusplus*/

int spi_transferMstr(char ch, char outst, spi_st *s);
int slaveThread(spi_st *s,bool start);
int spi_getByte(spi_st *s);
int spi_putByte(char ch,spi_st *s);
ssize_t spi_putData(char *d,size_t l,spi_st *s);
#ifdef __cplusplus
} /* extern "C" */

#endif /*__cplusplus*/

#endif /* SPI_PAR_H_ */
