	.file	"attimer.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._ZN7ATTimerC2Ev,"ax",@progbits
.global	_ZN7ATTimerC2Ev
	.type	_ZN7ATTimerC2Ev, @function
_ZN7ATTimerC2Ev:
.LFB3:
	.file 1 "../attimer.cpp"
	.loc 1 35 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
.LBB2:
	.loc 1 37 0
	lds r24,_ZN7ATTimer8instanceE
.LVL1:
	subi r24,lo8(-(1))
	sts _ZN7ATTimer8instanceE,r24
	.loc 1 38 0
	std Z+8,r24
	.loc 1 40 0
	st Z,__zero_reg__
	std Z+1,__zero_reg__
	std Z+2,__zero_reg__
	std Z+3,__zero_reg__
	std Z+4,__zero_reg__
	std Z+5,__zero_reg__
	std Z+6,__zero_reg__
	std Z+7,__zero_reg__
	ret
.LBE2:
	.cfi_endproc
.LFE3:
	.size	_ZN7ATTimerC2Ev, .-_ZN7ATTimerC2Ev
.global	_ZN7ATTimerC1Ev
	.set	_ZN7ATTimerC1Ev,_ZN7ATTimerC2Ev
	.section	.text._ZN7ATTimerD2Ev,"ax",@progbits
.global	_ZN7ATTimerD2Ev
	.type	_ZN7ATTimerD2Ev, @function
_ZN7ATTimerD2Ev:
.LFB6:
	.loc 1 43 0
	.cfi_startproc
.LVL2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE6:
	.size	_ZN7ATTimerD2Ev, .-_ZN7ATTimerD2Ev
.global	_ZN7ATTimerD1Ev
	.set	_ZN7ATTimerD1Ev,_ZN7ATTimerD2Ev
	.section	.text._ZN7ATTimer6udelayEm,"ax",@progbits
.global	_ZN7ATTimer6udelayEm
	.type	_ZN7ATTimer6udelayEm, @function
_ZN7ATTimer6udelayEm:
.LFB10:
	.loc 1 100 0
	.cfi_startproc
.LVL3:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB3:
	.loc 1 103 0
	movw r18,r22
	andi r18,7
	clr r19
.LVL4:
	.loc 1 106 0
	movw r20,r22
	movw r22,r24
	ldi r24,3
	1:
	lsr r23
	ror r22
	ror r21
	ror r20
	dec r24
	brne 1b
.LVL5:
.L5:
	.loc 1 109 0 discriminator 1
	cpi r20,-15
	cpc r21,__zero_reg__
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	brlo .L15
	.loc 1 110 0
	in r25,0x2f
.LVL6:
.L7:
	.loc 1 111 0 discriminator 1
	in r24,0x2f
	sub r24,r25
	cpi r24,lo8(-16)
	brlo .L7
	.loc 1 112 0
	in r24,0x2f
	sub r24,r25
	sub r20,r24
	sbc r21,__zero_reg__
	sbc r22,__zero_reg__
	sbc r23,__zero_reg__
.LVL7:
	rjmp .L5
.LVL8:
.L15:
	.loc 1 115 0
	tst r20
	breq .L9
	.loc 1 116 0
	in r25,0x2f
.LVL9:
.L10:
	.loc 1 117 0 discriminator 1
	in r24,0x2f
	sub r24,r25
	cp r24,r20
	brlo .L10
.LVL10:
.L9:
.LBE3:
	.loc 1 122 0
	movw r24,r18
	ret
	.cfi_endproc
.LFE10:
	.size	_ZN7ATTimer6udelayEm, .-_ZN7ATTimer6udelayEm
	.section	.text._ZN7ATTimer8baseTimeEv,"ax",@progbits
.global	_ZN7ATTimer8baseTimeEv
	.type	_ZN7ATTimer8baseTimeEv, @function
_ZN7ATTimer8baseTimeEv:
.LFB11:
	.loc 1 125 0
	.cfi_startproc
.LVL11:
	push r10
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 10, -2
	push r11
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -3
	push r12
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 12, -4
	push r13
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 13, -5
	push r14
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 14, -6
	push r15
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 15, -7
	push r16
.LCFI6:
	.cfi_def_cfa_offset 9
	.cfi_offset 16, -8
	push r17
.LCFI7:
	.cfi_def_cfa_offset 10
	.cfi_offset 17, -9
	push r28
.LCFI8:
	.cfi_def_cfa_offset 11
	.cfi_offset 28, -10
	push r29
.LCFI9:
	.cfi_def_cfa_offset 12
	.cfi_offset 29, -11
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
.LBB4:
	.loc 1 126 0
	in r24,0x2f
.LVL12:
	.loc 1 127 0
	lds r30,_ZN7ATTimer5btIdxE
	ldi r31,0
	ldi r25,3
	1:
	lsl r30
	rol r31
	dec r25
	brne 1b
	subi r30,lo8(-(_ZN7ATTimer10m_baseTimeE))
	sbci r31,hi8(-(_ZN7ATTimer10m_baseTimeE))
	ld r10,Z
	ldd r11,Z+1
	ldd r12,Z+2
	ldd r13,Z+3
	ldd r14,Z+4
	ldd r15,Z+5
	ldd r16,Z+6
	ldd r17,Z+7
.LVL13:
	.loc 1 126 0
	ldi r25,0
	ldi r26,0
	ldi r27,0
	ldi r18,3
	1:
	lsl r24
	rol r25
	rol r26
	rol r27
	dec r18
	brne 1b
.LVL14:
	.loc 1 128 0
	movw r18,r24
	movw r20,r26
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	rcall __adddi3
/* epilogue start */
.LBE4:
	.loc 1 130 0
	pop r29
	pop r28
	pop r17
.LVL15:
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	ret
	.cfi_endproc
.LFE11:
	.size	_ZN7ATTimer8baseTimeEv, .-_ZN7ATTimer8baseTimeEv
	.section	.text._ZN7ATTimer5resetEv,"ax",@progbits
.global	_ZN7ATTimer5resetEv
	.type	_ZN7ATTimer5resetEv, @function
_ZN7ATTimer5resetEv:
.LFB9:
	.loc 1 77 0
	.cfi_startproc
.LVL16:
	push r28
.LCFI10:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI11:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
.LBB5:
	.loc 1 78 0
	ldd r24,Y+8
.LVL17:
	cpi r24,lo8(1)
	breq .L18
	.loc 1 79 0
	movw r24,r28
	rcall _ZN7ATTimer8baseTimeEv
.LVL18:
	st Y,r18
	std Y+1,r19
	std Y+2,r20
	std Y+3,r21
	std Y+4,r22
	std Y+5,r23
	std Y+6,r24
	std Y+7,r25
	.loc 1 80 0
	rjmp .L17
.L18:
	.loc 1 83 0
	st Y,__zero_reg__
	std Y+1,__zero_reg__
	std Y+2,__zero_reg__
	std Y+3,__zero_reg__
	std Y+4,__zero_reg__
	std Y+5,__zero_reg__
	std Y+6,__zero_reg__
	std Y+7,__zero_reg__
	.loc 1 85 0
	in r25,__SREG__
.LVL19:
	.loc 1 86 0
/* #APP */
 ;  86 "../attimer.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 88 0
/* #NOAPP */
	sts _ZN7ATTimer10m_baseTimeE,__zero_reg__
	sts _ZN7ATTimer10m_baseTimeE+1,__zero_reg__
	sts _ZN7ATTimer10m_baseTimeE+2,__zero_reg__
	sts _ZN7ATTimer10m_baseTimeE+3,__zero_reg__
	sts _ZN7ATTimer10m_baseTimeE+4,__zero_reg__
	sts _ZN7ATTimer10m_baseTimeE+5,__zero_reg__
	sts _ZN7ATTimer10m_baseTimeE+6,__zero_reg__
	sts _ZN7ATTimer10m_baseTimeE+7,__zero_reg__
	.loc 1 89 0
	sts _ZN7ATTimer10m_baseTimeE+8,__zero_reg__
	sts _ZN7ATTimer10m_baseTimeE+9,__zero_reg__
	sts _ZN7ATTimer10m_baseTimeE+10,__zero_reg__
	sts _ZN7ATTimer10m_baseTimeE+11,__zero_reg__
	sts _ZN7ATTimer10m_baseTimeE+12,__zero_reg__
	sts _ZN7ATTimer10m_baseTimeE+13,__zero_reg__
	sts _ZN7ATTimer10m_baseTimeE+14,__zero_reg__
	sts _ZN7ATTimer10m_baseTimeE+15,__zero_reg__
	.loc 1 91 0
	out 0x2f,__zero_reg__
	.loc 1 93 0
	in __tmp_reg__,0x38
	sbrs __tmp_reg__,2
	rjmp .L20
	.loc 1 94 0
	in r24,0x38
	andi r24,lo8(4)
	out 0x38,r24
.L20:
	.loc 1 96 0
	out __SREG__,r25
.LVL20:
.L17:
/* epilogue start */
.LBE5:
	.loc 1 97 0
	pop r29
	pop r28
.LVL21:
	ret
	.cfi_endproc
.LFE9:
	.size	_ZN7ATTimer5resetEv, .-_ZN7ATTimer5resetEv
	.section	.text._ZN7ATTimer5beginEv,"ax",@progbits
.global	_ZN7ATTimer5beginEv
	.type	_ZN7ATTimer5beginEv, @function
_ZN7ATTimer5beginEv:
.LFB8:
	.loc 1 48 0
	.cfi_startproc
.LVL22:
	push r17
.LCFI12:
	.cfi_def_cfa_offset 3
	.cfi_offset 17, -2
	push r28
.LCFI13:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI14:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	movw r28,r24
.LBB6:
	.loc 1 49 0
	ldd r24,Y+8
.LVL23:
	cpi r24,lo8(1)
	breq .L25
	.loc 1 50 0
	movw r24,r28
	rcall _ZN7ATTimer8baseTimeEv
.LVL24:
	st Y,r18
	std Y+1,r19
	std Y+2,r20
	std Y+3,r21
	std Y+4,r22
	std Y+5,r23
	std Y+6,r24
	std Y+7,r25
	.loc 1 51 0
	rjmp .L24
.L25:
	.loc 1 56 0
/* #APP */
 ;  56 "../attimer.cpp" 1
	sei
 ;  0 "" 2
	.loc 1 58 0
/* #NOAPP */
	in r17,__SREG__
.LVL25:
	.loc 1 59 0
/* #APP */
 ;  59 "../attimer.cpp" 1
	cli
 ;  0 "" 2
	.loc 1 62 0
/* #NOAPP */
	in r24,0x39
	andi r24,lo8(-5)
	out 0x39,r24
	.loc 1 64 0
	ldi r24,lo8(8)
	out 0x30,r24
	.loc 1 65 0
/* #APP */
 ;  65 "../attimer.cpp" 1
	nop
 ;  0 "" 2
	.loc 1 67 0
/* #NOAPP */
	in r24,0x39
	ori r24,lo8(4)
	out 0x39,r24
	.loc 1 68 0
/* #APP */
 ;  68 "../attimer.cpp" 1
	nop
 ;  0 "" 2
	.loc 1 70 0
/* #NOAPP */
	movw r24,r28
	rcall _ZN7ATTimer5resetEv
.LVL26:
	.loc 1 72 0
	out __SREG__,r17
.LVL27:
.L24:
/* epilogue start */
.LBE6:
	.loc 1 74 0
	pop r29
	pop r28
.LVL28:
	pop r17
	ret
	.cfi_endproc
.LFE8:
	.size	_ZN7ATTimer5beginEv, .-_ZN7ATTimer5beginEv
	.section	.text._ZN7ATTimer5uTickEv,"ax",@progbits
.global	_ZN7ATTimer5uTickEv
	.type	_ZN7ATTimer5uTickEv, @function
_ZN7ATTimer5uTickEv:
.LFB12:
	.loc 1 132 0
	.cfi_startproc
.LVL29:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 132 0
	ldi r22,lo8(8)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	ret
	.cfi_endproc
.LFE12:
	.size	_ZN7ATTimer5uTickEv, .-_ZN7ATTimer5uTickEv
	.section	.text.__vector_4,"ax",@progbits
.global	__vector_4
	.type	__vector_4, @function
__vector_4:
.LFB14:
	.loc 1 144 0
	.cfi_startproc
	push r1
.LCFI15:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI16:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI17:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r19
.LCFI18:
	.cfi_def_cfa_offset 6
	.cfi_offset 19, -5
	push r20
.LCFI19:
	.cfi_def_cfa_offset 7
	.cfi_offset 20, -6
	push r21
.LCFI20:
	.cfi_def_cfa_offset 8
	.cfi_offset 21, -7
	push r22
.LCFI21:
	.cfi_def_cfa_offset 9
	.cfi_offset 22, -8
	push r23
.LCFI22:
	.cfi_def_cfa_offset 10
	.cfi_offset 23, -9
	push r24
.LCFI23:
	.cfi_def_cfa_offset 11
	.cfi_offset 24, -10
	push r25
.LCFI24:
	.cfi_def_cfa_offset 12
	.cfi_offset 25, -11
	push r26
.LCFI25:
	.cfi_def_cfa_offset 13
	.cfi_offset 26, -12
	push r30
.LCFI26:
	.cfi_def_cfa_offset 14
	.cfi_offset 30, -13
	push r31
.LCFI27:
	.cfi_def_cfa_offset 15
	.cfi_offset 31, -14
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 14 */
.L__stack_usage = 14
.LVL30:
.LBB10:
.LBB11:
	.loc 1 137 0
	lds r30,_ZN7ATTimer5btIdxE
	ldi r31,0
	ldi r19,3
	1:
	lsl r30
	rol r31
	dec r19
	brne 1b
	subi r30,lo8(-(_ZN7ATTimer10m_baseTimeE))
	sbci r31,hi8(-(_ZN7ATTimer10m_baseTimeE))
	ld r18,Z
	ldd r19,Z+1
	ldd r20,Z+2
	ldd r21,Z+3
	ldd r22,Z+4
	ldd r23,Z+5
	ldd r24,Z+6
	ldd r25,Z+7
.LVL31:
	.loc 1 138 0
	subi r19,-8
	sbci r20,-1
	sbci r21,-1
	sbci r22,-1
	sbci r23,-1
	sbci r24,-1
	sbci r25,-1
