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

#ifndef INTERRUPT_H
#define INTERRUPT_H

#ifdef __AVR_ATtiny84__
#define __AVR_Selected
#define ___tiny84
#endif
#ifdef __AVR_ATtiny85__
#define __AVR_Selected
#define ___tiny85
#endif

#ifndef __AVR_Selected
#pragma message "Compiling - Unrecognized CPU (Using Tiny84)"
#define ___tiny84
#endif

#ifdef __AVR_Selected
#undef __AVR_Selected
#endif

/* Defines for interrupts */
#if (__GNUC__ == 4 && __GNUC_MINOR__ >= 1) || (__GNUC__ > 4)
#  define __INTR_ATTRS used, externally_visible
#else /* GCC < 4.1 */
#  define __INTR_ATTRS used
#endif

#ifndef _VECTOR
#define _VECTOR(N) __vector_ ## N
#endif

#ifdef __cplusplus
#  define ISR(vector, ...)            \
    extern "C" void vector (void) __attribute__ ((signal,__INTR_ATTRS)) __VA_ARGS__; \
    void vector (void)
#else
#  define ISR(vector, ...)            \
    void vector (void) __attribute__ ((signal,__INTR_ATTRS)) __VA_ARGS__; \
    void vector (void)
#endif

#ifdef __cplusplus
#  define NAKED_ISR(vector)                \
    extern "C" void vector(void) __attribute__ ((signal,naked,__INTR_ATTRS));    \
    void vector (void)
#else
#  define NAKED_ISR(vector)                \
    void vector (void) __attribute__ ((signal,naked,__INTR_ATTRS));    \
    void vector (void)
#endif

#ifdef __cplusplus
#  define EMPTY_INTERRUPT(vector)                \
    extern "C" void vector(void) __attribute__ ((signal,naked,__INTR_ATTRS));    \
    void vector (void) {  __asm__ __volatile__ ("reti" ::); }
#else
#  define EMPTY_INTERRUPT(vector)                \
    void vector (void) __attribute__ ((signal,naked,__INTR_ATTRS));    \
    void vector (void) { __asm__ __volatile__ ("reti" ::); }
#endif

#ifdef ___tiny85
#define	TIM1_OVF_VECT	_VECTOR(4)
#define	TIM0_OVF_VECT	_VECTOR(5)
#define USI_OVF_VECT	_VECTOR(14)
#endif

#ifdef ___tiny84
#define	TIM0_OVF_VECT	_VECTOR(11)
#define	TIM1_OVF_VECT	_VECTOR(8)
#define USI_OVF_VECT	_VECTOR(16)
#endif

#ifdef ___tiny84
#undef ___tiny84
#endif
#ifdef ___tiny85
#undef ___tiny85
#endif

#endif /* INTERRUPT_H */
