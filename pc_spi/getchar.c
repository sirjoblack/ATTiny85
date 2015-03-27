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

#include <unistd.h>
#include <fcntl.h>
#include <termios.h>
#include <stdio.h>
#include <string.h>

#include "getchar.h"

void echo(int on)
{
    struct termios old;

    tcgetattr(STDIN_FILENO, &old);
    if (!on) {
        old.c_lflag &= ~ICANON;
        old.c_lflag &= ~ECHO;
    } else {
        old.c_lflag |= ICANON;
        old.c_lflag |= ECHO;
    }

    tcsetattr(STDIN_FILENO, TCSANOW, &old);

    tcgetattr(STDOUT_FILENO, &old);
    if (!on) {
        old.c_lflag &= ~ICANON;
        old.c_lflag &= ~ECHO;
    } else {
        old.c_lflag |= ICANON;
        old.c_lflag |= ECHO;
    }

    tcsetattr(STDOUT_FILENO, TCSANOW, &old);
}

int getAChar()
{
    int x=0;
    int r=0;
    int i=fcntl(0, F_GETFL, 0);
    fcntl(0, F_SETFL, FNDELAY);
    r=read(0,&x,1);
    fcntl(0, F_SETFL, i);
    return (r==-1)?r:x;
}

void displayBuffer(char *what, char *buf,int lm)
{
    int i,j;
    unsigned char c;

    if (!lm)
        lm=strlen(buf);

    if (what!=NULL)
        printf("%s:\n",what);

    i=0;
    while( lm>0 ) {
        for(j=0;j<((lm>16)?16:lm);j++) {
            if (j==0)
                printf("%04X: ",i);
            if (j==8)
                printf("| ");
            c=(unsigned char)buf[i+j];
            printf("%02X ",c);
        }
        while( (j%16) ) {
            if (j==8)
                printf("| ");
            printf("-- ");
            j++;
        }
        printf(" ");
        for(j=0;j<((lm>16)?16:lm);j++) {
            if (j==8)
                printf(" | ");
            c=(unsigned char)buf[i+j];
            c=(c<32 || c>126)?'.':c;
            //printf((j!=15)?"%c":"%c",c);
            printf("%c",c);
        }
        puts("");

        i+=j;
        lm-=j;
    }
}