.LVL32:
	.loc 1 139 0
	lds r30,_ZN7ATTimer5btIdxE
	ldi r26,lo8(1)
	eor r30,r26
	ldi r31,0
	lsl r30
	rol r31
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(_ZN7ATTimer10m_baseTimeE))
	sbci r31,hi8(-(_ZN7ATTimer10m_baseTimeE))
	st Z,r18
	std Z+1,r19
	std Z+2,r20
	std Z+3,r21
	std Z+4,r22
	std Z+5,r23
	std Z+6,r24
	std Z+7,r25
	.loc 1 140 0
	lds r24,_ZN7ATTimer5btIdxE
.LVL33:
	eor r24,r26
	sts _ZN7ATTimer5btIdxE,r24
/* epilogue start */
.LBE11:
.LBE10:
	.loc 1 146 0
	pop r31
	pop r30
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE14:
	.size	__vector_4, .-__vector_4
.global	_ZN7ATTimer10m_baseTimeE
	.section	.bss._ZN7ATTimer10m_baseTimeE,"aw",@nobits
	.type	_ZN7ATTimer10m_baseTimeE, @object
	.size	_ZN7ATTimer10m_baseTimeE, 16
_ZN7ATTimer10m_baseTimeE:
	.zero	16
.global	_ZN7ATTimer5btIdxE
	.section	.bss._ZN7ATTimer5btIdxE,"aw",@nobits
	.type	_ZN7ATTimer5btIdxE, @object
	.size	_ZN7ATTimer5btIdxE, 1
_ZN7ATTimer5btIdxE:
	.zero	1
.global	_ZN7ATTimer8instanceE
	.section	.bss._ZN7ATTimer8instanceE,"aw",@nobits
	.type	_ZN7ATTimer8instanceE, @object
	.size	_ZN7ATTimer8instanceE, 1
_ZN7ATTimer8instanceE:
	.zero	1
	.text
.Letext0:
	.file 2 "../include/h_types.h"
	.file 3 "../attimer.h"
	.file 4 "../include/reg/regtim85.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x51e
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF620
	.byte	0x4
	.long	.LASF621
	.long	.LASF622
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF576
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF577
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF578
	.uleb128 0x3
	.long	.LASF580
	.byte	0x2
	.byte	0x1d
	.long	0x4d
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF579
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF581
	.byte	0x2
	.byte	0x1f
	.long	0x66
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF582
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF583
	.uleb128 0x3
	.long	.LASF584
	.byte	0x2
	.byte	0x21
	.long	0x34
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF585
	.uleb128 0x3
	.long	.LASF586
	.byte	0x2
	.byte	0x23
	.long	0x2d
	.uleb128 0x5
	.long	.LASF592
	.byte	0x9
	.byte	0x3
	.byte	0x1b
	.long	0x1fc
	.uleb128 0x6
	.long	.LASF587
	.byte	0x3
	.byte	0x75
	.long	0x86
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x6
	.long	.LASF588
	.byte	0x3
	.byte	0x77
	.long	0x42
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x7
	.long	.LASF589
	.byte	0x3
	.byte	0x78
	.long	0x42
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x7
	.long	.LASF590
	.byte	0x3
	.byte	0x79
	.long	0x1fc
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x7
	.long	.LASF591
	.byte	0x3
	.byte	0x7a
	.long	0x21f
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x8
	.byte	0x1
	.long	.LASF592
	.byte	0x3
	.byte	0x1e
	.byte	0x1
	.long	0xf6
	.long	0xfd
	.uleb128 0x9
	.long	0x224
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF593
	.byte	0x3
	.byte	0x1f
	.byte	0x1
	.long	0x10e
	.long	0x11b
	.uleb128 0x9
	.long	0x224
	.byte	0x1
	.uleb128 0x9
	.long	0x54
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.long	.LASF594
	.byte	0x3
	.byte	0x2c
	.long	.LASF596
	.byte	0x1
	.long	0x130
	.long	0x137
	.uleb128 0x9
	.long	0x224
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF598
	.byte	0x3
	.byte	0x34
	.long	.LASF600
	.long	0x54
	.byte	0x1
	.long	0x150
	.long	0x157
	.uleb128 0x9
	.long	0x224
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.long	.LASF595
	.byte	0x3
	.byte	0x48
	.long	.LASF597
	.long	0x5b
	.byte	0x1
	.long	0x172
	.uleb128 0xd
	.long	0x74
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF599
	.byte	0x3
	.byte	0x50
	.long	.LASF601
	.long	0x86
	.byte	0x1
	.long	0x18b
	.long	0x192
	.uleb128 0x9
	.long	0x224
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF602
	.byte	0x3
	.byte	0x59
	.long	.LASF603
	.long	0x86
	.byte	0x1
	.long	0x1ab
	.long	0x1b2
	.uleb128 0x9
	.long	0x224
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF604
	.byte	0x3
	.byte	0x60
	.long	.LASF605
	.long	0x74
	.byte	0x1
	.long	0x1cb
	.long	0x1d2
	.uleb128 0x9
	.long	0x224
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.long	.LASF606
	.byte	0x3
	.byte	0x6b
	.long	.LASF607
	.byte	0x1
	.long	0x1e7
	.long	0x1ee
	.uleb128 0x9
	.long	0x224
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF623
	.byte	0x3
	.byte	0x72
	.long	.LASF624
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	0x201
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF608
	.uleb128 0x10
	.long	0x2d
	.long	0x218
	.uleb128 0x11
	.long	0x218
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF609
	.uleb128 0xf
	.long	0x208
	.uleb128 0x12
	.byte	0x2
	.long	0x91
	.uleb128 0x3
	.long	.LASF610
	.byte	0x4
	.byte	0x89
	.long	0x42
	.uleb128 0x13
	.long	0xe5
	.byte	0x1
	.byte	0x23
	.byte	0
	.long	0x245
	.long	0x250
	.uleb128 0x14
	.long	.LASF611
	.long	0x250
	.byte	0x1
	.byte	0
	.uleb128 0x15
	.long	0x224
	.uleb128 0x16
	.long	0x235
	.long	.LASF613
	.long	.LFB3
	.long	.LFE3
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0x273
	.byte	0x1
	.long	0x27d
	.uleb128 0x17
	.long	0x245
	.long	.LLST0
	.byte	0
	.uleb128 0x13
	.long	0xfd
	.byte	0x1
	.byte	0x2b
	.byte	0
	.long	0x28d
	.long	0x2a2
	.uleb128 0x14
	.long	.LASF611
	.long	0x250
	.byte	0x1
	.uleb128 0x14
	.long	.LASF612
	.long	0x2a2
	.byte	0x1
	.byte	0
	.uleb128 0x15
	.long	0x54
	.uleb128 0x16
	.long	0x27d
	.long	.LASF614
	.long	.LFB6
	.long	.LFE6
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0x2c5
	.byte	0x1
	.long	0x2d2
	.uleb128 0x18
	.long	0x28d
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x19
	.long	0x157
	.byte	0x1
	.byte	0x63
	.long	.LFB10
	.long	.LFE10
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x324
	.uleb128 0x1a
	.long	.LASF625
	.byte	0x1
	.byte	0x63
	.long	0x74
	.long	.LLST1
	.uleb128 0x1b
	.long	.LBB3
	.long	.LBE3
	.uleb128 0x1c
	.string	"t0"
	.byte	0x1
	.byte	0x66
	.long	0x22a
	.long	.LLST2
	.uleb128 0x1d
	.long	.LASF615
	.byte	0x1
	.byte	0x67
	.long	0x5b
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	0x172
	.byte	0x1
	.byte	0x7c
	.long	.LFB11
	.long	.LFE11
	.long	.LLST3
	.long	0x340
	.byte	0x1
	.long	0x380
	.uleb128 0x1f
	.long	.LASF611
	.long	0x250
	.byte	0x1
	.long	.LLST4
	.uleb128 0x1b
	.long	.LBB4
	.long	.LBE4
	.uleb128 0x1c
	.string	"x"
	.byte	0x1
	.byte	0x7e
	.long	0x74
	.long	.LLST5
	.uleb128 0x1c
	.string	"y"
	.byte	0x1
	.byte	0x7f
	.long	0x86
	.long	.LLST6
	.uleb128 0x1c
	.string	"z"
	.byte	0x1
	.byte	0x80
	.long	0x86
	.long	.LLST7
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	0x1d2
	.byte	0x1
	.byte	0x4c
	.long	.LFB9
	.long	.LFE9
	.long	.LLST8
	.long	0x39c
	.byte	0x1
	.long	0x3d8
	.uleb128 0x1f
	.long	.LASF611
	.long	0x250
	.byte	0x1
	.long	.LLST9
	.uleb128 0x1b
	.long	.LBB5
	.long	.LBE5
	.uleb128 0x1c
	.string	"sr"
	.byte	0x1
	.byte	0x55
	.long	0x42
	.long	.LLST10
	.uleb128 0x20
	.long	.LVL18
	.long	0x324
	.uleb128 0x21
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	0x11b
	.byte	0x1
	.byte	0x2f
	.long	.LFB8
	.long	.LFE8
	.long	.LLST11
	.long	0x3f4
	.byte	0x1
	.long	0x449
	.uleb128 0x1f
	.long	.LASF611
	.long	0x250
	.byte	0x1
	.long	.LLST12
	.uleb128 0x1b
	.long	.LBB6
	.long	.LBE6
	.uleb128 0x1c
	.string	"sr"
	.byte	0x1
	.byte	0x36
	.long	0x42
	.long	.LLST13
	.uleb128 0x22
	.long	.LVL24
	.long	0x324
	.long	0x432
	.uleb128 0x21
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.long	.LVL26
	.long	0x380
	.uleb128 0x21
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	0x1b2
	.byte	0x1
	.byte	0x84
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0x465
	.byte	0x1
	.long	0x477
	.uleb128 0x24
	.long	.LASF611
	.long	0x250
	.byte	0x1
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x25
	.long	0x1ee
	.byte	0x1
	.byte	0x86
	.byte	0x3
	.long	0x4a1
	.uleb128 0x26
	.uleb128 0x27
	.string	"x"
	.byte	0x1
	.byte	0x88
	.long	0x74
	.uleb128 0x27
	.string	"y"
	.byte	0x1
	.byte	0x89
	.long	0x86
	.uleb128 0x27
	.string	"z"
	.byte	0x1
	.byte	0x8a
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.long	.LASF616
	.byte	0x1
	.byte	0x8f
	.long	.LFB14
	.long	.LFE14
	.long	.LLST14
	.byte	0x1
	.long	0x4ee
	.uleb128 0x29
	.long	0x477
	.long	.LBB10
	.long	.LBE10
	.byte	0x1
	.byte	0x91
	.uleb128 0x1b
	.long	.LBB11
	.long	.LBE11
	.uleb128 0x2a
	.long	0x484
	.word	0x800
	.uleb128 0x2b
	.long	0x48d
	.long	.LLST15
	.uleb128 0x2b
	.long	0x496
	.long	.LLST16
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0xbb
	.byte	0x1
	.byte	0x1f
	.long	.LASF617
	.byte	0x5
	.byte	0x3
	.long	_ZN7ATTimer8instanceE
	.uleb128 0x2c
	.long	0xc9
	.byte	0x1
	.byte	0x20
	.long	.LASF618
	.byte	0x5
	.byte	0x3
	.long	_ZN7ATTimer5btIdxE
	.uleb128 0x2c
	.long	0xd7
	.byte	0x1
	.byte	0x21
	.long	.LASF619
	.byte	0x5
	.byte	0x3
	.long	_ZN7ATTimer10m_baseTimeE
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.uleb128 0x2119
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1
	.long	.LFE3
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST1:
	.long	.LVL3
	.long	.LVL5
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL5
	.long	.LFE10
	.word	0xc
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST2:
	.long	.LVL6
	.long	.LVL8
	.word	0x1
	.byte	0x69
	.long	.LVL9
	.long	.LVL10
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST3:
	.long	.LFB11
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI0
	.long	.LCFI1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI1
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI9
	.long	.LFE11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	0
	.long	0
.LLST4:
	.long	.LVL11
	.long	.LVL12
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL12
	.long	.LFE11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL12
	.long	.LVL14
	.word	0x8
	.byte	0x88
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL13
	.long	.LVL15
	.word	0x18
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST7:
	.long	.LVL13
	.long	.LVL14
	.word	0xc
	.byte	0x88
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0xf7
	.uleb128 0x34
	.byte	0xf7
	.uleb128 0x2d
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LFB9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI11
	.long	.LFE9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST9:
	.long	.LVL16
	.long	.LVL17
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL17
	.long	.LVL21
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL21
	.long	.LFE9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL19
	.long	.LVL20
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST11:
	.long	.LFB8
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI14
	.long	.LFE8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST12:
	.long	.LVL22
	.long	.LVL23
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL23
	.long	.LVL28
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL28
	.long	.LFE8
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL25
	.long	.LVL27
	.word	0x1
	.byte	0x61
	.long	0
	.long	0
.LLST14:
	.long	.LFB14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI20
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI21
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI22
	.long	.LCFI23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI23
	.long	.LCFI24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI24
	.long	.LCFI25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI25
	.long	.LCFI26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI26
	.long	.LCFI27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI27
	.long	.LFE14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	0
	.long	0
.LLST15:
	.long	.LVL31
	.long	.LVL32
	.word	0x18
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST16:
	.long	.LVL32
	.long	.LVL33
	.word	0x18
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x54
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB3
	.long	.LFE3-.LFB3
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB3
	.long	.LFE3
	.long	.LFB6
	.long	.LFE6
	.long	.LFB10
	.long	.LFE10
	.long	.LFB11
	.long	.LFE11
	.long	.LFB9
	.long	.LFE9
	.long	.LFB8
	.long	.LFE8
	.long	.LFB12
	.long	.LFE12
	.long	.LFB14
	.long	.LFE14
	.long	0
	.long	0
	.section	.debug_macro,"",@progbits
