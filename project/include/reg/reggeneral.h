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
#ifndef REGGENERAL_H
#define REGGENERAL_H

#include "regmacros.h"

#define SREG	REGDECL(0x3F)
#define SREG_C  BV_(0)		// Bit 0 – C: Carry Flag
#define SREG_Z  BV_(1)		// Bit 1 – Z: Zero Flag
#define SREG_N  BV_(2)		// Bit 2 – N: Negative Flag
#define SREG_V  BV_(3)		// Bit 3 – V: Two’s Complement Overflow Flag
#define SREG_S  BV_(4)		// Bit 4 – S: Sign Bit, S = N xor V
#define SREG_H  BV_(5)		// Bit 5 – H: Half Carry Flag
#define SREG_T  BV_(6)		// Bit 6 – T: Bit Copy Storage
#define SREG_I  BV_(7)		// Bit 7 – I: Global Interrupt Enable

#endif // REGGENERAL_H
