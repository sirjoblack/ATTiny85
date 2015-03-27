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

#ifndef FNASM_H_
#define FNASM_H_

#define cli()	__asm__ __volatile__ ("cli" ::: "memory")
#define sei()	__asm__ __volatile__ ("sei" ::: "memory")
#define nop()	__asm__ __volatile__ ("nop" ::)
#define reti()  __asm__ __volatile__ ("reti" ::)

#define sts(mem,in) \
    __asm__ __volatile__ ("sts %0,%1"  : : "i" (&mem), "r" (in) :  "memory" );

#define lds(out,mem) \
    __asm__ __volatile__ ("lds %0,%1"  : "=d" (out) : "i" (&mem));

#define NOPLOOPDELAY(n) {for(register unsigned int i___=0;i___<(n);i___++) __asm__ __volatile__ ("nop");}

#endif /* FNASM_H_ */