.Ldebug_macro0:
	.word	0x4
	.byte	0x2
	.long	.Ldebug_line0
	.byte	0x7
	.long	.Ldebug_macro1
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.byte	0x3
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x7
	.long	.Ldebug_macro2
	.byte	0x4
	.byte	0x3
	.uleb128 0x17
	.uleb128 0x3
	.byte	0x5
	.uleb128 0x17
	.long	.LASF434
	.byte	0x4
	.file 5 "../include/reg/timing.h"
	.byte	0x3
	.uleb128 0x18
	.uleb128 0x5
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.file 6 "../include/fnasm.h"
	.byte	0x3
	.uleb128 0x19
	.uleb128 0x6
	.byte	0x7
	.long	.Ldebug_macro4
	.byte	0x4
	.file 7 "../include/reg/reggeneral.h"
	.byte	0x3
	.uleb128 0x1a
	.uleb128 0x7
	.byte	0x5
	.uleb128 0x16
	.long	.LASF456
	.file 8 "../include/reg/regmacros.h"
	.byte	0x3
	.uleb128 0x18
	.uleb128 0x8
	.byte	0x7
	.long	.Ldebug_macro5
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.file 9 "../include/reg/regtimer.h"
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x9
	.byte	0x5
	.uleb128 0x17
	.long	.LASF472
	.file 10 "../include/bits.h"
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0xa
	.byte	0x7
	.long	.Ldebug_macro7
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x3
	.uleb128 0x43
	.uleb128 0x4
	.byte	0x7
	.long	.Ldebug_macro9
	.byte	0x4
	.byte	0x6
	.uleb128 0x4a
	.long	.LASF447
	.byte	0x4
	.file 11 "../attimerdefs.h"
	.byte	0x3
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x5
	.uleb128 0x17
	.long	.LASF553
	.file 12 "../include/reg/interrupt.h"
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0xc
	.byte	0x7
	.long	.Ldebug_macro10
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro11
	.byte	0x4
	.byte	0x5
	.uleb128 0x65
	.long	.LASF574
	.byte	0x6
	.uleb128 0x77
	.long	.LASF575
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.1.51c0d5551a2b492ca911d85bf5aac375,comdat
.Ldebug_macro1:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1
	.long	.LASF0
	.byte	0x5
	.uleb128 0x1
	.long	.LASF1
	.byte	0x5
	.uleb128 0x1
	.long	.LASF2
	.byte	0x5
	.uleb128 0x1
	.long	.LASF3
	.byte	0x5
	.uleb128 0x1
	.long	.LASF4
	.byte	0x5
	.uleb128 0x1
	.long	.LASF5
	.byte	0x5
	.uleb128 0x1
	.long	.LASF6
	.byte	0x5
	.uleb128 0x1
	.long	.LASF7
	.byte	0x5
	.uleb128 0x1
	.long	.LASF8
	.byte	0x5
	.uleb128 0x1
	.long	.LASF9
	.byte	0x5
	.uleb128 0x1
	.long	.LASF10
	.byte	0x5
	.uleb128 0x1
	.long	.LASF11
	.byte	0x5
	.uleb128 0x1
	.long	.LASF12
	.byte	0x5
	.uleb128 0x1
	.long	.LASF13
	.byte	0x5
	.uleb128 0x1
	.long	.LASF14
	.byte	0x5
	.uleb128 0x1
	.long	.LASF15
	.byte	0x5
	.uleb128 0x1
	.long	.LASF16
	.byte	0x5
	.uleb128 0x1
	.long	.LASF17
	.byte	0x5
	.uleb128 0x1
	.long	.LASF18
	.byte	0x5
	.uleb128 0x1
	.long	.LASF19
	.byte	0x5
	.uleb128 0x1
	.long	.LASF20
	.byte	0x5
	.uleb128 0x1
	.long	.LASF21
	.byte	0x5
	.uleb128 0x1
	.long	.LASF22
	.byte	0x5
	.uleb128 0x1
	.long	.LASF23
	.byte	0x5
	.uleb128 0x1
	.long	.LASF24
	.byte	0x5
	.uleb128 0x1
	.long	.LASF25
	.byte	0x5
	.uleb128 0x1
	.long	.LASF26
	.byte	0x5
	.uleb128 0x1
	.long	.LASF27
	.byte	0x5
	.uleb128 0x1
	.long	.LASF28
	.byte	0x5
	.uleb128 0x1
	.long	.LASF29
	.byte	0x5
	.uleb128 0x1
	.long	.LASF30
	.byte	0x5
	.uleb128 0x1
	.long	.LASF31
	.byte	0x5
	.uleb128 0x1
	.long	.LASF32
	.byte	0x5
	.uleb128 0x1
	.long	.LASF33
	.byte	0x5
	.uleb128 0x1
	.long	.LASF34
	.byte	0x5
	.uleb128 0x1
	.long	.LASF35
	.byte	0x5
	.uleb128 0x1
	.long	.LASF36
	.byte	0x5
	.uleb128 0x1
	.long	.LASF37
	.byte	0x5
	.uleb128 0x1
	.long	.LASF38
	.byte	0x5
	.uleb128 0x1
	.long	.LASF39
	.byte	0x5
	.uleb128 0x1
	.long	.LASF40
	.byte	0x5
	.uleb128 0x1
	.long	.LASF41
	.byte	0x5
	.uleb128 0x1
	.long	.LASF42
	.byte	0x5
	.uleb128 0x1
	.long	.LASF43
	.byte	0x5
	.uleb128 0x1
	.long	.LASF44
	.byte	0x5
	.uleb128 0x1
	.long	.LASF45
	.byte	0x5
	.uleb128 0x1
	.long	.LASF46
	.byte	0x5
	.uleb128 0x1
	.long	.LASF47
	.byte	0x5
	.uleb128 0x1
	.long	.LASF48
	.byte	0x5
	.uleb128 0x1
	.long	.LASF49
	.byte	0x5
	.uleb128 0x1
	.long	.LASF50
	.byte	0x5
	.uleb128 0x1
	.long	.LASF51
	.byte	0x5
	.uleb128 0x1
	.long	.LASF52
	.byte	0x5
	.uleb128 0x1
	.long	.LASF53
	.byte	0x5
	.uleb128 0x1
	.long	.LASF54
	.byte	0x5
	.uleb128 0x1
	.long	.LASF55
	.byte	0x5
	.uleb128 0x1
	.long	.LASF56
	.byte	0x5
	.uleb128 0x1
	.long	.LASF57
	.byte	0x5
	.uleb128 0x1
	.long	.LASF58
	.byte	0x5
	.uleb128 0x1
	.long	.LASF59
	.byte	0x5
	.uleb128 0x1
	.long	.LASF60
	.byte	0x5
	.uleb128 0x1
	.long	.LASF61
	.byte	0x5
	.uleb128 0x1
	.long	.LASF62
	.byte	0x5
	.uleb128 0x1
	.long	.LASF63
	.byte	0x5
	.uleb128 0x1
	.long	.LASF64
	.byte	0x5
	.uleb128 0x1
	.long	.LASF65
	.byte	0x5
	.uleb128 0x1
	.long	.LASF66
	.byte	0x5
	.uleb128 0x1
	.long	.LASF67
	.byte	0x5
	.uleb128 0x1
	.long	.LASF68
	.byte	0x5
	.uleb128 0x1
	.long	.LASF69
	.byte	0x5
	.uleb128 0x1
	.long	.LASF70
	.byte	0x5
	.uleb128 0x1
	.long	.LASF71
	.byte	0x5
	.uleb128 0x1
	.long	.LASF72
	.byte	0x5
	.uleb128 0x1
	.long	.LASF73
	.byte	0x5
	.uleb128 0x1
	.long	.LASF74
	.byte	0x5
	.uleb128 0x1
	.long	.LASF75
	.byte	0x5
	.uleb128 0x1
	.long	.LASF76
	.byte	0x5
	.uleb128 0x1
	.long	.LASF77
	.byte	0x5
	.uleb128 0x1
	.long	.LASF78
	.byte	0x5
	.uleb128 0x1
	.long	.LASF79
	.byte	0x5
	.uleb128 0x1
	.long	.LASF80
	.byte	0x5
	.uleb128 0x1
	.long	.LASF81
	.byte	0x5
	.uleb128 0x1
	.long	.LASF82
	.byte	0x5
	.uleb128 0x1
	.long	.LASF83
	.byte	0x5
	.uleb128 0x1
	.long	.LASF84
	.byte	0x5
	.uleb128 0x1
	.long	.LASF85
	.byte	0x5
	.uleb128 0x1
	.long	.LASF86
	.byte	0x5
	.uleb128 0x1
	.long	.LASF87
	.byte	0x5
	.uleb128 0x1
	.long	.LASF88
	.byte	0x5
	.uleb128 0x1
	.long	.LASF89
	.byte	0x5
	.uleb128 0x1
	.long	.LASF90
	.byte	0x5
	.uleb128 0x1
	.long	.LASF91
	.byte	0x5
	.uleb128 0x1
	.long	.LASF92
	.byte	0x5
	.uleb128 0x1
	.long	.LASF93
	.byte	0x5
	.uleb128 0x1
	.long	.LASF94
	.byte	0x5
	.uleb128 0x1
	.long	.LASF95
	.byte	0x5
	.uleb128 0x1
	.long	.LASF96
	.byte	0x5
	.uleb128 0x1
	.long	.LASF97
	.byte	0x5
	.uleb128 0x1
	.long	.LASF98
	.byte	0x5
	.uleb128 0x1
	.long	.LASF99
	.byte	0x5
	.uleb128 0x1
	.long	.LASF100
	.byte	0x5
	.uleb128 0x1
	.long	.LASF101
	.byte	0x5
	.uleb128 0x1
	.long	.LASF102
	.byte	0x5
	.uleb128 0x1
	.long	.LASF103
	.byte	0x5
	.uleb128 0x1
	.long	.LASF104
	.byte	0x5
	.uleb128 0x1
	.long	.LASF105
	.byte	0x5
	.uleb128 0x1
	.long	.LASF106
	.byte	0x5
	.uleb128 0x1
	.long	.LASF107
	.byte	0x5
	.uleb128 0x1
	.long	.LASF108
	.byte	0x5
	.uleb128 0x1
	.long	.LASF109
	.byte	0x5
	.uleb128 0x1
	.long	.LASF110
	.byte	0x5
	.uleb128 0x1
	.long	.LASF111
	.byte	0x5
	.uleb128 0x1
	.long	.LASF112
	.byte	0x5
	.uleb128 0x1
	.long	.LASF113
	.byte	0x5
	.uleb128 0x1
	.long	.LASF114
	.byte	0x5
	.uleb128 0x1
	.long	.LASF115
	.byte	0x5
	.uleb128 0x1
	.long	.LASF116
	.byte	0x5
	.uleb128 0x1
	.long	.LASF117
	.byte	0x5
	.uleb128 0x1
	.long	.LASF118
	.byte	0x5
	.uleb128 0x1
	.long	.LASF119
	.byte	0x5
	.uleb128 0x1
	.long	.LASF120
	.byte	0x5
	.uleb128 0x1
	.long	.LASF121
	.byte	0x5
	.uleb128 0x1
	.long	.LASF122
	.byte	0x5
	.uleb128 0x1
	.long	.LASF123
	.byte	0x5
	.uleb128 0x1
	.long	.LASF124
	.byte	0x5
	.uleb128 0x1
	.long	.LASF125
	.byte	0x5
	.uleb128 0x1
	.long	.LASF126
	.byte	0x5
	.uleb128 0x1
	.long	.LASF127
	.byte	0x5
	.uleb128 0x1
	.long	.LASF128
	.byte	0x5
	.uleb128 0x1
	.long	.LASF129
	.byte	0x5
	.uleb128 0x1
	.long	.LASF130
	.byte	0x5
	.uleb128 0x1
	.long	.LASF131
	.byte	0x5
	.uleb128 0x1
	.long	.LASF132
	.byte	0x5
	.uleb128 0x1
	.long	.LASF133
	.byte	0x5
	.uleb128 0x1
	.long	.LASF134
	.byte	0x5
	.uleb128 0x1
	.long	.LASF135
	.byte	0x5
	.uleb128 0x1
	.long	.LASF136
	.byte	0x5
	.uleb128 0x1
	.long	.LASF137
	.byte	0x5
	.uleb128 0x1
	.long	.LASF138
	.byte	0x5
	.uleb128 0x1
	.long	.LASF139
	.byte	0x5
	.uleb128 0x1
	.long	.LASF140
	.byte	0x5
	.uleb128 0x1
	.long	.LASF141
	.byte	0x5
	.uleb128 0x1
	.long	.LASF142
	.byte	0x5
	.uleb128 0x1
	.long	.LASF143
	.byte	0x5
	.uleb128 0x1
	.long	.LASF144
	.byte	0x5
	.uleb128 0x1
	.long	.LASF145
	.byte	0x5
	.uleb128 0x1
	.long	.LASF146
	.byte	0x5
	.uleb128 0x1
	.long	.LASF147
	.byte	0x5
	.uleb128 0x1
	.long	.LASF148
	.byte	0x5
	.uleb128 0x1
	.long	.LASF149
	.byte	0x5
	.uleb128 0x1
	.long	.LASF150
	.byte	0x5
	.uleb128 0x1
	.long	.LASF151
	.byte	0x5
	.uleb128 0x1
	.long	.LASF152
	.byte	0x5
	.uleb128 0x1
	.long	.LASF153
	.byte	0x5
	.uleb128 0x1
	.long	.LASF154
	.byte	0x5
	.uleb128 0x1
	.long	.LASF155
	.byte	0x5
	.uleb128 0x1
	.long	.LASF156
	.byte	0x5
	.uleb128 0x1
	.long	.LASF157
	.byte	0x5
	.uleb128 0x1
	.long	.LASF158
	.byte	0x5
	.uleb128 0x1
	.long	.LASF159
	.byte	0x5
	.uleb128 0x1
	.long	.LASF160
	.byte	0x5
	.uleb128 0x1
	.long	.LASF161
	.byte	0x5
	.uleb128 0x1
	.long	.LASF162
	.byte	0x5
	.uleb128 0x1
	.long	.LASF163
	.byte	0x5
	.uleb128 0x1
	.long	.LASF164
	.byte	0x5
	.uleb128 0x1
	.long	.LASF165
	.byte	0x5
	.uleb128 0x1
	.long	.LASF166
	.byte	0x5
	.uleb128 0x1
	.long	.LASF167
	.byte	0x5
	.uleb128 0x1
	.long	.LASF168
	.byte	0x5
	.uleb128 0x1
	.long	.LASF169
	.byte	0x5
	.uleb128 0x1
	.long	.LASF170
	.byte	0x5
	.uleb128 0x1
	.long	.LASF171
	.byte	0x5
	.uleb128 0x1
	.long	.LASF172
	.byte	0x5
	.uleb128 0x1
	.long	.LASF173
	.byte	0x5
	.uleb128 0x1
	.long	.LASF174
	.byte	0x5
	.uleb128 0x1
	.long	.LASF175
	.byte	0x5
	.uleb128 0x1
	.long	.LASF176
	.byte	0x5
	.uleb128 0x1
	.long	.LASF177
	.byte	0x5
	.uleb128 0x1
	.long	.LASF178
	.byte	0x5
	.uleb128 0x1
	.long	.LASF179
	.byte	0x5
	.uleb128 0x1
	.long	.LASF180
	.byte	0x5
	.uleb128 0x1
	.long	.LASF181
	.byte	0x5
	.uleb128 0x1
	.long	.LASF182
	.byte	0x5
	.uleb128 0x1
	.long	.LASF183
	.byte	0x5
	.uleb128 0x1
	.long	.LASF184
	.byte	0x5
	.uleb128 0x1
	.long	.LASF185
	.byte	0x5
	.uleb128 0x1
	.long	.LASF186
	.byte	0x5
	.uleb128 0x1
	.long	.LASF187
	.byte	0x5
	.uleb128 0x1
	.long	.LASF188
	.byte	0x5
	.uleb128 0x1
	.long	.LASF189
	.byte	0x5
	.uleb128 0x1
	.long	.LASF190
	.byte	0x5
	.uleb128 0x1
	.long	.LASF191
	.byte	0x5
	.uleb128 0x1
	.long	.LASF192
	.byte	0x5
	.uleb128 0x1
	.long	.LASF193
	.byte	0x5
	.uleb128 0x1
	.long	.LASF194
	.byte	0x5
	.uleb128 0x1
	.long	.LASF195
	.byte	0x5
	.uleb128 0x1
	.long	.LASF196
	.byte	0x5
	.uleb128 0x1
	.long	.LASF197
	.byte	0x5
	.uleb128 0x1
	.long	.LASF198
	.byte	0x5
	.uleb128 0x1
	.long	.LASF199
	.byte	0x5
	.uleb128 0x1
	.long	.LASF200
	.byte	0x5
	.uleb128 0x1
	.long	.LASF201
	.byte	0x5
	.uleb128 0x1
	.long	.LASF202
	.byte	0x5
	.uleb128 0x1
	.long	.LASF203
	.byte	0x5
	.uleb128 0x1
	.long	.LASF204
	.byte	0x5
	.uleb128 0x1
	.long	.LASF205
	.byte	0x5
	.uleb128 0x1
	.long	.LASF206
	.byte	0x5
	.uleb128 0x1
	.long	.LASF207
	.byte	0x5
	.uleb128 0x1
	.long	.LASF208
	.byte	0x5
	.uleb128 0x1
	.long	.LASF209
	.byte	0x5
	.uleb128 0x1
	.long	.LASF210
	.byte	0x5
	.uleb128 0x1
	.long	.LASF211
	.byte	0x5
	.uleb128 0x1
	.long	.LASF212
	.byte	0x5
	.uleb128 0x1
	.long	.LASF213
	.byte	0x5
	.uleb128 0x1
	.long	.LASF214
	.byte	0x5
	.uleb128 0x1
	.long	.LASF215
	.byte	0x5
	.uleb128 0x1
	.long	.LASF216
	.byte	0x5
	.uleb128 0x1
	.long	.LASF217
	.byte	0x5
	.uleb128 0x1
	.long	.LASF218
	.byte	0x5
	.uleb128 0x1
	.long	.LASF219
	.byte	0x5
	.uleb128 0x1
	.long	.LASF220
	.byte	0x5
	.uleb128 0x1
	.long	.LASF221
	.byte	0x5
	.uleb128 0x1
	.long	.LASF222
	.byte	0x5
	.uleb128 0x1
	.long	.LASF223
	.byte	0x5
	.uleb128 0x1
	.long	.LASF224
	.byte	0x5
	.uleb128 0x1
	.long	.LASF225
	.byte	0x5
	.uleb128 0x1
	.long	.LASF226
	.byte	0x5
	.uleb128 0x1
	.long	.LASF227
	.byte	0x5
	.uleb128 0x1
	.long	.LASF228
	.byte	0x5
	.uleb128 0x1
	.long	.LASF229
	.byte	0x5
	.uleb128 0x1
	.long	.LASF230
	.byte	0x5
	.uleb128 0x1
	.long	.LASF231
	.byte	0x5
	.uleb128 0x1
	.long	.LASF232
	.byte	0x5
	.uleb128 0x1
	.long	.LASF233
	.byte	0x5
	.uleb128 0x1
	.long	.LASF234
	.byte	0x5
	.uleb128 0x1
	.long	.LASF235
	.byte	0x5
	.uleb128 0x1
	.long	.LASF236
	.byte	0x5
	.uleb128 0x1
	.long	.LASF237
	.byte	0x5
	.uleb128 0x1
	.long	.LASF238
	.byte	0x5
	.uleb128 0x1
	.long	.LASF239
	.byte	0x5
	.uleb128 0x1
	.long	.LASF240
	.byte	0x5
	.uleb128 0x1
	.long	.LASF241
	.byte	0x5
	.uleb128 0x1
	.long	.LASF242
	.byte	0x5
	.uleb128 0x1
	.long	.LASF243
	.byte	0x5
	.uleb128 0x1
	.long	.LASF244
	.byte	0x5
	.uleb128 0x1
	.long	.LASF245
	.byte	0x5
	.uleb128 0x1
	.long	.LASF246
	.byte	0x5
	.uleb128 0x1
	.long	.LASF247
	.byte	0x5
	.uleb128 0x1
	.long	.LASF248
	.byte	0x5
	.uleb128 0x1
	.long	.LASF249
	.byte	0x5
	.uleb128 0x1
	.long	.LASF250
	.byte	0x5
	.uleb128 0x1
	.long	.LASF251
	.byte	0x5
	.uleb128 0x1
	.long	.LASF252
	.byte	0x5
	.uleb128 0x1
	.long	.LASF253
	.byte	0x5
	.uleb128 0x1
	.long	.LASF254
	.byte	0x5
	.uleb128 0x1
	.long	.LASF255
	.byte	0x5
	.uleb128 0x1
	.long	.LASF256
	.byte	0x5
	.uleb128 0x1
	.long	.LASF257
	.byte	0x5
	.uleb128 0x1
	.long	.LASF258
	.byte	0x5
	.uleb128 0x1
	.long	.LASF259
	.byte	0x5
	.uleb128 0x1
	.long	.LASF260
	.byte	0x5
	.uleb128 0x1
	.long	.LASF261
	.byte	0x5
	.uleb128 0x1
	.long	.LASF262
	.byte	0x5
	.uleb128 0x1
	.long	.LASF263
	.byte	0x5
	.uleb128 0x1
	.long	.LASF264
	.byte	0x5
	.uleb128 0x1
	.long	.LASF265
	.byte	0x5
	.uleb128 0x1
	.long	.LASF266
	.byte	0x5
	.uleb128 0x1
	.long	.LASF267
	.byte	0x5
	.uleb128 0x1
	.long	.LASF268
	.byte	0x5
	.uleb128 0x1
	.long	.LASF269
	.byte	0x5
	.uleb128 0x1
	.long	.LASF270
	.byte	0x5
	.uleb128 0x1
	.long	.LASF271
	.byte	0x5
	.uleb128 0x1
	.long	.LASF272
	.byte	0x5
	.uleb128 0x1
	.long	.LASF273
	.byte	0x5
	.uleb128 0x1
	.long	.LASF274
	.byte	0x5
	.uleb128 0x1
	.long	.LASF275
	.byte	0x5
	.uleb128 0x1
	.long	.LASF276
	.byte	0x5
	.uleb128 0x1
	.long	.LASF277
	.byte	0x5
	.uleb128 0x1
	.long	.LASF278
	.byte	0x5
	.uleb128 0x1
	.long	.LASF279
	.byte	0x5
	.uleb128 0x1
	.long	.LASF280
	.byte	0x5
	.uleb128 0x1
	.long	.LASF281
	.byte	0x5
	.uleb128 0x1
	.long	.LASF282
	.byte	0x5
	.uleb128 0x1
	.long	.LASF283
	.byte	0x5
	.uleb128 0x1
	.long	.LASF284
	.byte	0x5
	.uleb128 0x1
	.long	.LASF285
	.byte	0x5
	.uleb128 0x1
	.long	.LASF286
	.byte	0x5
	.uleb128 0x1
	.long	.LASF287
	.byte	0x5
	.uleb128 0x1
	.long	.LASF288
	.byte	0x5
	.uleb128 0x1
	.long	.LASF289
	.byte	0x5
	.uleb128 0x1
	.long	.LASF290
	.byte	0x5
	.uleb128 0x1
	.long	.LASF291
	.byte	0x5
	.uleb128 0x1
	.long	.LASF292
	.byte	0x5
	.uleb128 0x1
	.long	.LASF293
	.byte	0x5
	.uleb128 0x1
	.long	.LASF294
	.byte	0x5
	.uleb128 0x1
	.long	.LASF295
	.byte	0x5
	.uleb128 0x1
	.long	.LASF296
	.byte	0x5
	.uleb128 0x1
	.long	.LASF297
	.byte	0x5
	.uleb128 0x1
	.long	.LASF298
	.byte	0x5
	.uleb128 0x1
	.long	.LASF299
	.byte	0x5
	.uleb128 0x1
	.long	.LASF300
	.byte	0x5
	.uleb128 0x1
	.long	.LASF301
	.byte	0x5
	.uleb128 0x1
	.long	.LASF302
	.byte	0x5
	.uleb128 0x1
	.long	.LASF303
	.byte	0x5
	.uleb128 0x1
	.long	.LASF304
	.byte	0x5
	.uleb128 0x1
	.long	.LASF305
	.byte	0x5
	.uleb128 0x1
	.long	.LASF306
	.byte	0x5
	.uleb128 0x1
	.long	.LASF307
	.byte	0x5
	.uleb128 0x1
	.long	.LASF308
	.byte	0x5
	.uleb128 0x1
	.long	.LASF309
	.byte	0x5
	.uleb128 0x1
	.long	.LASF310
	.byte	0x5
	.uleb128 0x1
	.long	.LASF311
	.byte	0x5
	.uleb128 0x1
	.long	.LASF312
	.byte	0x5
	.uleb128 0x1
	.long	.LASF313
	.byte	0x5
	.uleb128 0x1
	.long	.LASF314
	.byte	0x5
	.uleb128 0x1
	.long	.LASF315
	.byte	0x5
	.uleb128 0x1
	.long	.LASF316
	.byte	0x5
	.uleb128 0x1
	.long	.LASF317
	.byte	0x5
	.uleb128 0x1
	.long	.LASF318
	.byte	0x5
	.uleb128 0x1
	.long	.LASF319
	.byte	0x5
	.uleb128 0x1
	.long	.LASF320
	.byte	0x5
	.uleb128 0x1
	.long	.LASF321
	.byte	0x5
	.uleb128 0x1
	.long	.LASF322
	.byte	0x5
	.uleb128 0x1
	.long	.LASF323
	.byte	0x5
	.uleb128 0x1
	.long	.LASF324
	.byte	0x5
	.uleb128 0x1
	.long	.LASF325
	.byte	0x5
	.uleb128 0x1
	.long	.LASF326
	.byte	0x5
	.uleb128 0x1
	.long	.LASF327
	.byte	0x5
	.uleb128 0x1
	.long	.LASF328
	.byte	0x5
	.uleb128 0x1
	.long	.LASF329
	.byte	0x5
	.uleb128 0x1
	.long	.LASF330
	.byte	0x5
	.uleb128 0x1
	.long	.LASF331
	.byte	0x5
	.uleb128 0x1
	.long	.LASF332
	.byte	0x5
	.uleb128 0x1
	.long	.LASF333
	.byte	0x5
	.uleb128 0x1
	.long	.LASF334
	.byte	0x5
	.uleb128 0x1
	.long	.LASF335
	.byte	0x5
	.uleb128 0x1
	.long	.LASF336
	.byte	0x5
	.uleb128 0x1
	.long	.LASF337
	.byte	0x5
	.uleb128 0x1
	.long	.LASF338
	.byte	0x5
	.uleb128 0x1
	.long	.LASF339
	.byte	0x5
	.uleb128 0x1
	.long	.LASF340
	.byte	0x5
	.uleb128 0x1
	.long	.LASF341
	.byte	0x5
	.uleb128 0x1
	.long	.LASF342
	.byte	0x5
	.uleb128 0x1
	.long	.LASF343
	.byte	0x5
	.uleb128 0x1
	.long	.LASF344
	.byte	0x5
	.uleb128 0x1
	.long	.LASF345
	.byte	0x5
	.uleb128 0x1
	.long	.LASF346
	.byte	0x5
	.uleb128 0x1
	.long	.LASF347
	.byte	0x5
	.uleb128 0x1
	.long	.LASF348
	.byte	0x5
	.uleb128 0x1
	.long	.LASF349
	.byte	0x5
	.uleb128 0x1
	.long	.LASF350
	.byte	0x5
	.uleb128 0x1
	.long	.LASF351
	.byte	0x5
	.uleb128 0x1
	.long	.LASF352
	.byte	0x5
	.uleb128 0x1
	.long	.LASF353
	.byte	0x5
	.uleb128 0x1
	.long	.LASF354
	.byte	0x5
	.uleb128 0x1
	.long	.LASF355
	.byte	0x5
	.uleb128 0x1
	.long	.LASF356
	.byte	0x5
	.uleb128 0x1
	.long	.LASF357
	.byte	0x5
	.uleb128 0x1
	.long	.LASF358
	.byte	0x5
	.uleb128 0x1
	.long	.LASF359
	.byte	0x5
	.uleb128 0x1
	.long	.LASF360
	.byte	0x5
	.uleb128 0x1
	.long	.LASF361
	.byte	0x5
	.uleb128 0x1
	.long	.LASF362
	.byte	0x5
	.uleb128 0x1
	.long	.LASF363
	.byte	0x5
	.uleb128 0x1
	.long	.LASF364
	.byte	0x5
	.uleb128 0x1
	.long	.LASF365
	.byte	0x5
	.uleb128 0x1
	.long	.LASF366
	.byte	0x5
	.uleb128 0x1
	.long	.LASF367
	.byte	0x5
	.uleb128 0x1
	.long	.LASF368
	.byte	0x5
	.uleb128 0x1
	.long	.LASF369
	.byte	0x5
	.uleb128 0x1
	.long	.LASF370
	.byte	0x5
	.uleb128 0x1
	.long	.LASF371
	.byte	0x5
	.uleb128 0x1
	.long	.LASF372
	.byte	0x5
	.uleb128 0x1
	.long	.LASF373
	.byte	0x5
	.uleb128 0x1
	.long	.LASF374
	.byte	0x5
	.uleb128 0x1
	.long	.LASF375
	.byte	0x5
	.uleb128 0x1
	.long	.LASF376
	.byte	0x5
	.uleb128 0x1
	.long	.LASF377
	.byte	0x5
	.uleb128 0x1
	.long	.LASF378
	.byte	0x5
	.uleb128 0x1
	.long	.LASF379
	.byte	0x5
	.uleb128 0x1
	.long	.LASF380
	.byte	0x5
	.uleb128 0x1
	.long	.LASF381
	.byte	0x5
	.uleb128 0x1
	.long	.LASF382
	.byte	0x5
	.uleb128 0x1
	.long	.LASF383
	.byte	0x5
	.uleb128 0x1
	.long	.LASF384
	.byte	0x5
	.uleb128 0x1
	.long	.LASF385
	.byte	0x5
	.uleb128 0x1
	.long	.LASF386
	.byte	0x5
	.uleb128 0x1
	.long	.LASF387
	.byte	0x5
	.uleb128 0x1
	.long	.LASF388
	.byte	0x5
	.uleb128 0x1
	.long	.LASF389
	.byte	0x5
	.uleb128 0x1
	.long	.LASF390
	.byte	0x5
	.uleb128 0x1
	.long	.LASF391
	.byte	0x5
	.uleb128 0x1
	.long	.LASF392
	.byte	0x5
	.uleb128 0x1
	.long	.LASF393
	.byte	0x5
	.uleb128 0x1
	.long	.LASF394
	.byte	0x5
	.uleb128 0x1
	.long	.LASF395
	.byte	0x5
	.uleb128 0x1
	.long	.LASF396
	.byte	0x5
	.uleb128 0x1
	.long	.LASF397
	.byte	0x5
	.uleb128 0x1
	.long	.LASF398
	.byte	0x5
	.uleb128 0x1
	.long	.LASF399
	.byte	0x5
	.uleb128 0x1
	.long	.LASF400
	.byte	0x5
	.uleb128 0x1
	.long	.LASF401
	.byte	0x5
	.uleb128 0x1
	.long	.LASF402
	.byte	0x5
	.uleb128 0x1
	.long	.LASF403
	.byte	0x5
	.uleb128 0x1
	.long	.LASF404
	.byte	0x5
	.uleb128 0x1
	.long	.LASF405
	.byte	0x5
	.uleb128 0x1
	.long	.LASF406
	.byte	0x5
	.uleb128 0x1
	.long	.LASF407
	.byte	0x5
	.uleb128 0x1
	.long	.LASF408
	.byte	0x5
	.uleb128 0x1
	.long	.LASF409
	.byte	0x5
	.uleb128 0x1
	.long	.LASF410
	.byte	0x5
	.uleb128 0x1
	.long	.LASF411
	.byte	0x5
	.uleb128 0x1
	.long	.LASF412
	.byte	0x5
	.uleb128 0x1
	.long	.LASF413
	.byte	0x5
	.uleb128 0x1
	.long	.LASF414
	.byte	0x5
	.uleb128 0x1
	.long	.LASF415
	.byte	0x5
	.uleb128 0x1
	.long	.LASF416
	.byte	0x5
	.uleb128 0x1
	.long	.LASF417
	.byte	0x5
	.uleb128 0x1
	.long	.LASF418
	.byte	0x5
	.uleb128 0x1
	.long	.LASF419
	.byte	0x5
	.uleb128 0x1
	.long	.LASF420
	.byte	0x5
	.uleb128 0x1
	.long	.LASF421
	.byte	0x5
	.uleb128 0x1
	.long	.LASF422
	.byte	0x5
	.uleb128 0x1
	.long	.LASF423
	.byte	0x5
	.uleb128 0x1
	.long	.LASF424
	.byte	0x5
	.uleb128 0x1
	.long	.LASF425
	.byte	0x5
	.uleb128 0x1
	.long	.LASF426
	.byte	0x5
	.uleb128 0
	.long	.LASF328
	.byte	0x5
	.uleb128 0
	.long	.LASF326
	.byte	0x5
	.uleb128 0
	.long	.LASF427
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.h_types.h.23.fce948e91e6dacafc019a221ca87f341,comdat
.Ldebug_macro2:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.long	.LASF428
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF429
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF430
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF431
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF432
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF433
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.timing.h.22.67928da58428f8f56a8f06df487b592a,comdat
.Ldebug_macro3:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x16
	.long	.LASF435
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF436
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF437
	.byte	0x6
	.uleb128 0x27
	.long	.LASF438
	.byte	0x5
	.uleb128 0x34
	.long	.LASF439
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF440
	.byte	0x5
	.uleb128 0x47
	.long	.LASF441
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF442
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF443
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF444
	.byte	0x5
	.uleb128 0x50
	.long	.LASF445
	.byte	0x5
	.uleb128 0x53
	.long	.LASF446
	.byte	0x6
	.uleb128 0x5a
	.long	.LASF447
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.fnasm.h.23.7eceab03832af77a7f7ccd5b8c0ab920,comdat
.Ldebug_macro4:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.long	.LASF448
	.byte	0x5
	.uleb128 0x19
	.long	.LASF449
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF450
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF451
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF452
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF453
	.byte	0x5
	.uleb128 0x21
	.long	.LASF454
	.byte	0x5
	.uleb128 0x24
	.long	.LASF455
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.regmacros.h.22.49a8bb8630f59ea577dfc3b79d20f031,comdat
.Ldebug_macro5:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x16
	.long	.LASF457
	.byte	0x5
	.uleb128 0x19
	.long	.LASF458
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF459
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF460
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF461
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF462
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.reggeneral.h.26.c33d086d44a503502bff992172cabae6,comdat
.Ldebug_macro6:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF463
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF464
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF465
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF466
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF467
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF468
	.byte	0x5
	.uleb128 0x20
	.long	.LASF469
	.byte	0x5
	.uleb128 0x21
	.long	.LASF470
	.byte	0x5
	.uleb128 0x22
	.long	.LASF471
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.bits.h.23.4b916c607563962d63c8c197b9cd0074,comdat
.Ldebug_macro7:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.long	.LASF473
	.byte	0x5
	.uleb128 0x19
	.long	.LASF474
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF475
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.regtimer.h.34.288a48dbfeb64cea5fd76a8d86075262,comdat
.Ldebug_macro8:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x22
	.long	.LASF436
	.byte	0x5
	.uleb128 0x23
	.long	.LASF437
	.byte	0x6
	.uleb128 0x2c
	.long	.LASF438
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF476
	.byte	0x5
	.uleb128 0x30
	.long	.LASF477
	.byte	0x5
	.uleb128 0x31
	.long	.LASF478
	.byte	0x5
	.uleb128 0x34
	.long	.LASF479
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF480
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.regtim85.h.23.e63cda77193236f29c7b8bada24ee3a1,comdat
.Ldebug_macro9:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.long	.LASF481
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF482
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF483
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF484
	.byte	0x5
	.uleb128 0x20
	.long	.LASF485
	.byte	0x5
	.uleb128 0x21
	.long	.LASF486
	.byte	0x5
	.uleb128 0x22
	.long	.LASF487
	.byte	0x5
	.uleb128 0x23
	.long	.LASF488
	.byte	0x5
	.uleb128 0x24
	.long	.LASF489
	.byte	0x5
	.uleb128 0x25
	.long	.LASF490
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF491
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF492
	.byte	0x5
	.uleb128 0x32
	.long	.LASF493
	.byte	0x5
	.uleb128 0x33
	.long	.LASF494
	.byte	0x5
	.uleb128 0x34
	.long	.LASF495
	.byte	0x5
	.uleb128 0x39
	.long	.LASF496
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF497
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF498
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF499
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF500
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF501
	.byte	0x5
	.uleb128 0x40
	.long	.LASF502
	.byte	0x5
	.uleb128 0x41
	.long	.LASF503
	.byte	0x5
	.uleb128 0x42
	.long	.LASF504
	.byte	0x5
	.uleb128 0x43
	.long	.LASF505
	.byte	0x5
	.uleb128 0x44
	.long	.LASF506
	.byte	0x5
	.uleb128 0x45
	.long	.LASF507
	.byte	0x5
	.uleb128 0x46
	.long	.LASF508
	.byte	0x5
	.uleb128 0x47
	.long	.LASF509
	.byte	0x5
	.uleb128 0x48
	.long	.LASF510
	.byte	0x5
	.uleb128 0x49
	.long	.LASF511
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF512
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF513
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF514
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF515
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF516
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF517
	.byte	0x5
	.uleb128 0x50
	.long	.LASF518
	.byte	0x5
	.uleb128 0x53
	.long	.LASF519
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF520
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF521
	.byte	0x5
	.uleb128 0x60
	.long	.LASF522
	.byte	0x5
	.uleb128 0x61
	.long	.LASF523
	.byte	0x5
	.uleb128 0x62
	.long	.LASF524
	.byte	0x5
	.uleb128 0x63
	.long	.LASF525
	.byte	0x5
	.uleb128 0x64
	.long	.LASF526
	.byte	0x5
	.uleb128 0x65
	.long	.LASF527
	.byte	0x5
	.uleb128 0x66
	.long	.LASF528
	.byte	0x5
	.uleb128 0x67
	.long	.LASF529
	.byte	0x5
	.uleb128 0x68
	.long	.LASF530
	.byte	0x5
	.uleb128 0x69
	.long	.LASF531
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF532
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF533
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF534
	.byte	0x5
	.uleb128 0x70
	.long	.LASF535
	.byte	0x5
	.uleb128 0x71
	.long	.LASF536
	.byte	0x5
	.uleb128 0x72
	.long	.LASF537
	.byte	0x5
	.uleb128 0x73
	.long	.LASF538
	.byte	0x5
	.uleb128 0x74
	.long	.LASF539
	.byte	0x5
	.uleb128 0x75
	.long	.LASF540
	.byte	0x5
	.uleb128 0x76
	.long	.LASF541
	.byte	0x5
	.uleb128 0x77
	.long	.LASF542
	.byte	0x5
	.uleb128 0x78
	.long	.LASF543
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF544
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF545
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF546
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF547
	.byte	0x5
	.uleb128 0x80
	.long	.LASF548
	.byte	0x5
	.uleb128 0x82
	.long	.LASF549
	.byte	0x5
	.uleb128 0x84
	.long	.LASF550
	.byte	0x5
	.uleb128 0x85
	.long	.LASF551
	.byte	0x5
	.uleb128 0x86
	.long	.LASF552
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.interrupt.h.23.0afd4eadf21a5f98065932550e67ed73,comdat
.Ldebug_macro10:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.long	.LASF554
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF436
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF437
	.byte	0x6
	.uleb128 0x28
	.long	.LASF438
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF555
	.byte	0x5
	.uleb128 0x33
	.long	.LASF556
	.byte	0x5
	.uleb128 0x37
	.long	.LASF557
	.byte	0x5
	.uleb128 0x41
	.long	.LASF558
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF559
	.byte	0x5
	.uleb128 0x55
	.long	.LASF560
	.byte	0x5
	.uleb128 0x56
	.long	.LASF561
	.byte	0x5
	.uleb128 0x57
	.long	.LASF562
	.byte	0x6
	.uleb128 0x64
	.long	.LASF447
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.attimerdefs.h.32.4541ad9cc9a98af698cb2215c220b138,comdat
.Ldebug_macro11:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x20
	.long	.LASF436
	.byte	0x5
	.uleb128 0x21
	.long	.LASF563
	.byte	0x6
	.uleb128 0x2d
	.long	.LASF438
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF564
	.byte	0x5
	.uleb128 0x30
	.long	.LASF565
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF566
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF567
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF568
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF569
	.byte	0x5
	.uleb128 0x40
	.long	.LASF570
	.byte	0x5
	.uleb128 0x41
	.long	.LASF571
	.byte	0x5
	.uleb128 0x42
	.long	.LASF572
	.byte	0x5
	.uleb128 0x43
	.long	.LASF573
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF435:
	.string	"TIMING_H "
