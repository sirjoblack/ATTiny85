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
#ifndef REGMACROS_H
#define REGMACROS_H

//#define REGDECL_PTR(r) (volatile uint8_t * volatile)((r)+(((r)<0x60)?0x20:0))
#define REGDECL_WPTR(r) (volatile uint16_t * volatile)((r)+((((int)r)<0x60)?0x20:0))
#define REGDECL_BPTR(r) (volatile uint8_t * volatile)((r)+((((int)r)<0x60)?0x20:0))
#define REGDECLB(r)(*REGDECL_BPTR(r))
#define REGDECLW(r)(*REGDECL_WPTR(r))
#define REGDECL(r) REGDECLB(r)

#endif // REGMACROS_H
