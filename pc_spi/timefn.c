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
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#include <sys/time.h>
#include "timefn.h"

uint32_t getusec()
{
    struct timeval t;
    gettimeofday(&t,NULL);

    return (t.tv_sec*1000000UL+t.tv_usec);
}