.LASF36:
	.string	"__WINT_TYPE__ int"
.LASF346:
	.string	"__BUILTIN_AVR_INSERT_BITS 1"
.LASF563:
	.string	"TCLK_DIV RCLK_DIV(128UL)"
.LASF600:
	.string	"_ZN7ATTimer11getInstanceEv"
.LASF123:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF564:
	.string	"TTICKf_us (TICKf_ns/1000.0*TCLK_DIV)"
.LASF430:
	.string	"UNUSED(x) (void)(x)"
.LASF354:
	.string	"__BUILTIN_AVR_ABSLK 1"
.LASF553:
	.string	"ATTIMERDEFS_H "
.LASF407:
	.string	"__BUILTIN_AVR_LLRBITS 1"
.LASF318:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF180:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF97:
	.string	"__INT_LEAST8_MAX__ 127"
.LASF417:
	.string	"__BUILTIN_AVR_UKBITS 1"
.LASF551:
	.string	"OCR1B REGDECL(0x2B)"
.LASF89:
	.string	"__INT8_MAX__ 127"
.LASF118:
	.string	"__UINT_FAST16_MAX__ 65535U"
.LASF595:
	.string	"udelay"
.LASF458:
	.string	"REGDECL_WPTR(r) (volatile uint16_t * volatile)((r)+((((int)r)<0x60)?0x20:0))"
.LASF91:
	.string	"__INT32_MAX__ 2147483647L"
.LASF388:
	.string	"__BUILTIN_AVR_BITSHR 1"
.LASF270:
	.string	"__QQ_IBIT__ 0"
.LASF286:
	.string	"__UDQ_IBIT__ 0"
.LASF572:
	.string	"W_TOIE TOIE1"
.LASF454:
	.string	"lds(out,mem) __asm__ __volatile__ (\"lds %0,%1\" : \"=d\" (out) : \"i\" (&mem));"
.LASF361:
	.string	"__BUILTIN_AVR_ROUNDUR 1"
.LASF559:
	.string	"EMPTY_INTERRUPT(vector) extern \"C\" void vector(void) __attribute__ ((signal,naked,__INTR_ATTRS)); void vector (void) { __asm__ __volatile__ (\"reti\" ::); }"
.LASF224:
	.string	"__ULLFRACT_FBIT__ 64"
.LASF311:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 1"
.LASF103:
	.string	"__INT_LEAST64_MAX__ 9223372036854775807LL"
.LASF431:
	.string	"_uSec(n) (n)"
.LASF525:
	.string	"OCF1B OCF(1,1)"
.LASF323:
	.string	"__SIZEOF_WINT_T__ 2"
.LASF1:
	.string	"__cplusplus 199711L"
.LASF548:
	.string	"PLOCK BV_(0)"
.LASF445:
	.string	"TICK_ns_10th ((unsigned long)(TICKf_ns*10))"
.LASF159:
	.string	"__LDBL_MAX_10_EXP__ 38"
.LASF510:
	.string	"CS1_CLK_DIV64 CS1_0_3(7)"
.LASF196:
	.string	"__USFRACT_MIN__ 0.0UHR"
.LASF377:
	.string	"__BUILTIN_AVR_COUNTLSUR 1"
.LASF4:
	.string	"__GNUC_MINOR__ 8"
.LASF582:
	.string	"unsigned int"
.LASF366:
	.string	"__BUILTIN_AVR_ROUNDLK 1"
.LASF337:
	.string	"__BUILTIN_AVR_SEI 1"
.LASF23:
	.string	"__SIZEOF_SIZE_T__ 2"
.LASF19:
	.string	"__SIZEOF_SHORT__ 2"
.LASF22:
	.string	"__SIZEOF_LONG_DOUBLE__ 4"
.LASF133:
	.string	"__FLT_MAX__ 3.40282347e+38F"
.LASF3:
	.string	"__GNUC__ 4"
.LASF544:
	.string	"PLLSCR REGDECL(0x27)"
.LASF27:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF227:
	.string	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR"
.LASF185:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF552:
	.string	"OCR1C REGDECL(0x2D)"
.LASF106:
	.string	"__UINT8_C(c) c"
.LASF516:
	.string	"CS1_CLK_DIV4096 CS1_0_3(0xD)"
.LASF57:
	.string	"__UINT_LEAST64_TYPE__ long long unsigned int"
.LASF382:
	.string	"__BUILTIN_AVR_COUNTLSLK 1"
.LASF10:
	.string	"__ATOMIC_RELEASE 3"
.LASF34:
	.string	"__PTRDIFF_TYPE__ int"
.LASF148:
	.string	"__DBL_MIN__ double(1.17549435e-38L)"
.LASF483:
	.string	"TSM BV_(7)"
.LASF471:
	.string	"SREG_I BV_(7)"
.LASF173:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF14:
	.string	"__OPTIMIZE__ 1"
.LASF521:
	.string	"TIFR1 TIFR"
.LASF8:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF442:
	.string	"CLKPS_DIV RCLKPS(1UL)"
.LASF351:
	.string	"__BUILTIN_AVR_ABSLLR 1"
.LASF135:
	.string	"__FLT_EPSILON__ 1.19209290e-7F"
.LASF469:
	.string	"SREG_H BV_(5)"
.LASF305:
	.string	"__REGISTER_PREFIX__ "
.LASF115:
	.string	"__INT_FAST32_MAX__ 2147483647L"
.LASF86:
	.string	"__UINTMAX_C(c) c ## ULL"
.LASF64:
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
.LASF360:
	.string	"__BUILTIN_AVR_ROUNDUHR 1"
.LASF29:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF105:
	.string	"__UINT_LEAST8_MAX__ 255"
.LASF495:
	.string	"OCR0B REGDECL(0x28)"
.LASF375:
	.string	"__BUILTIN_AVR_COUNTLSLLR 1"
.LASF151:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF210:
	.string	"__LFRACT_IBIT__ 0"
.LASF328:
	.string	"__AVR_ATtiny85__ 1"
.LASF78:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF439:
	.ascii	"RCLK_DIV(d) ((d<=1)?1UL:(d<=2)?2UL"
	.string	": (d<=4+1)?4UL:(d<=8+3)?8UL: (d<=16+7)?16UL:(d<=32+15)?32UL: (d<=64+31)?64UL:(d<=128+63)?128UL: (d<=256+127)?256UL:(d<=512+255)?512UL: (d<=1024+511)?1024UL:(d<=2048+1023)?2048UL: (d<=4096+2047)?4096UL:(d<=8192+4095)?8192UL: (d<=16384+8191)?16384UL:16384UL)"
.LASF326:
	.string	"__AVR__ 1"
.LASF54:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF462:
	.string	"REGDECL(r) REGDECLB(r)"
.LASF558:
	.string	"NAKED_ISR(vector) extern \"C\" void vector(void) __attribute__ ((signal,naked,__INTR_ATTRS)); void vector (void)"
.LASF527:
	.string	"OCF0B OCF(0,1)"
.LASF188:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF225:
	.string	"__ULLFRACT_IBIT__ 0"
.LASF376:
	.string	"__BUILTIN_AVR_COUNTLSUHR 1"
.LASF7:
	.string	"__ATOMIC_RELAXED 0"
.LASF623:
	.string	"timerISR"
.LASF251:
	.string	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)"
.LASF41:
	.string	"__SIG_ATOMIC_TYPE__ char"
.LASF256:
	.string	"__ULACCUM_MIN__ 0.0ULK"
.LASF373:
	.string	"__BUILTIN_AVR_COUNTLSR 1"
.LASF138:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF493:
	.string	"TCNT0 REGDECL(0x32)"
.LASF463:
	.string	"SREG REGDECL(0x3F)"
.LASF324:
	.string	"__SIZEOF_PTRDIFF_T__ 2"
.LASF302:
	.string	"__UDA_IBIT__ 32"
.LASF96:
	.string	"__UINT64_MAX__ 18446744073709551615ULL"
.LASF61:
	.string	"__INT_FAST64_TYPE__ long long int"
.LASF98:
	.string	"__INT8_C(c) c"
.LASF363:
	.string	"__BUILTIN_AVR_ROUNDULLR 1"
.LASF142:
	.string	"__DBL_MIN_EXP__ (-125)"
.LASF72:
	.string	"__SCHAR_MAX__ 127"
.LASF421:
	.string	"__BUILTIN_AVR_ROUNDFX 1"
.LASF266:
	.string	"__ULLACCUM_MIN__ 0.0ULLK"
.LASF584:
	.string	"uint32_t"
.LASF389:
	.string	"__BUILTIN_AVR_BITSR 1"
.LASF357:
	.string	"__BUILTIN_AVR_ROUNDR 1"
.LASF117:
	.string	"__UINT_FAST8_MAX__ 255"
.LASF67:
	.string	"__UINTPTR_TYPE__ unsigned int"
.LASF404:
	.string	"__BUILTIN_AVR_HRBITS 1"
.LASF394:
	.string	"__BUILTIN_AVR_BITSULR 1"
.LASF571:
	.string	"W_TOV_AT TOV1_AT"
.LASF292:
	.string	"__SA_IBIT__ 16"
.LASF222:
	.string	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR"
.LASF499:
	.string	"PWM1A BV_(6)"
.LASF494:
	.string	"OCR0A REGDECL(0x29)"
.LASF127:
	.string	"__FLT_DIG__ 6"
.LASF538:
	.string	"OCIE1B OCIE(1,1)"
.LASF556:
	.string	"_VECTOR(N) __vector_ ## N"
.LASF293:
	.string	"__DA_FBIT__ 31"
.LASF165:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF413:
	.string	"__BUILTIN_AVR_KBITS 1"
.LASF304:
	.string	"__UTA_IBIT__ 16"
.LASF171:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF567:
	.string	"W_TIFR TIFR1"
.LASF238:
	.string	"__USACCUM_EPSILON__ 0x1P-8UHK"
.LASF441:
	.string	"CLK_KHz 16000UL"
.LASF518:
	.string	"CS1_CLK_DIV16384 CS1_0_3(0xF)"
.LASF433:
	.string	"_Sec(n) ((n)*1000000UL)"
.LASF257:
	.string	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK"
.LASF207:
	.string	"__UFRACT_MAX__ 0XFFFFP-16UR"
.LASF192:
	.string	"__SFRACT_MAX__ 0X7FP-7HR"
.LASF536:
	.string	"OCIE(c,n) BV_(3+(c)*2+(1-(n)))"
.LASF576:
	.string	"long long unsigned int"
.LASF122:
	.string	"__UINTPTR_MAX__ 65535U"
.LASF183:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF35:
	.string	"__WCHAR_TYPE__ int"
.LASF218:
	.string	"__ULFRACT_EPSILON__ 0x1P-32ULR"
.LASF52:
	.string	"__INT_LEAST32_TYPE__ long int"
.LASF215:
	.string	"__ULFRACT_IBIT__ 0"
.LASF288:
	.string	"__UTQ_IBIT__ 0"
.LASF53:
	.string	"__INT_LEAST64_TYPE__ long long int"
.LASF125:
	.string	"__FLT_RADIX__ 2"
.LASF396:
	.string	"__BUILTIN_AVR_BITSHK 1"
.LASF437:
	.string	"___tiny85 "
.LASF226:
	.string	"__ULLFRACT_MIN__ 0.0ULLR"
.LASF111:
	.string	"__UINT_LEAST64_MAX__ 18446744073709551615ULL"
.LASF246:
	.string	"__UACCUM_MIN__ 0.0UK"
.LASF213:
	.string	"__LFRACT_EPSILON__ 0x1P-31LR"
.LASF369:
	.string	"__BUILTIN_AVR_ROUNDUK 1"
.LASF621:
	.string	"../attimer.cpp"
.LASF63:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF39:
	.string	"__CHAR16_TYPE__ unsigned int"
.LASF229:
	.string	"__SACCUM_FBIT__ 7"
.LASF480:
	.string	"OSCCAL REGDECL(0x31)"
.LASF602:
	.string	"time"
.LASF179:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF201:
	.string	"__FRACT_MIN__ (-0.5R-0.5R)"
.LASF315:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 1"
.LASF512:
	.string	"CS1_CLK_DIV256 CS1_0_3(9)"
.LASF367:
	.string	"__BUILTIN_AVR_ROUNDLLK 1"
.LASF393:
	.string	"__BUILTIN_AVR_BITSUR 1"
.LASF248:
	.string	"__UACCUM_EPSILON__ 0x1P-16UK"
.LASF113:
	.string	"__INT_FAST8_MAX__ 127"
.LASF589:
	.string	"instance"
.LASF240:
	.string	"__ACCUM_IBIT__ 16"
.LASF385:
	.string	"__BUILTIN_AVR_COUNTLSUK 1"
.LASF276:
	.string	"__DQ_IBIT__ 0"
.LASF524:
	.string	"OCF1A OCF(1,0)"
.LASF234:
	.string	"__USACCUM_FBIT__ 8"
.LASF230:
	.string	"__SACCUM_IBIT__ 8"
.LASF392:
	.string	"__BUILTIN_AVR_BITSUHR 1"
.LASF491:
	.string	"TCCR0A REGDECL(0x2A)"
.LASF76:
	.string	"__LONG_LONG_MAX__ 9223372036854775807LL"
.LASF191:
	.string	"__SFRACT_MIN__ (-0.5HR-0.5HR)"
.LASF300:
	.string	"__USA_IBIT__ 16"
.LASF220:
	.string	"__LLFRACT_IBIT__ 0"
.LASF182:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF153:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF154:
	.string	"__LDBL_MANT_DIG__ 24"
.LASF20:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF237:
	.string	"__USACCUM_MAX__ 0XFFFFP-8UHK"
.LASF110:
	.string	"__UINT32_C(c) c ## UL"
.LASF301:
	.string	"__UDA_FBIT__ 32"
.LASF554:
	.string	"INTERRUPT_H "
.LASF557:
	.string	"ISR(vector,...) extern \"C\" void vector (void) __attribute__ ((signal,__INTR_ATTRS)) __VA_ARGS__; void vector (void)"
.LASF455:
	.string	"NOPLOOPDELAY(n) {for(register unsigned int i___=0;i___<(n);i___++) __asm__ __volatile__ (\"nop\");}"
.LASF259:
	.string	"__LLACCUM_FBIT__ 47"
.LASF565:
	.string	"TTICK_us ((unsigned long)(TTICKf_us))"
.LASF25:
	.string	"__BIGGEST_ALIGNMENT__ 1"
.LASF519:
	.ascii	"SELCS1(d) ((d<=1)?CS1_CLK_DIV1:(d<=2)?CS1_CLK_DIV2: (d<=4+1)"
	.ascii	"?CS1_CLK_DIV4:(d<=8+3)?CS1_CLK_DIV8: (d<=16+7)?CS1_CLK_DIV16"
	.ascii	":(d<=32+15)?CS1_CLK_DIV32: (d<=64+31)?CS1_CLK_DIV64:(d<="
	.string	"128+63)?CS1_CLK_DIV128: (d<=256+127)?CS1_CLK_DIV256:(d<=512+255)?CS1_CLK_DIV512: (d<=1024+511)?CS1_CLK_DIV1024:(d<=2048+1023)?CS1_CLK_DIV2048: (d<=4096+2047)?CS1_CLK_DIV4096:(d<=8192+4095)?CS1_CLK_DIV8192: (d<=16384+8191)?CS1_CLK_DIV16384:CS1_CLK_DIV16384)"
.LASF68:
	.string	"__GXX_WEAK__ 1"
.LASF294:
	.string	"__DA_IBIT__ 32"
.LASF250:
	.string	"__LACCUM_IBIT__ 32"
.LASF99:
	.string	"__INT_LEAST16_MAX__ 32767"
.LASF197:
	.string	"__USFRACT_MAX__ 0XFFP-8UHR"
.LASF378:
	.string	"__BUILTIN_AVR_COUNTLSULR 1"
.LASF26:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF390:
	.string	"__BUILTIN_AVR_BITSLR 1"
.LASF70:
	.string	"__GXX_ABI_VERSION 1002"
.LASF432:
	.string	"_mSec(n) ((n)*1000UL)"
.LASF170:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF291:
	.string	"__SA_FBIT__ 15"
.LASF345:
	.string	"__BUILTIN_AVR_DELAY_CYCLES 1"
.LASF348:
	.string	"__BUILTIN_AVR_ABSHR 1"
.LASF6:
	.string	"__VERSION__ \"4.8.1\""
.LASF590:
	.string	"btIdx"
.LASF504:
	.string	"CS1_CLK_DIV1 CS1_0_3(1)"
.LASF428:
	.string	"H_TYPES_H_ "
.LASF233:
	.string	"__SACCUM_EPSILON__ 0x1P-7HK"
.LASF261:
	.string	"__LLACCUM_MIN__ (-0X1P15LLK-0X1P15LLK)"
.LASF59:
	.string	"__INT_FAST16_TYPE__ int"
.LASF144:
	.string	"__DBL_MAX_EXP__ 128"
.LASF570:
	.string	"W_TOV TOV1"
.LASF383:
	.string	"__BUILTIN_AVR_COUNTLSLLK 1"
.LASF502:
	.string	"CS1_0_3(n) (n)"
.LASF508:
	.string	"CS1_CLK_DIV16 CS1_0_3(5)"
.LASF411:
	.string	"__BUILTIN_AVR_ULLRBITS 1"
.LASF310:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 1"
.LASF336:
	.string	"__BUILTIN_AVR_NOP 1"
.LASF282:
	.string	"__UHQ_IBIT__ 0"
.LASF453:
	.string	"sts(mem,in) __asm__ __volatile__ (\"sts %0,%1\" : : \"i\" (&mem), \"r\" (in) : \"memory\" );"
.LASF475:
	.string	"SETBITS(s,bv,m) (((s) & ~(m)) | ((bv) & (m)))"
.LASF503:
	.string	"CS1_STOP CS1_0_3(0)"
.LASF50:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF131:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF166:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF485:
	.string	"COM1B1 BV_(5)"
.LASF216:
	.string	"__ULFRACT_MIN__ 0.0ULR"
.LASF126:
	.string	"__FLT_MANT_DIG__ 24"
.LASF176:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF490:
	.string	"PSR0 BV_(0)"
.LASF284:
	.string	"__USQ_IBIT__ 0"
.LASF511:
	.string	"CS1_CLK_DIV128 CS1_0_3(8)"
.LASF49:
	.string	"__UINT64_TYPE__ long long unsigned int"
.LASF547:
	.string	"PLLE BV_(1)"
.LASF464:
	.string	"SREG_C BV_(0)"
.LASF245:
	.string	"__UACCUM_IBIT__ 16"
.LASF164:
	.string	"__LDBL_DENORM_MIN__ 1.40129846e-45L"
.LASF529:
	.string	"TOV1 TOV(1)"
.LASF498:
	.string	"CTC1 BV_(7)"
.LASF371:
	.string	"__BUILTIN_AVR_ROUNDULLK 1"
.LASF235:
	.string	"__USACCUM_IBIT__ 8"
.LASF95:
	.string	"__UINT32_MAX__ 4294967295UL"
.LASF344:
	.string	"__BUILTIN_AVR_FMULSU 1"
.LASF443:
	.string	"CLK_CYCLE_FREQ_KHz (CLK_KHz/CLKPS_DIV)"
.LASF47:
	.string	"__UINT16_TYPE__ unsigned int"
.LASF199:
	.string	"__FRACT_FBIT__ 15"
.LASF419:
	.string	"__BUILTIN_AVR_ULLKBITS 1"
.LASF397:
	.string	"__BUILTIN_AVR_BITSK 1"
.LASF424:
	.string	"__INT24_MIN__ (-__INT24_MAX__-1)"
.LASF535:
	.string	"TIMSK0 TIMSK"
.LASF614:
	.string	"_ZN7ATTimerD2Ev"
.LASF239:
	.string	"__ACCUM_FBIT__ 15"
.LASF55:
	.string	"__UINT_LEAST16_TYPE__ unsigned int"
.LASF601:
	.string	"_ZN7ATTimer8baseTimeEv"
.LASF255:
	.string	"__ULACCUM_IBIT__ 32"
.LASF474:
	.string	"BV_(b) (1<<(b))"
.LASF219:
	.string	"__LLFRACT_FBIT__ 63"
.LASF522:
	.string	"TIFR0 TIFR"
.LASF507:
	.string	"CS1_CLK_DIV8 CS1_0_3(4)"
.LASF327:
	.string	"__AVR_ARCH__ 25"
.LASF299:
	.string	"__USA_FBIT__ 16"
.LASF457:
	.string	"REGMACROS_H "
.LASF487:
	.string	"FOC1B BV_(3)"
.LASF368:
	.string	"__BUILTIN_AVR_ROUNDUHK 1"
.LASF580:
	.string	"uint8_t"
.LASF468:
	.string	"SREG_S BV_(4)"
.LASF101:
	.string	"__INT_LEAST32_MAX__ 2147483647L"
.LASF517:
	.string	"CS1_CLK_DIV8192 CS1_0_3(0xE)"
.LASF172:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF209:
	.string	"__LFRACT_FBIT__ 31"
.LASF610:
	.string	"timer1_t"
.LASF15:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF598:
	.string	"getInstance"
.LASF533:
	.string	"TIMSK REGDECL(0x39)"
.LASF119:
	.string	"__UINT_FAST32_MAX__ 4294967295UL"
.LASF386:
	.string	"__BUILTIN_AVR_COUNTLSULK 1"
.LASF562:
	.string	"USI_OVF_VECT _VECTOR(14)"
.LASF249:
	.string	"__LACCUM_FBIT__ 31"
.LASF208:
	.string	"__UFRACT_EPSILON__ 0x1P-16UR"
.LASF316:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 1"
.LASF77:
	.string	"__WCHAR_MAX__ 32767"
.LASF243:
	.string	"__ACCUM_EPSILON__ 0x1P-15K"
.LASF285:
	.string	"__UDQ_FBIT__ 64"
.LASF334:
	.string	"__AVR_SFR_OFFSET__ 0x20"
.LASF523:
	.string	"OCF(c,n) BV_(3+(c)*2+(1-(n)))"
.LASF69:
	.string	"__DEPRECATED 1"
.LASF545:
	.string	"LSM BV_(7)"
.LASF349:
	.string	"__BUILTIN_AVR_ABSR 1"
.LASF287:
	.string	"__UTQ_FBIT__ 128"
.LASF90:
	.string	"__INT16_MAX__ 32767"
.LASF585:
	.string	"long long int"
.LASF24:
	.string	"__CHAR_BIT__ 8"
.LASF459:
	.string	"REGDECL_BPTR(r) (volatile uint8_t * volatile)((r)+((((int)r)<0x60)?0x20:0))"
.LASF263:
	.string	"__LLACCUM_EPSILON__ 0x1P-47LLK"
.LASF309:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 1"
.LASF415:
	.string	"__BUILTIN_AVR_LLKBITS 1"
.LASF155:
	.string	"__LDBL_DIG__ 6"
.LASF232:
	.string	"__SACCUM_MAX__ 0X7FFFP-7HK"
.LASF481:
	.string	"REGTIM85_H_ "
.LASF450:
	.string	"sei() __asm__ __volatile__ (\"sei\" ::: \"memory\")"
.LASF365:
	.string	"__BUILTIN_AVR_ROUNDK 1"
.LASF278:
	.string	"__TQ_IBIT__ 0"
.LASF297:
	.string	"__UHA_FBIT__ 8"
.LASF616:
	.string	"__vector_4"
.LASF73:
	.string	"__SHRT_MAX__ 32767"
.LASF451:
	.string	"nop() __asm__ __volatile__ (\"nop\" ::)"
.LASF488:
	.string	"FOC1A BV_(2)"
.LASF109:
	.string	"__UINT_LEAST32_MAX__ 4294967295UL"
.LASF426:
	.string	"__ELF__ 1"
.LASF608:
	.string	"bool"
.LASF400:
	.string	"__BUILTIN_AVR_BITSUHK 1"
.LASF100:
	.string	"__INT16_C(c) c"
.LASF320:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF402:
	.string	"__BUILTIN_AVR_BITSULK 1"
.LASF204:
	.string	"__UFRACT_FBIT__ 16"
.LASF174:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF568:
	.string	"W_TIMSK TIMSK1"
.LASF9:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF531:
	.string	"TOV0_AT 256UL"
.LASF573:
	.string	"W_ISR TIM1_OVF_VECT"
.LASF362:
	.string	"__BUILTIN_AVR_ROUNDULR 1"
.LASF408:
	.string	"__BUILTIN_AVR_UHRBITS 1"
.LASF296:
	.string	"__TA_IBIT__ 16"
.LASF0:
	.string	"__STDC__ 1"
.LASF268:
	.string	"__ULLACCUM_EPSILON__ 0x1P-48ULLK"
.LASF108:
	.string	"__UINT16_C(c) c ## U"
.LASF17:
	.string	"__SIZEOF_LONG__ 4"
.LASF384:
	.string	"__BUILTIN_AVR_COUNTLSUHK 1"
.LASF307:
	.string	"__GNUC_GNU_INLINE__ 1"
.LASF356:
	.string	"__BUILTIN_AVR_ROUNDHR 1"
.LASF12:
	.string	"__ATOMIC_CONSUME 1"
.LASF574:
	.string	"CNT_ (W_TOV_AT - 0x10UL)"
.LASF466:
	.string	"SREG_N BV_(2)"
.LASF381:
	.string	"__BUILTIN_AVR_COUNTLSK 1"
.LASF214:
	.string	"__ULFRACT_FBIT__ 32"
.LASF549:
	.string	"TCNT1 REGDECL(0x2F)"
.LASF21:
	.string	"__SIZEOF_DOUBLE__ 4"
.LASF60:
	.string	"__INT_FAST32_TYPE__ long int"
.LASF241:
	.string	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)"
.LASF537:
	.string	"OCIE1A OCIE(1,0)"
.LASF444:
	.string	"TICKf_ns (CLKPS_DIV*1000000.0/CLK_KHz)"
.LASF593:
	.string	"~ATTimer"
.LASF5:
	.string	"__GNUC_PATCHLEVEL__ 1"
.LASF398:
	.string	"__BUILTIN_AVR_BITSLK 1"
.LASF622:
	.string	"/home/sergio/workspace-a/mblk84/sblk85"
.LASF202:
	.string	"__FRACT_MAX__ 0X7FFFP-15R"
.LASF45:
	.string	"__INT64_TYPE__ long long int"
.LASF254:
	.string	"__ULACCUM_FBIT__ 32"
.LASF206:
	.string	"__UFRACT_MIN__ 0.0UR"
.LASF325:
	.string	"__AVR 1"
.LASF184:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF329:
	.string	"__AVR_HAVE_MOVW__ 1"
.LASF540:
	.string	"OCIE0B OCIE(0,1)"
.LASF379:
	.string	"__BUILTIN_AVR_COUNTLSULLR 1"
.LASF200:
	.string	"__FRACT_IBIT__ 0"
.LASF252:
	.string	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK"
.LASF484:
	.string	"PWM1B BV_(6)"
.LASF58:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF65:
	.string	"__UINT_FAST64_TYPE__ long long unsigned int"
.LASF134:
	.string	"__FLT_MIN__ 1.17549435e-38F"
.LASF107:
	.string	"__UINT_LEAST16_MAX__ 65535U"
.LASF322:
	.string	"__SIZEOF_WCHAR_T__ 2"
.LASF265:
	.string	"__ULLACCUM_IBIT__ 16"
.LASF478:
	.string	"CLKPS(n) (n)"
.LASF121:
	.string	"__INTPTR_MAX__ 32767"
.LASF88:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF30:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF242:
	.string	"__ACCUM_MAX__ 0X7FFFFFFFP-15K"
.LASF205:
	.string	"__UFRACT_IBIT__ 0"
.LASF168:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF624:
	.string	"_ZN7ATTimer8timerISREv"
.LASF157:
	.string	"__LDBL_MIN_10_EXP__ (-37)"
.LASF161:
	.string	"__LDBL_MAX__ 3.40282347e+38L"
.LASF223:
	.string	"__LLFRACT_EPSILON__ 0x1P-63LLR"
.LASF355:
	.string	"__BUILTIN_AVR_ABSLLK 1"
.LASF514:
	.string	"CS1_CLK_DIV1024 CS1_0_3(0xB)"
.LASF189:
	.string	"__SFRACT_FBIT__ 7"
.LASF40:
	.string	"__CHAR32_TYPE__ long unsigned int"
.LASF272:
	.string	"__HQ_IBIT__ 0"
.LASF581:
	.string	"uint16_t"
.LASF509:
	.string	"CS1_CLK_DIV32 CS1_0_3(6)"
.LASF56:
	.string	"__UINT_LEAST32_TYPE__ long unsigned int"
.LASF275:
	.string	"__DQ_FBIT__ 63"
.LASF298:
	.string	"__UHA_IBIT__ 8"
.LASF611:
	.string	"this"
.LASF281:
	.string	"__UHQ_FBIT__ 16"
.LASF477:
	.string	"CLKPCE BV_(7)"
.LASF258:
	.string	"__ULACCUM_EPSILON__ 0x1P-32ULK"
.LASF93:
	.string	"__UINT8_MAX__ 255"
.LASF539:
	.string	"OCIE0A OCIE(0,0)"
.LASF313:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 1"
.LASF440:
	.string	"RCLKPS(d) ((d<=1)?1UL:(d<=2)?2UL: (d<=4+1)?4UL:(d<=8+3)?8UL: (d<=16+7)?16UL:(d<=32+15)?32UL: (d<=64+31)?64UL:(d<=128+63)?128UL: (d<=256+127)?256UL:256UL)"
.LASF505:
	.string	"CS1_CLK_DIV2 CS1_0_3(2)"
.LASF456:
	.string	"REGGENERAL_H "
.LASF28:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF448:
	.string	"FNASM_H_ "
.LASF274:
	.string	"__SQ_IBIT__ 0"
.LASF501:
	.string	"COM1A0 BV_(4)"
.LASF150:
	.string	"__DBL_DENORM_MIN__ double(1.40129846e-45L)"
.LASF51:
	.string	"__INT_LEAST16_TYPE__ int"
.LASF492:
	.string	"TCCR0B REGDECL(0x33)"
.LASF187:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF486:
	.string	"COM1B0 BV_(4)"
.LASF279:
	.string	"__UQQ_FBIT__ 8"
.LASF587:
	.string	"m_startTime"
.LASF74:
	.string	"__INT_MAX__ 32767"
.LASF331:
	.string	"__AVR_2_BYTE_PC__ 1"
.LASF429:
	.string	"NULL __null"
.LASF247:
	.string	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK"
.LASF332:
	.string	"__AVR_HAVE_16BIT_SP__ 1"
.LASF177:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF330:
	.string	"__AVR_HAVE_LPMX__ 1"
.LASF588:
	.string	"myinstance"
.LASF44:
	.string	"__INT32_TYPE__ long int"
.LASF339:
	.string	"__BUILTIN_AVR_WDR 1"
.LASF583:
	.string	"long int"
.LASF550:
	.string	"OCR1A REGDECL(0x2E)"
.LASF181:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF273:
	.string	"__SQ_FBIT__ 31"
.LASF80:
	.string	"__WINT_MIN__ (-__WINT_MAX__ - 1)"
.LASF211:
	.string	"__LFRACT_MIN__ (-0.5LR-0.5LR)"
.LASF32:
	.string	"__GNUG__ 4"
.LASF338:
	.string	"__BUILTIN_AVR_CLI 1"
.LASF452:
	.string	"reti() __asm__ __volatile__ (\"reti\" ::)"
.LASF87:
	.string	"__SIG_ATOMIC_MAX__ 127"
.LASF62:
	.string	"__UINT_FAST8_TYPE__ unsigned char"
.LASF460:
	.string	"REGDECLB(r) (*REGDECL_BPTR(r))"
.LASF167:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF42:
	.string	"__INT8_TYPE__ signed char"
.LASF306:
	.string	"__USER_LABEL_PREFIX__ "
.LASF420:
	.string	"__BUILTIN_AVR_ABSFX 1"
.LASF427:
	.string	"CIRCBUFF_POW2DIM 1"
.LASF353:
	.string	"__BUILTIN_AVR_ABSK 1"
.LASF277:
	.string	"__TQ_FBIT__ 127"
.LASF528:
	.string	"TOV(n) BV_((n)+1)"
.LASF262:
	.string	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-47LLK"
.LASF496:
	.string	"TCCR1 REGDECL(0x30)"
.LASF586:
	.string	"uint64_t"
.LASF198:
	.string	"__USFRACT_EPSILON__ 0x1P-8UHR"
.LASF333:
	.string	"__AVR_HAVE_SPH__ 1"
.LASF541:
	.string	"TOIE(n) BV_((n)+1)"
.LASF335:
	.string	"__WITH_AVRLIBC__ 1"
.LASF92:
	.string	"__INT64_MAX__ 9223372036854775807LL"
.LASF194:
	.string	"__USFRACT_FBIT__ 8"
.LASF104:
	.string	"__INT64_C(c) c ## LL"
.LASF271:
	.string	"__HQ_FBIT__ 15"
.LASF447:
	.string	"___tiny85"
.LASF534:
	.string	"TIMSK1 TIMSK"
.LASF190:
	.string	"__SFRACT_IBIT__ 0"
.LASF606:
	.string	"reset"
.LASF18:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF280:
	.string	"__UQQ_IBIT__ 0"
.LASF46:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF347:
	.string	"__BUILTIN_AVR_FLASH_SEGMENT 1"
.LASF500:
	.string	"COM1A1 BV_(5)"
.LASF438:
	.string	"__AVR_Selected"
.LASF158:
	.string	"__LDBL_MAX_EXP__ 128"
.LASF476:
	.string	"CLKPR REGDECL(0x26)"
.LASF615:
	.string	"remainder"
.LASF160:
	.string	"__DECIMAL_DIG__ 9"
.LASF412:
	.string	"__BUILTIN_AVR_HKBITS 1"
.LASF48:
	.string	"__UINT32_TYPE__ long unsigned int"
.LASF515:
	.string	"CS1_CLK_DIV2048 CS1_0_3(0xC)"
.LASF506:
	.string	"CS1_CLK_DIV4 CS1_0_3(3)"
.LASF31:
	.string	"__SIZEOF_POINTER__ 2"
.LASF414:
	.string	"__BUILTIN_AVR_LKBITS 1"
.LASF370:
	.string	"__BUILTIN_AVR_ROUNDULK 1"
.LASF532:
	.string	"TOV1_AT 256UL"
.LASF473:
	.string	"BITS_H_ "
.LASF612:
	.string	"__in_chrg"
.LASF217:
	.string	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR"
.LASF575:
	.string	"CNT_"
.LASF81:
	.string	"__PTRDIFF_MAX__ 32767"
.LASF607:
	.string	"_ZN7ATTimer5resetEv"
.LASF591:
	.string	"m_baseTime"
.LASF352:
	.string	"__BUILTIN_AVR_ABSHK 1"
.LASF364:
	.string	"__BUILTIN_AVR_ROUNDHK 1"
.LASF231:
	.string	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)"
.LASF319:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 1"
.LASF405:
	.string	"__BUILTIN_AVR_RBITS 1"
.LASF112:
	.string	"__UINT64_C(c) c ## ULL"
.LASF604:
	.string	"uTick"
.LASF253:
	.string	"__LACCUM_EPSILON__ 0x1P-31LK"
.LASF43:
	.string	"__INT16_TYPE__ int"
.LASF193:
	.string	"__SFRACT_EPSILON__ 0x1P-7HR"
.LASF391:
	.string	"__BUILTIN_AVR_BITSLLR 1"
.LASF609:
	.string	"sizetype"
.LASF283:
	.string	"__USQ_FBIT__ 32"
.LASF290:
	.string	"__HA_IBIT__ 8"
.LASF577:
	.string	"long unsigned int"
.LASF555:
	.string	"__INTR_ATTRS used, externally_visible"
.LASF312:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 1"
.LASF350:
	.string	"__BUILTIN_AVR_ABSLR 1"
.LASF267:
	.string	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-48ULLK"
.LASF136:
	.string	"__FLT_DENORM_MIN__ 1.40129846e-45F"
.LASF380:
	.string	"__BUILTIN_AVR_COUNTLSHK 1"
.LASF84:
	.string	"__INTMAX_C(c) c ## LL"
.LASF422:
	.string	"__BUILTIN_AVR_COUNTLSFX 1"
.LASF85:
	.string	"__UINTMAX_MAX__ 18446744073709551615ULL"
.LASF203:
	.string	"__FRACT_EPSILON__ 0x1P-15R"
.LASF2:
	.string	"__STDC_HOSTED__ 1"
.LASF83:
	.string	"__INTMAX_MAX__ 9223372036854775807LL"
.LASF94:
	.string	"__UINT16_MAX__ 65535U"
.LASF387:
	.string	"__BUILTIN_AVR_COUNTLSULLK 1"
.LASF359:
	.string	"__BUILTIN_AVR_ROUNDLLR 1"
.LASF482:
	.string	"GTCCR REGDECL(0x2C)"
.LASF416:
	.string	"__BUILTIN_AVR_UHKBITS 1"
.LASF116:
	.string	"__INT_FAST64_MAX__ 9223372036854775807LL"
.LASF82:
	.string	"__SIZE_MAX__ 65535U"
.LASF163:
	.string	"__LDBL_EPSILON__ 1.19209290e-7L"
.LASF423:
	.string	"__INT24_MAX__ 8388607L"
.LASF472:
	.string	"REGTIMER_H_ "
.LASF418:
	.string	"__BUILTIN_AVR_ULKBITS 1"
.LASF317:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 1"
.LASF162:
	.string	"__LDBL_MIN__ 1.17549435e-38L"
.LASF130:
	.string	"__FLT_MAX_EXP__ 128"
.LASF11:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF579:
	.string	"unsigned char"
.LASF169:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF38:
	.string	"__UINTMAX_TYPE__ long long unsigned int"
.LASF489:
	.string	"PSR1 BV_(1)"
.LASF401:
	.string	"__BUILTIN_AVR_BITSUK 1"
.LASF66:
	.string	"__INTPTR_TYPE__ int"
.LASF124:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF236:
	.string	"__USACCUM_MIN__ 0.0UHK"
.LASF195:
	.string	"__USFRACT_IBIT__ 0"
.LASF341:
	.string	"__BUILTIN_AVR_SWAP 1"
.LASF603:
	.string	"_ZN7ATTimer4timeEv"
.LASF358:
	.string	"__BUILTIN_AVR_ROUNDLR 1"
.LASF618:
	.string	"_ZN7ATTimer5btIdxE"
.LASF145:
	.string	"__DBL_MAX_10_EXP__ 38"
.LASF114:
	.string	"__INT_FAST16_MAX__ 32767"
.LASF120:
	.string	"__UINT_FAST64_MAX__ 18446744073709551615ULL"
.LASF33:
	.string	"__SIZE_TYPE__ unsigned int"
.LASF542:
	.string	"TOIE1 TOIE(1)"
.LASF619:
	.string	"_ZN7ATTimer10m_baseTimeE"
.LASF409:
	.string	"__BUILTIN_AVR_URBITS 1"
.LASF617:
	.string	"_ZN7ATTimer8instanceE"
.LASF75:
	.string	"__LONG_MAX__ 2147483647L"
.LASF314:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 1"
.LASF566:
	.string	"W_TCNT TCNT1"
.LASF295:
	.string	"__TA_FBIT__ 47"
.LASF395:
	.string	"__BUILTIN_AVR_BITSULLR 1"
.LASF374:
	.string	"__BUILTIN_AVR_COUNTLSLR 1"
.LASF129:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF465:
	.string	"SREG_Z BV_(1)"
.LASF152:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF546:
	.string	"PCKE BV_(2)"
.LASF403:
	.string	"__BUILTIN_AVR_BITSULLK 1"
.LASF597:
	.string	"_ZN7ATTimer6udelayEm"
.LASF449:
	.string	"cli() __asm__ __volatile__ (\"cli\" ::: \"memory\")"
.LASF16:
	.string	"__SIZEOF_INT__ 2"
.LASF139:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF605:
	.string	"_ZN7ATTimer5uTickEv"
.LASF146:
	.string	"__DBL_DECIMAL_DIG__ 9"
.LASF37:
	.string	"__INTMAX_TYPE__ long long int"
.LASF467:
	.string	"SREG_V BV_(3)"
.LASF592:
	.string	"ATTimer"
.LASF140:
	.string	"__DBL_MANT_DIG__ 24"
.LASF71:
	.string	"__USING_SJLJ_EXCEPTIONS__ 1"
.LASF479:
	.string	"SELCLKPS(d) ((d<=1)?CLKPS(0):(d<=2)?CLKPS(1): (d<=4+1)?CLKPS(2):(d<=8+3)?CLKPS(3): (d<=16+7)?CLKPS(4):(d<=32+15)?CLKPS(5): (d<=64+31)?CLKPS(6):(d<=128+63)?CLKPS(7): (d<=256+127)?CLKPS(8):CLKPS(8))"
.LASF436:
	.string	"__AVR_Selected "
.LASF578:
	.string	"signed char"
.LASF343:
	.string	"__BUILTIN_AVR_FMULS 1"
.LASF497:
	.string	"TCCR1B TCCR1"
.LASF620:
	.string	"GNU C++ 4.8.1 -mmcu=attiny85 -g3 -Os -ansi -ffunction-sections -fdata-sections -fno-threadsafe-statics -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF594:
	.string	"begin"
.LASF569:
	.string	"W_TCCR TCCR1B"
.LASF269:
	.string	"__QQ_FBIT__ 7"
.LASF149:
	.string	"__DBL_EPSILON__ double(1.19209290e-7L)"
.LASF613:
	.string	"_ZN7ATTimerC2Ev"
.LASF410:
	.string	"__BUILTIN_AVR_ULRBITS 1"
.LASF625:
	.string	"usec"
.LASF560:
	.string	"TIM1_OVF_VECT _VECTOR(4)"
.LASF141:
	.string	"__DBL_DIG__ 6"
.LASF128:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF372:
	.string	"__BUILTIN_AVR_COUNTLSHR 1"
.LASF186:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF264:
	.string	"__ULLACCUM_FBIT__ 48"
.LASF289:
	.string	"__HA_FBIT__ 7"
.LASF406:
	.string	"__BUILTIN_AVR_LRBITS 1"
.LASF102:
	.string	"__INT32_C(c) c ## L"
.LASF434:
	.string	"ATTIMER_H_ "
.LASF461:
	.string	"REGDECLW(r) (*REGDECL_WPTR(r))"
.LASF308:
	.string	"__STRICT_ANSI__ 1"
.LASF446:
	.string	"TICK_TO_1_us ((unsigned long)(1000.0/TICKf_ns))"
.LASF599:
	.string	"baseTime"
.LASF543:
	.string	"TOIE0 TOIE(0)"
.LASF13:
	.string	"__OPTIMIZE_SIZE__ 1"
.LASF596:
	.string	"_ZN7ATTimer5beginEv"
.LASF340:
	.string	"__BUILTIN_AVR_SLEEP 1"
.LASF470:
	.string	"SREG_T BV_(6)"
.LASF513:
	.string	"CS1_CLK_DIV512 CS1_0_3(0xA)"
.LASF212:
	.string	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR"
.LASF425:
	.string	"__UINT24_MAX__ 16777215UL"
.LASF399:
	.string	"__BUILTIN_AVR_BITSLLK 1"
.LASF342:
	.string	"__BUILTIN_AVR_FMUL 1"
.LASF303:
	.string	"__UTA_FBIT__ 48"
.LASF147:
	.string	"__DBL_MAX__ double(3.40282347e+38L)"
.LASF178:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF530:
	.string	"TOV0 TOV(0)"
.LASF321:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF143:
	.string	"__DBL_MIN_10_EXP__ (-37)"
.LASF526:
	.string	"OCF0A OCF(0,0)"
.LASF221:
	.string	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)"
.LASF561:
	.string	"TIM0_OVF_VECT _VECTOR(5)"
.LASF520:
	.string	"TIFR REGDECL(0x38)"
.LASF228:
	.string	"__ULLFRACT_EPSILON__ 0x1P-64ULLR"
.LASF260:
	.string	"__LLACCUM_IBIT__ 16"
.LASF156:
	.string	"__LDBL_MIN_EXP__ (-125)"
.LASF132:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF79:
	.string	"__WINT_MAX__ 32767"
.LASF175:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF137:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF244:
	.string	"__UACCUM_FBIT__ 16"
	.ident	"GCC: (GNU) 4.8.1"
.global __do_clear_bss
