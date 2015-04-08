	.file	"fnclib.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._memcpy,"ax",@progbits
.global	_memcpy
	.type	_memcpy, @function
_memcpy:
.LFB0:
	.file 1 "../fnclib.c"
	.loc 1 24 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL0:
.L3:
	.loc 1 24 0 discriminator 1
	subi r20,1
	sbc r21,__zero_reg__
.LVL1:
	movw r30,r22
	add r30,r20
	adc r31,r21
	ld r18,Z
	movw r30,r24
	add r30,r20
	adc r31,r21
	st Z,r18
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	brne .L3
/* epilogue start */
	.loc 1 24 0 is_stmt 0
	ret
	.cfi_endproc
.LFE0:
	.size	_memcpy, .-_memcpy
	.section	.text._memset,"ax",@progbits
.global	_memset
	.type	_memset, @function
_memset:
.LFB1:
	.loc 1 26 0 is_stmt 1
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL2:
.L7:
	.loc 1 26 0 discriminator 1
	subi r20,1
	sbc r21,__zero_reg__
.LVL3:
	movw r30,r24
	add r30,r20
	adc r31,r21
	st Z,r22
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	brne .L7
/* epilogue start */
	.loc 1 26 0 is_stmt 0
	ret
	.cfi_endproc
.LFE1:
	.size	_memset, .-_memset
	.section	.text._strcpy,"ax",@progbits
.global	_strcpy
	.type	_strcpy, @function
_strcpy:
.LFB2:
	.loc 1 29 0 is_stmt 1
	.cfi_startproc
.LVL4:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r22
.LVL5:
	movw r30,r24
.LVL6:
.L10:
	.loc 1 32 0 discriminator 1
	ld r18,X+
.LVL7:
	st Z+,r18
.LVL8:
	.loc 1 34 0 discriminator 1
	ld r18,X
	cpse r18,__zero_reg__
	rjmp .L10
/* epilogue start */
	.loc 1 37 0
	ret
	.cfi_endproc
.LFE2:
	.size	_strcpy, .-_strcpy
	.section	.text._strlen,"ax",@progbits
.global	_strlen
	.type	_strlen, @function
_strlen:
.LFB3:
	.loc 1 40 0
	.cfi_startproc
.LVL9:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 42 0
	movw r30,r24
.LVL10:
.L12:
	movw r18,r30
	sub r18,r24
	sbc r19,r25
.LVL11:
	.loc 1 42 0 is_stmt 0 discriminator 1
	ld r20,Z+
	cpse r20,__zero_reg__
	rjmp .L12
	.loc 1 45 0 is_stmt 1
	movw r24,r18
.LVL12:
	ret
	.cfi_endproc
.LFE3:
	.size	_strlen, .-_strlen
	.section	.text._strchr,"ax",@progbits
.global	_strchr
	.type	_strchr, @function
_strchr:
.LFB4:
	.loc 1 48 0
	.cfi_startproc
.LVL13:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
.L15:
	movw r24,r30
.LVL14:
	.loc 1 49 0 discriminator 1
	ld r18,Z+
	tst r18
	breq .L18
	.loc 1 49 0 is_stmt 0 discriminator 2
	cpse r18,r22
	rjmp .L15
	ret
.L18:
	.loc 1 52 0 is_stmt 1
	ldi r24,0
.LVL15:
	ldi r25,0
	.loc 1 53 0
	ret
	.cfi_endproc
.LFE4:
	.size	_strchr, .-_strchr
	.section	.text._strcat,"ax",@progbits
.global	_strcat
	.type	_strcat, @function
_strcat:
.LFB5:
	.loc 1 56 0
	.cfi_startproc
.LVL16:
	push r16
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
	rcall .
.LCFI4:
	.cfi_def_cfa_offset 8
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI5:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 2 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r16,r24
	.loc 1 57 0
	std Y+1,r22
	std Y+2,r23
	rcall _strlen
.LVL17:
	ldd r22,Y+1
	ldd r23,Y+2
	add r24,r16
	adc r25,r17
/* epilogue start */
	.loc 1 58 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
.LVL18:
	.loc 1 57 0
	rjmp _strcpy
.LVL19:
	.cfi_endproc
.LFE5:
	.size	_strcat, .-_strcat
.global	__muldi3
	.section	.text._strntoll,"ax",@progbits
.global	_strntoll
	.type	_strntoll, @function
_strntoll:
.LFB6:
	.loc 1 61 0
	.cfi_startproc
.LVL20:
	push r2
.LCFI6:
	.cfi_def_cfa_offset 3
	.cfi_offset 2, -2
	push r3
.LCFI7:
	.cfi_def_cfa_offset 4
	.cfi_offset 3, -3
	push r4
.LCFI8:
	.cfi_def_cfa_offset 5
	.cfi_offset 4, -4
	push r5
.LCFI9:
	.cfi_def_cfa_offset 6
	.cfi_offset 5, -5
	push r6
.LCFI10:
	.cfi_def_cfa_offset 7
	.cfi_offset 6, -6
	push r7
.LCFI11:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -7
	push r8
.LCFI12:
	.cfi_def_cfa_offset 9
	.cfi_offset 8, -8
	push r9
.LCFI13:
	.cfi_def_cfa_offset 10
	.cfi_offset 9, -9
	push r10
.LCFI14:
	.cfi_def_cfa_offset 11
	.cfi_offset 10, -10
	push r11
.LCFI15:
	.cfi_def_cfa_offset 12
	.cfi_offset 11, -11
	push r12
.LCFI16:
	.cfi_def_cfa_offset 13
	.cfi_offset 12, -12
	push r13
.LCFI17:
	.cfi_def_cfa_offset 14
	.cfi_offset 13, -13
	push r14
.LCFI18:
	.cfi_def_cfa_offset 15
	.cfi_offset 14, -14
	push r15
.LCFI19:
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -15
	push r16
.LCFI20:
	.cfi_def_cfa_offset 17
	.cfi_offset 16, -16
	push r17
.LCFI21:
	.cfi_def_cfa_offset 18
	.cfi_offset 17, -17
	push r28
.LCFI22:
	.cfi_def_cfa_offset 19
	.cfi_offset 28, -18
	push r29
.LCFI23:
	.cfi_def_cfa_offset 20
	.cfi_offset 29, -19
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI24:
	.cfi_def_cfa_register 28
	sbiw r28,28
.LCFI25:
	.cfi_def_cfa_offset 48
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 28 */
/* stack size = 46 */
.L__stack_usage = 46
	movw r8,r24
	movw r2,r22
	movw r16,r20
.LVL21:
	.loc 1 66 0
	sbrs r23,7
	rjmp .L21
	.loc 1 67 0
	rcall _strlen
.LVL22:
	movw r2,r24
.LVL23:
.L21:
	.loc 1 70 0
	cp r2,__zero_reg__
	cpc r3,__zero_reg__
	brne .+2
	rjmp .L48
	movw r30,r8
	ldi r24,0
	ldi r25,0
.LVL24:
.L23:
	.loc 1 73 0 discriminator 1
	ld r18,Z+
	cpi r18,lo8(33)
	brlt .L24
.L27:
	.loc 1 77 0
	cp r24,r2
	cpc r25,r3
	brne .L61
	rjmp .L48
.L24:
	.loc 1 73 0 discriminator 2
	cp r24,r2
	cpc r25,r3
	brge .L27
	.loc 1 74 0
	adiw r24,1
.LVL25:
	rjmp .L23
.L61:
	.loc 1 80 0
	cpi r18,lo8(43)
	breq .L29
	cpi r18,lo8(45)
	brne .L62
.LVL26:
	.loc 1 81 0
	adiw r24,1
.LVL27:
	ldi r18,lo8(-1)
	std Y+18,r18
	ldi r19,lo8(-1)
	std Y+19,r19
	ldi r20,lo8(-1)
	std Y+20,r20
	ldi r21,lo8(-1)
	std Y+21,r21
	ldi r22,lo8(-1)
	std Y+22,r22
	ldi r23,lo8(-1)
	std Y+23,r23
	ldi r26,lo8(-1)
	std Y+24,r26
	ldi r27,lo8(-1)
	std Y+25,r27
	rjmp .L31
.LVL28:
.L29:
	.loc 1 82 0
	adiw r24,1
.LVL29:
	.loc 1 63 0
	ldi r30,lo8(1)
	std Y+18,r30
	std Y+19,__zero_reg__
	std Y+20,__zero_reg__
	std Y+21,__zero_reg__
	std Y+22,__zero_reg__
	std Y+23,__zero_reg__
	std Y+24,__zero_reg__
	std Y+25,__zero_reg__
.LVL30:
.L31:
	.loc 1 86 0
	cp r24,r2
	cpc r25,r3
	brne .L28
	rjmp .L48
.LVL31:
.L62:
	.loc 1 63 0
	ldi r31,lo8(1)
	std Y+18,r31
	std Y+19,__zero_reg__
	std Y+20,__zero_reg__
	std Y+21,__zero_reg__
	std Y+22,__zero_reg__
	std Y+23,__zero_reg__
	std Y+24,__zero_reg__
	std Y+25,__zero_reg__
.LVL32:
.L28:
	.loc 1 89 0
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	brne .L32
	.loc 1 90 0
	movw r30,r8
	add r30,r24
	adc r31,r25
	ld r18,Z
	cpi r18,lo8(48)
	breq .L33
	brge .L34
	cpi r18,lo8(42)
	brne .L49
	rjmp .L35
.L34:
	cpi r18,lo8(88)
	breq .L35
	cpi r18,lo8(120)
	brne .L49
	rjmp .L35
.L33:
.LVL33:
	.loc 1 92 0
	movw r18,r24
	subi r18,-1
	sbci r19,-1
.LVL34:
	.loc 1 93 0
	movw r30,r8
	add r30,r18
	adc r31,r19
	ld r20,Z
	cpi r20,lo8(120)
	brne .L50
.LVL35:
	.loc 1 94 0
	adiw r24,2
.LVL36:
	ldi r16,lo8(16)
	ldi r17,0
	rjmp .L32
.LVL37:
.L35:
	.loc 1 99 0
	ldd r18,Z+1
	clr r19
	sbrc r18,7
	com r19
	movw r16,r18
.LVL38:
	subi r16,48
	sbc r17,__zero_reg__
.LVL39:
	.loc 1 100 0
	cpi r16,10
	cpc r17,__zero_reg__
	brlo .L36
.LVL40:
	.loc 1 101 0
	subi r16,7
	sbc r17,__zero_reg__
	rjmp .L38
.LVL41:
.L36:
	.loc 1 102 0
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	brne .L38
.LVL42:
	.loc 1 103 0
	ldi r16,lo8(10)
	ldi r17,0
.LVL43:
.L38:
	.loc 1 104 0
	adiw r24,2
.LVL44:
	.loc 1 105 0
	rjmp .L32
.LVL45:
.L49:
	.loc 1 107 0
	ldi r16,lo8(10)
	ldi r17,0
.LVL46:
	rjmp .L32
.LVL47:
.L50:
	.loc 1 92 0
	movw r24,r18
	ldi r16,lo8(8)
	ldi r17,0
.LVL48:
.L32:
	movw r18,r8
	add r18,r24
	adc r19,r25
	std Y+12,r19
	std Y+11,r18
	.loc 1 107 0 discriminator 1
	ldi r30,0
	ldi r31,0
	std Y+26,__zero_reg__
	std Y+13,__zero_reg__
	std Y+14,__zero_reg__
	std Y+15,__zero_reg__
	std Y+16,__zero_reg__
	std Y+17,__zero_reg__
	.loc 1 125 0 discriminator 1
	movw r20,r16
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	movw r26,r24
.LVL49:
	std Y+3,r16
	std Y+4,r21
	std Y+5,r22
	std Y+6,r23
	std Y+7,r24
	std Y+8,r25
	std Y+9,r26
	std Y+10,r27
.LVL50:
.L39:
	ldd r24,Y+11
	ldd r25,Y+12
	sub r24,r8
	sbc r25,r9
	.loc 1 112 0 discriminator 1
	cp r24,r2
	cpc r25,r3
	brge .L43
.LVL51:
	.loc 1 113 0
	ldd r26,Y+11
	ldd r27,Y+12
	ld r16,X+
	std Y+12,r27
	std Y+11,r26
.LVL52:
	mov r17,r16
	lsl r17
	sbc r17,r17
	mov r10,r17
	mov r11,r17
	mov r12,r17
	mov r13,r17
	mov r14,r17
	mov r15,r17
.LVL53:
	.loc 1 114 0
	movw r18,r16
	mov r20,r17
	mov r21,r17
	mov r22,r17
	mov r23,r17
	mov r24,r17
	mov r25,r17
	ldi r26,lo8(47)
.LVL54:
	rcall __cmpdi2_s8
	breq .+2
	brsh .L40
.LVL55:
.L43:
	.loc 1 130 0
	movw r10,r30
	ldd r12,Y+26
	ldd r13,Y+13
	ldd r14,Y+14
	ldd r15,Y+15
	ldd r16,Y+16
	ldd r17,Y+17
	ldd r18,Y+18
	ldd r19,Y+19
	ldd r20,Y+20
	ldd r21,Y+21
	ldd r22,Y+22
	ldd r23,Y+23
	ldd r24,Y+24
	ldd r25,Y+25
	rcall __muldi3
.LVL56:
	rjmp .L22
.LVL57:
.L40:
	.loc 1 116 0
	movw r18,r16
	mov r20,r17
	mov r21,r17
	mov r22,r17
	mov r23,r17
	mov r24,r17
	mov r25,r17
	ldi r26,lo8(-48)
	rcall __adddi3_s8
	movw r4,r18
	movw r6,r20
	std Y+1,r22
	std Y+2,r23
	std Y+28,r24
	std Y+27,r25
	ldi r26,lo8(9)
	rcall __cmpdi2_s8
	breq .L41
	brlo .L41
	.loc 1 119 0
	movw r18,r16
	mov r20,r17
	mov r21,r17
	mov r22,r17
	mov r23,r17
	mov r24,r17
	mov r25,r17
	ldi r26,lo8(90)
	rcall __cmpdi2_s8
	breq .L42
	brlo .L42
	.loc 1 120 0
	ldi r26,lo8(-32)
	rcall __adddi3_s8
	movw r16,r18
.LVL58:
	movw r10,r20
.LVL59:
	movw r12,r22
	movw r14,r24
.LVL60:
.L42:
	.loc 1 121 0
	movw r18,r16
	movw r20,r10
	movw r22,r12
	movw r24,r14
	ldi r26,lo8(-55)
	rcall __adddi3_s8
	movw r4,r18
	movw r6,r20
	std Y+1,r22
	std Y+2,r23
	std Y+28,r24
	std Y+27,r25
.LVL61:
	.loc 1 122 0
	ldi r26,lo8(9)
	rcall __cmpdi2_s8
	breq .+2
	brsh .+2
	rjmp .L43
.LVL62:
.L41:
	.loc 1 125 0
	movw r18,r4
	movw r20,r6
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+28
	ldd r25,Y+27
	ldd r10,Y+3
	ldd r11,Y+4
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	ldi r16,0
	ldi r17,0
	rcall __cmpdi2
	brlo .+2
	rjmp .L43
	.loc 1 127 0
	movw r18,r30
	ldd r20,Y+26
	ldd r21,Y+13
	ldd r22,Y+14
	ldd r23,Y+15
	ldd r24,Y+16
	ldd r25,Y+17
	rcall __muldi3
.LVL63:
	movw r10,r18
	movw r12,r20
	movw r14,r22
	movw r16,r24
	movw r18,r4
	movw r20,r6
	ldd r22,Y+1
	ldd r23,Y+2
	ldd r24,Y+28
	ldd r25,Y+27
	rcall __adddi3
	movw r30,r18
	std Y+26,r20
	std Y+13,r21
	std Y+14,r22
	std Y+15,r23
	std Y+16,r24
	std Y+17,r25
.LVL64:
	rjmp .L39
.LVL65:
.L48:
	.loc 1 71 0
	ldi r18,0
	ldi r19,0
	ldi r20,0
	ldi r21,0
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,0
.LVL66:
.L22:
/* epilogue start */
	.loc 1 131 0
	adiw r28,28
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
.LVL67:
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
.LVL68:
	ret
	.cfi_endproc
.LFE6:
	.size	_strntoll, .-_strntoll
	.text
.Letext0:
	.file 2 "../include/h_types.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2ff
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF460
	.byte	0x1
	.long	.LASF461
	.long	.LASF462
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF437
	.uleb128 0x3
	.long	.LASF439
	.byte	0x2
	.byte	0x1d
	.long	0x3f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF438
	.uleb128 0x3
	.long	.LASF440
	.byte	0x2
	.byte	0x1e
	.long	0x51
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF441
	.byte	0x2
	.byte	0x1f
	.long	0x63
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF442
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF443
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF444
	.uleb128 0x3
	.long	.LASF445
	.byte	0x2
	.byte	0x22
	.long	0x83
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF446
	.uleb128 0x3
	.long	.LASF447
	.byte	0x2
	.byte	0x23
	.long	0x95
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF448
	.uleb128 0x3
	.long	.LASF449
	.byte	0x2
	.byte	0x28
	.long	0x58
	.uleb128 0x3
	.long	.LASF450
	.byte	0x2
	.byte	0x29
	.long	0x46
	.uleb128 0x5
	.byte	0x1
	.long	.LASF451
	.byte	0x1
	.byte	0x18
	.byte	0x1
	.long	0xfe
	.long	.LFB0
	.long	.LFE0
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xfe
	.uleb128 0x6
	.string	"d"
	.byte	0x1
	.byte	0x18
	.long	0xfe
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x6
	.string	"s"
	.byte	0x1
	.byte	0x18
	.long	0xfe
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x7
	.string	"q"
	.byte	0x1
	.byte	0x18
	.long	0x9c
	.long	.LLST0
	.byte	0
	.uleb128 0x8
	.byte	0x2
	.uleb128 0x5
	.byte	0x1
	.long	.LASF452
	.byte	0x1
	.byte	0x1a
	.byte	0x1
	.long	0xfe
	.long	.LFB1
	.long	.LFE1
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x147
	.uleb128 0x6
	.string	"d"
	.byte	0x1
	.byte	0x1a
	.long	0xfe
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x6
	.string	"s"
	.byte	0x1
	.byte	0x1a
	.long	0x147
	.byte	0x1
	.byte	0x66
	.uleb128 0x7
	.string	"q"
	.byte	0x1
	.byte	0x1a
	.long	0x9c
	.long	.LLST1
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF453
	.uleb128 0x5
	.byte	0x1
	.long	.LASF454
	.byte	0x1
	.byte	0x1c
	.byte	0x1
	.long	0x19c
	.long	.LFB2
	.long	.LFE2
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x19c
	.uleb128 0x6
	.string	"sd"
	.byte	0x1
	.byte	0x1c
	.long	0x19c
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x6
	.string	"ss"
	.byte	0x1
	.byte	0x1c
	.long	0x19c
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x1e
	.long	0x51
	.long	.LLST2
	.byte	0
	.uleb128 0xa
	.byte	0x2
	.long	0x147
	.uleb128 0x5
	.byte	0x1
	.long	.LASF455
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.long	0x9c
	.long	.LFB3
	.long	.LFE3
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1dc
	.uleb128 0x7
	.string	"sd"
	.byte	0x1
	.byte	0x27
	.long	0x19c
	.long	.LLST3
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x29
	.long	0x9c
	.long	.LLST4
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.long	.LASF456
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.long	0x19c
	.long	.LFB4
	.long	.LFE4
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x214
	.uleb128 0x7
	.string	"sd"
	.byte	0x1
	.byte	0x2f
	.long	0x19c
	.long	.LLST5
	.uleb128 0x6
	.string	"s"
	.byte	0x1
	.byte	0x2f
	.long	0x147
	.byte	0x1
	.byte	0x66
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF457
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.long	0x19c
	.long	.LFB5
	.long	.LFE5
	.long	.LLST6
	.byte	0x1
	.long	0x272
	.uleb128 0x7
	.string	"sd"
	.byte	0x1
	.byte	0x37
	.long	0x19c
	.long	.LLST7
	.uleb128 0x7
	.string	"ss"
	.byte	0x1
	.byte	0x37
	.long	0x19c
	.long	.LLST8
	.uleb128 0xc
	.long	.LVL17
	.long	0x1a2
	.long	0x267
	.uleb128 0xd
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.long	.LVL19
	.byte	0x1
	.long	0x14e
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF463
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.long	0x78
	.long	.LFB6
	.long	.LFE6
	.long	.LLST9
	.byte	0x1
	.uleb128 0x7
	.string	"x"
	.byte	0x1
	.byte	0x3c
	.long	0x19c
	.long	.LLST10
	.uleb128 0x7
	.string	"n_"
	.byte	0x1
	.byte	0x3c
	.long	0xa7
	.long	.LLST11
	.uleb128 0x10
	.long	.LASF458
	.byte	0x1
	.byte	0x3c
	.long	0x63
	.long	.LLST12
	.uleb128 0x9
	.string	"z"
	.byte	0x1
	.byte	0x3e
	.long	0x8a
	.long	.LLST13
	.uleb128 0x9
	.string	"k"
	.byte	0x1
	.byte	0x3e
	.long	0x8a
	.long	.LLST14
	.uleb128 0x11
	.long	.LASF459
	.byte	0x1
	.byte	0x3f
	.long	0x78
	.long	.LLST15
	.uleb128 0x9
	.string	"n"
	.byte	0x1
	.byte	0x40
	.long	0xa7
	.long	.LLST16
	.uleb128 0x12
	.long	.LVL22
	.long	0x1a2
	.uleb128 0xd
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
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
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x6
	.uleb128 0x5
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x5
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL0
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL0
	.long	.LVL1
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	.LVL1
	.long	.LFE0
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST1:
	.long	.LVL2
	.long	.LVL2
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL2
	.long	.LVL3
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	.LVL3
	.long	.LFE1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST2:
	.long	.LVL5
	.long	.LVL6
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL6
	.long	.LVL7
	.word	0x6
	.byte	0x8a
	.sleb128 0
	.byte	0x86
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL7
	.long	.LVL8
	.word	0x7
	.byte	0x86
	.sleb128 0
	.byte	0x20
	.byte	0x8a
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL8
	.long	.LFE2
	.word	0x6
	.byte	0x8a
	.sleb128 0
	.byte	0x86
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL9
	.long	.LVL12
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL12
	.long	.LFE3
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL9
	.long	.LVL10
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL11
	.long	.LFE3
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST5:
	.long	.LVL13
	.long	.LVL14
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL14
	.long	.LVL15
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL15
	.long	.LFE4
	.word	0x3
	.byte	0x8e
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LFB5
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
	.sleb128 8
	.long	.LCFI5
	.long	.LFE5
	.word	0x2
	.byte	0x8c
	.sleb128 8
	.long	0
	.long	0
.LLST7:
	.long	.LVL16
	.long	.LVL17-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL17-1
	.long	.LVL18
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL18
	.long	.LFE5
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL16
	.long	.LVL17-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL17-1
	.long	.LFE5
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LFB6
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	.LCFI20
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 17
	.long	.LCFI21
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 18
	.long	.LCFI22
	.long	.LCFI23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 19
	.long	.LCFI23
	.long	.LCFI24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 20
	.long	.LCFI24
	.long	.LCFI25
	.word	0x2
	.byte	0x8c
	.sleb128 20
	.long	.LCFI25
	.long	.LFE6
	.word	0x2
	.byte	0x8c
	.sleb128 48
	.long	0
	.long	0
.LLST10:
	.long	.LVL20
	.long	.LVL22-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL22-1
	.long	.LVL67
	.word	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.long	.LVL67
	.long	.LFE6
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL20
	.long	.LVL22-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL22-1
	.long	.LVL68
	.word	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0x53
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST12:
	.long	.LVL20
	.long	.LVL22-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL22-1
	.long	.LVL33
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL33
	.long	.LVL35
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	.LVL35
	.long	.LVL37
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	.LVL37
	.long	.LVL38
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL38
	.long	.LVL39
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	.LVL39
	.long	.LVL40
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL41
	.long	.LVL42
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL42
	.long	.LVL43
	.word	0x2
	.byte	0x3a
	.byte	0x9f
	.long	.LVL45
	.long	.LVL46
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL46
	.long	.LVL47
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	.LVL47
	.long	.LVL48
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	.LVL65
	.long	.LVL66
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST13:
	.long	.LVL21
	.long	.LVL50
	.word	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.long	.LVL50
	.long	.LVL56-1
	.word	0x1e
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -22
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -35
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -34
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -33
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -32
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -31
	.byte	0x93
	.uleb128 0x1
	.long	.LVL57
	.long	.LVL63-1
	.word	0x1e
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -22
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -35
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -34
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -33
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -32
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -31
	.byte	0x93
	.uleb128 0x1
	.long	.LVL64
	.long	.LVL65
	.word	0x1c
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -34
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -33
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -32
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -31
	.byte	0x93
	.uleb128 0x1
	.long	.LVL65
	.long	.LVL66
	.word	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0
	.long	0
	.long	0
.LLST14:
	.long	.LVL53
	.long	.LVL55
	.word	0x18
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.long	.LVL57
	.long	.LVL58
	.word	0x18
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.long	.LVL58
	.long	.LVL59
	.word	0x1d
	.byte	0x91
	.sleb128 -37
	.byte	0x94
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.long	.LVL59
	.long	.LVL60
	.word	0x1d
	.byte	0x91
	.sleb128 -37
	.byte	0x94
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL61
	.long	.LVL62
	.word	0x1a
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -46
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -21
	.byte	0x93
	.uleb128 0x1
	.long	.LVL62
	.long	.LVL65
	.word	0x1c
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -47
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -46
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -20
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -21
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST15:
	.long	.LVL21
	.long	.LVL26
	.word	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0x1
	.long	.LVL26
	.long	.LVL28
	.word	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0xffffffff
	.long	.LVL28
	.long	.LVL30
	.word	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0x1
	.long	.LVL30
	.long	.LVL31
	.word	0x20
	.byte	0x91
	.sleb128 -30
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -29
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -28
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -27
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -26
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -25
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -24
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -23
	.byte	0x93
	.uleb128 0x1
	.long	.LVL31
	.long	.LVL32
	.word	0xa
	.byte	0x9e
	.uleb128 0x8
	.8byte	0x1
	.long	.LVL32
	.long	.LVL65
	.word	0x20
	.byte	0x91
	.sleb128 -30
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -29
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -28
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -27
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -26
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -25
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -24
	.byte	0x93
	.uleb128 0x1
	.byte	0x91
	.sleb128 -23
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST16:
	.long	.LVL21
	.long	.LVL24
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL24
	.long	.LVL34
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL34
	.long	.LVL36
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL36
	.long	.LVL37
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL37
	.long	.LVL44
	.word	0x3
	.byte	0x88
	.sleb128 1
	.byte	0x9f
	.long	.LVL44
	.long	.LVL47
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL47
	.long	.LVL48
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL48
	.long	.LVL49
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL50
	.long	.LVL51
	.word	0x8
	.byte	0x91
	.sleb128 -37
	.byte	0x94
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL51
	.long	.LVL52
	.word	0xa
	.byte	0x91
	.sleb128 -37
	.byte	0x94
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL52
	.long	.LVL54
	.word	0x6
	.byte	0x8a
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL54
	.long	.LVL55
	.word	0x8
	.byte	0x91
	.sleb128 -37
	.byte	0x94
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL57
	.long	.LVL65
	.word	0x8
	.byte	0x91
	.sleb128 -37
	.byte	0x94
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x4c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB0
	.long	.LFE0-.LFB0
	.long	.LFB1
	.long	.LFE1-.LFB1
	.long	.LFB2
	.long	.LFE2-.LFB2
	.long	.LFB3
	.long	.LFE3-.LFB3
	.long	.LFB4
	.long	.LFE4-.LFB4
	.long	.LFB5
	.long	.LFE5-.LFB5
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB0
	.long	.LFE0
	.long	.LFB1
	.long	.LFE1
	.long	.LFB2
	.long	.LFE2
	.long	.LFB3
	.long	.LFE3
	.long	.LFB4
	.long	.LFE4
	.long	.LFB5
	.long	.LFE5
	.long	.LFB6
	.long	.LFE6
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
	.file 3 "../fnclib.h"
	.byte	0x3
	.uleb128 0x16
	.uleb128 0x3
	.byte	0x5
	.uleb128 0x17
	.long	.LASF426
	.byte	0x3
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x7
	.long	.Ldebug_macro2
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.1.cdf93a01539adbc1589f0374f476290e,comdat
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
	.uleb128 0
	.long	.LASF324
	.byte	0x5
	.uleb128 0
	.long	.LASF322
	.byte	0x5
	.uleb128 0
	.long	.LASF425
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.h_types.h.23.ec15a7dbd3ca03d1fa1a83991fbff84c,comdat
.Ldebug_macro2:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.long	.LASF427
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF428
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF429
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF430
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF431
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF432
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.fnclib.h.34.0caf433de881a0b1f3a493c145191c08,comdat
.Ldebug_macro3:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x22
	.long	.LASF433
	.byte	0x5
	.uleb128 0x24
	.long	.LASF434
	.byte	0x5
	.uleb128 0x39
	.long	.LASF435
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF436
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF34:
	.string	"__WINT_TYPE__ int"
.LASF344:
	.string	"__BUILTIN_AVR_INSERT_BITS 1"
.LASF129:
	.string	"__FLT_MAX__ 3.40282347e+38F"
.LASF177:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF119:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF429:
	.string	"UNUSED(x) (void)(x)"
.LASF352:
	.string	"__BUILTIN_AVR_ABSLK 1"
.LASF176:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF93:
	.string	"__INT_LEAST8_MAX__ 127"
.LASF415:
	.string	"__BUILTIN_AVR_UKBITS 1"
.LASF85:
	.string	"__INT8_MAX__ 127"
.LASF102:
	.string	"__UINT8_C(c) c"
.LASF87:
	.string	"__INT32_MAX__ 2147483647L"
.LASF386:
	.string	"__BUILTIN_AVR_BITSHR 1"
.LASF266:
	.string	"__QQ_IBIT__ 0"
.LASF282:
	.string	"__UDQ_IBIT__ 0"
.LASF359:
	.string	"__BUILTIN_AVR_ROUNDUR 1"
.LASF220:
	.string	"__ULLFRACT_FBIT__ 64"
.LASF307:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 1"
.LASF99:
	.string	"__INT_LEAST64_MAX__ 9223372036854775807LL"
.LASF430:
	.string	"_uSec(n) (n)"
.LASF319:
	.string	"__SIZEOF_WINT_T__ 2"
.LASF216:
	.string	"__LLFRACT_IBIT__ 0"
.LASF452:
	.string	"_memset"
.LASF155:
	.string	"__LDBL_MAX_10_EXP__ 38"
.LASF192:
	.string	"__USFRACT_MIN__ 0.0UHR"
.LASF375:
	.string	"__BUILTIN_AVR_COUNTLSUR 1"
.LASF3:
	.string	"__GNUC_MINOR__ 8"
.LASF442:
	.string	"unsigned int"
.LASF364:
	.string	"__BUILTIN_AVR_ROUNDLK 1"
.LASF335:
	.string	"__BUILTIN_AVR_SEI 1"
.LASF22:
	.string	"__SIZEOF_SIZE_T__ 2"
.LASF18:
	.string	"__SIZEOF_SHORT__ 2"
.LASF21:
	.string	"__SIZEOF_LONG_DOUBLE__ 4"
.LASF328:
	.string	"__AVR_HAVE_16BIT_SP__ 1"
.LASF2:
	.string	"__GNUC__ 4"
.LASF26:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF181:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF55:
	.string	"__UINT_LEAST64_TYPE__ long long unsigned int"
.LASF9:
	.string	"__ATOMIC_RELEASE 3"
.LASF32:
	.string	"__PTRDIFF_TYPE__ int"
.LASF379:
	.string	"__BUILTIN_AVR_COUNTLSK 1"
.LASF169:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF16:
	.string	"__SIZEOF_LONG__ 4"
.LASF96:
	.string	"__INT16_C(c) c"
.LASF131:
	.string	"__FLT_EPSILON__ 1.19209290e-7F"
.LASF301:
	.string	"__REGISTER_PREFIX__ "
.LASF82:
	.string	"__UINTMAX_C(c) c ## ULL"
.LASF62:
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
.LASF358:
	.string	"__BUILTIN_AVR_ROUNDUHR 1"
.LASF28:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF101:
	.string	"__UINT_LEAST8_MAX__ 255"
.LASF373:
	.string	"__BUILTIN_AVR_COUNTLSLLR 1"
.LASF147:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF206:
	.string	"__LFRACT_IBIT__ 0"
.LASF324:
	.string	"__AVR_ATtiny85__ 1"
.LASF74:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF454:
	.string	"_strcpy"
.LASF322:
	.string	"__AVR__ 1"
.LASF52:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF184:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF221:
	.string	"__ULLFRACT_IBIT__ 0"
.LASF457:
	.string	"_strcat"
.LASF56:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF6:
	.string	"__ATOMIC_RELAXED 0"
.LASF414:
	.string	"__BUILTIN_AVR_UHKBITS 1"
.LASF247:
	.string	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)"
.LASF39:
	.string	"__SIG_ATOMIC_TYPE__ char"
.LASF252:
	.string	"__ULACCUM_MIN__ 0.0ULK"
.LASF371:
	.string	"__BUILTIN_AVR_COUNTLSR 1"
.LASF134:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF435:
	.string	"__FNC_INLINE_MEMSET "
.LASF320:
	.string	"__SIZEOF_PTRDIFF_T__ 2"
.LASF298:
	.string	"__UDA_IBIT__ 32"
.LASF92:
	.string	"__UINT64_MAX__ 18446744073709551615ULL"
.LASF59:
	.string	"__INT_FAST64_TYPE__ long long int"
.LASF94:
	.string	"__INT8_C(c) c"
.LASF361:
	.string	"__BUILTIN_AVR_ROUNDULLR 1"
.LASF138:
	.string	"__DBL_MIN_EXP__ (-125)"
.LASF419:
	.string	"__BUILTIN_AVR_ROUNDFX 1"
.LASF262:
	.string	"__ULLACCUM_MIN__ 0.0ULLK"
.LASF387:
	.string	"__BUILTIN_AVR_BITSR 1"
.LASF355:
	.string	"__BUILTIN_AVR_ROUNDR 1"
.LASF65:
	.string	"__UINTPTR_TYPE__ unsigned int"
.LASF402:
	.string	"__BUILTIN_AVR_HRBITS 1"
.LASF436:
	.string	"__FNC_MEMSET() __FNC_INLINE_MEMSET void * _memset(void *d,char s,size_t q) { do { --q; *((uint8_t *)d+q)=s; } while(q); return d; }"
.LASF288:
	.string	"__SA_IBIT__ 16"
.LASF218:
	.string	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR"
.LASF123:
	.string	"__FLT_DIG__ 6"
.LASF289:
	.string	"__DA_FBIT__ 31"
.LASF161:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF411:
	.string	"__BUILTIN_AVR_KBITS 1"
.LASF458:
	.string	"base"
.LASF300:
	.string	"__UTA_IBIT__ 16"
.LASF167:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF234:
	.string	"__USACCUM_EPSILON__ 0x1P-8UHK"
.LASF440:
	.string	"int16_t"
.LASF253:
	.string	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK"
.LASF203:
	.string	"__UFRACT_MAX__ 0XFFFFP-16UR"
.LASF188:
	.string	"__SFRACT_MAX__ 0X7FP-7HR"
.LASF448:
	.string	"long long unsigned int"
.LASF118:
	.string	"__UINTPTR_MAX__ 65535U"
.LASF179:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF460:
	.string	"GNU C 4.8.1 -mmcu=attiny85 -g3 -Os -ansi -fno-exceptions -ffunction-sections -fdata-sections -fno-builtin"
.LASF380:
	.string	"__BUILTIN_AVR_COUNTLSLK 1"
.LASF214:
	.string	"__ULFRACT_EPSILON__ 0x1P-32ULR"
.LASF50:
	.string	"__INT_LEAST32_TYPE__ long int"
.LASF211:
	.string	"__ULFRACT_IBIT__ 0"
.LASF284:
	.string	"__UTQ_IBIT__ 0"
.LASF376:
	.string	"__BUILTIN_AVR_COUNTLSULR 1"
.LASF223:
	.string	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR"
.LASF121:
	.string	"__FLT_RADIX__ 2"
.LASF394:
	.string	"__BUILTIN_AVR_BITSHK 1"
.LASF222:
	.string	"__ULLFRACT_MIN__ 0.0ULLR"
.LASF7:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF242:
	.string	"__UACCUM_MIN__ 0.0UK"
.LASF209:
	.string	"__LFRACT_EPSILON__ 0x1P-31LR"
.LASF367:
	.string	"__BUILTIN_AVR_ROUNDUK 1"
.LASF61:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF37:
	.string	"__CHAR16_TYPE__ unsigned int"
.LASF225:
	.string	"__SACCUM_FBIT__ 7"
.LASF428:
	.string	"NULL 0"
.LASF146:
	.string	"__DBL_DENORM_MIN__ ((double)1.40129846e-45L)"
.LASF175:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF197:
	.string	"__FRACT_MIN__ (-0.5R-0.5R)"
.LASF311:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 1"
.LASF365:
	.string	"__BUILTIN_AVR_ROUNDLLK 1"
.LASF391:
	.string	"__BUILTIN_AVR_BITSUR 1"
.LASF244:
	.string	"__UACCUM_EPSILON__ 0x1P-16UK"
.LASF109:
	.string	"__INT_FAST8_MAX__ 127"
.LASF462:
	.string	"/home/sergio/to_internet/github/ATTiny85/project/sblk85"
.LASF236:
	.string	"__ACCUM_IBIT__ 16"
.LASF383:
	.string	"__BUILTIN_AVR_COUNTLSUK 1"
.LASF272:
	.string	"__DQ_IBIT__ 0"
.LASF230:
	.string	"__USACCUM_FBIT__ 8"
.LASF226:
	.string	"__SACCUM_IBIT__ 8"
.LASF390:
	.string	"__BUILTIN_AVR_BITSUHR 1"
.LASF342:
	.string	"__BUILTIN_AVR_FMULSU 1"
.LASF187:
	.string	"__SFRACT_MIN__ (-0.5HR-0.5HR)"
.LASF296:
	.string	"__USA_IBIT__ 16"
.LASF178:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF421:
	.string	"__INT24_MAX__ 8388607L"
.LASF149:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF150:
	.string	"__LDBL_MANT_DIG__ 24"
.LASF19:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF233:
	.string	"__USACCUM_MAX__ 0XFFFFP-8UHK"
.LASF106:
	.string	"__UINT32_C(c) c ## UL"
.LASF297:
	.string	"__UDA_FBIT__ 32"
.LASF449:
	.string	"size_t"
.LASF459:
	.string	"sign"
.LASF445:
	.string	"int64_t"
.LASF255:
	.string	"__LLACCUM_FBIT__ 47"
.LASF24:
	.string	"__BIGGEST_ALIGNMENT__ 1"
.LASF290:
	.string	"__DA_IBIT__ 32"
.LASF246:
	.string	"__LACCUM_IBIT__ 32"
.LASF95:
	.string	"__INT_LEAST16_MAX__ 32767"
.LASF193:
	.string	"__USFRACT_MAX__ 0XFFP-8UHR"
.LASF25:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF388:
	.string	"__BUILTIN_AVR_BITSLR 1"
.LASF66:
	.string	"__GXX_ABI_VERSION 1002"
.LASF431:
	.string	"_mSec(n) ((n)*1000UL)"
.LASF13:
	.string	"__OPTIMIZE__ 1"
.LASF287:
	.string	"__SA_FBIT__ 15"
.LASF343:
	.string	"__BUILTIN_AVR_DELAY_CYCLES 1"
.LASF346:
	.string	"__BUILTIN_AVR_ABSHR 1"
.LASF5:
	.string	"__VERSION__ \"4.8.1\""
.LASF83:
	.string	"__SIG_ATOMIC_MAX__ 127"
.LASF427:
	.string	"H_TYPES_H_ "
.LASF229:
	.string	"__SACCUM_EPSILON__ 0x1P-7HK"
.LASF257:
	.string	"__LLACCUM_MIN__ (-0X1P15LLK-0X1P15LLK)"
.LASF57:
	.string	"__INT_FAST16_TYPE__ int"
.LASF140:
	.string	"__DBL_MAX_EXP__ 128"
.LASF381:
	.string	"__BUILTIN_AVR_COUNTLSLLK 1"
.LASF397:
	.string	"__BUILTIN_AVR_BITSLLK 1"
.LASF306:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 1"
.LASF334:
	.string	"__BUILTIN_AVR_NOP 1"
.LASF278:
	.string	"__UHQ_IBIT__ 0"
.LASF48:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF127:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF51:
	.string	"__INT_LEAST64_TYPE__ long long int"
.LASF231:
	.string	"__USACCUM_IBIT__ 8"
.LASF212:
	.string	"__ULFRACT_MIN__ 0.0ULR"
.LASF122:
	.string	"__FLT_MANT_DIG__ 24"
.LASF280:
	.string	"__USQ_IBIT__ 0"
.LASF47:
	.string	"__UINT64_TYPE__ long long unsigned int"
.LASF241:
	.string	"__UACCUM_IBIT__ 16"
.LASF160:
	.string	"__LDBL_DENORM_MIN__ 1.40129846e-45L"
.LASF369:
	.string	"__BUILTIN_AVR_ROUNDULLK 1"
.LASF340:
	.string	"__BUILTIN_AVR_FMUL 1"
.LASF91:
	.string	"__UINT32_MAX__ 4294967295UL"
.LASF409:
	.string	"__BUILTIN_AVR_ULLRBITS 1"
.LASF45:
	.string	"__UINT16_TYPE__ unsigned int"
.LASF195:
	.string	"__FRACT_FBIT__ 15"
.LASF417:
	.string	"__BUILTIN_AVR_ULLKBITS 1"
.LASF395:
	.string	"__BUILTIN_AVR_BITSK 1"
.LASF422:
	.string	"__INT24_MIN__ (-__INT24_MAX__-1)"
.LASF235:
	.string	"__ACCUM_FBIT__ 15"
.LASF53:
	.string	"__UINT_LEAST16_TYPE__ unsigned int"
.LASF172:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF251:
	.string	"__ULACCUM_IBIT__ 32"
.LASF215:
	.string	"__LLFRACT_FBIT__ 63"
.LASF323:
	.string	"__AVR_ARCH__ 25"
.LASF295:
	.string	"__USA_FBIT__ 16"
.LASF450:
	.string	"ssize_t"
.LASF366:
	.string	"__BUILTIN_AVR_ROUNDUHK 1"
.LASF439:
	.string	"uint8_t"
.LASF97:
	.string	"__INT_LEAST32_MAX__ 2147483647L"
.LASF168:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF205:
	.string	"__LFRACT_FBIT__ 31"
.LASF107:
	.string	"__UINT_LEAST64_MAX__ 18446744073709551615ULL"
.LASF14:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF115:
	.string	"__UINT_FAST32_MAX__ 4294967295UL"
.LASF384:
	.string	"__BUILTIN_AVR_COUNTLSULK 1"
.LASF245:
	.string	"__LACCUM_FBIT__ 31"
.LASF204:
	.string	"__UFRACT_EPSILON__ 0x1P-16UR"
.LASF312:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 1"
.LASF73:
	.string	"__WCHAR_MAX__ 32767"
.LASF239:
	.string	"__ACCUM_EPSILON__ 0x1P-15K"
.LASF434:
	.string	"__FNC_MEMCPY() __FNC_INLINE_MEMCPY void * _memcpy(void *d,void *s,size_t q) { do { --q; *((uint8_t *)d+q)=*((uint8_t *)s+q); } while(q); return d; }"
.LASF281:
	.string	"__UDQ_FBIT__ 64"
.LASF330:
	.string	"__AVR_SFR_OFFSET__ 0x20"
.LASF347:
	.string	"__BUILTIN_AVR_ABSR 1"
.LASF283:
	.string	"__UTQ_FBIT__ 128"
.LASF86:
	.string	"__INT16_MAX__ 32767"
.LASF446:
	.string	"long long int"
.LASF23:
	.string	"__CHAR_BIT__ 8"
.LASF259:
	.string	"__LLACCUM_EPSILON__ 0x1P-47LLK"
.LASF305:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 1"
.LASF413:
	.string	"__BUILTIN_AVR_LLKBITS 1"
.LASF151:
	.string	"__LDBL_DIG__ 6"
.LASF228:
	.string	"__SACCUM_MAX__ 0X7FFFP-7HK"
.LASF363:
	.string	"__BUILTIN_AVR_ROUNDK 1"
.LASF274:
	.string	"__TQ_IBIT__ 0"
.LASF293:
	.string	"__UHA_FBIT__ 8"
.LASF69:
	.string	"__SHRT_MAX__ 32767"
.LASF461:
	.string	"../fnclib.c"
.LASF105:
	.string	"__UINT_LEAST32_MAX__ 4294967295UL"
.LASF424:
	.string	"__ELF__ 1"
.LASF398:
	.string	"__BUILTIN_AVR_BITSUHK 1"
.LASF314:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF316:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF400:
	.string	"__BUILTIN_AVR_BITSULK 1"
.LASF200:
	.string	"__UFRACT_FBIT__ 16"
.LASF170:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF8:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF360:
	.string	"__BUILTIN_AVR_ROUNDULR 1"
.LASF406:
	.string	"__BUILTIN_AVR_UHRBITS 1"
.LASF292:
	.string	"__TA_IBIT__ 16"
.LASF0:
	.string	"__STDC__ 1"
.LASF325:
	.string	"__AVR_HAVE_MOVW__ 1"
.LASF104:
	.string	"__UINT16_C(c) c ## U"
.LASF240:
	.string	"__UACCUM_FBIT__ 16"
.LASF382:
	.string	"__BUILTIN_AVR_COUNTLSUHK 1"
.LASF113:
	.string	"__UINT_FAST8_MAX__ 255"
.LASF354:
	.string	"__BUILTIN_AVR_ROUNDHR 1"
.LASF11:
	.string	"__ATOMIC_CONSUME 1"
.LASF210:
	.string	"__ULFRACT_FBIT__ 32"
.LASF20:
	.string	"__SIZEOF_DOUBLE__ 4"
.LASF58:
	.string	"__INT_FAST32_TYPE__ long int"
.LASF237:
	.string	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)"
.LASF432:
	.string	"_Sec(n) ((n)*1000000UL)"
.LASF4:
	.string	"__GNUC_PATCHLEVEL__ 1"
.LASF396:
	.string	"__BUILTIN_AVR_BITSLK 1"
.LASF198:
	.string	"__FRACT_MAX__ 0X7FFFP-15R"
.LASF43:
	.string	"__INT64_TYPE__ long long int"
.LASF250:
	.string	"__ULACCUM_FBIT__ 32"
.LASF202:
	.string	"__UFRACT_MIN__ 0.0UR"
.LASF321:
	.string	"__AVR 1"
.LASF377:
	.string	"__BUILTIN_AVR_COUNTLSULLR 1"
.LASF196:
	.string	"__FRACT_IBIT__ 0"
.LASF248:
	.string	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK"
.LASF162:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF63:
	.string	"__UINT_FAST64_TYPE__ long long unsigned int"
.LASF130:
	.string	"__FLT_MIN__ 1.17549435e-38F"
.LASF103:
	.string	"__UINT_LEAST16_MAX__ 65535U"
.LASF318:
	.string	"__SIZEOF_WCHAR_T__ 2"
.LASF72:
	.string	"__LONG_LONG_MAX__ 9223372036854775807LL"
.LASF261:
	.string	"__ULLACCUM_IBIT__ 16"
.LASF117:
	.string	"__INTPTR_MAX__ 32767"
.LASF84:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF29:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF238:
	.string	"__ACCUM_MAX__ 0X7FFFFFFFP-15K"
.LASF201:
	.string	"__UFRACT_IBIT__ 0"
.LASF164:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF392:
	.string	"__BUILTIN_AVR_BITSULR 1"
.LASF153:
	.string	"__LDBL_MIN_10_EXP__ (-37)"
.LASF157:
	.string	"__LDBL_MAX__ 3.40282347e+38L"
.LASF219:
	.string	"__LLFRACT_EPSILON__ 0x1P-63LLR"
.LASF353:
	.string	"__BUILTIN_AVR_ABSLLK 1"
.LASF456:
	.string	"_strchr"
.LASF185:
	.string	"__SFRACT_FBIT__ 7"
.LASF38:
	.string	"__CHAR32_TYPE__ long unsigned int"
.LASF374:
	.string	"__BUILTIN_AVR_COUNTLSUHR 1"
.LASF268:
	.string	"__HQ_IBIT__ 0"
.LASF441:
	.string	"uint16_t"
.LASF302:
	.string	"__USER_LABEL_PREFIX__ "
.LASF54:
	.string	"__UINT_LEAST32_TYPE__ long unsigned int"
.LASF271:
	.string	"__DQ_FBIT__ 63"
.LASF294:
	.string	"__UHA_IBIT__ 8"
.LASF254:
	.string	"__ULACCUM_EPSILON__ 0x1P-32ULK"
.LASF89:
	.string	"__UINT8_MAX__ 255"
.LASF309:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 1"
.LASF27:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF270:
	.string	"__SQ_IBIT__ 0"
.LASF453:
	.string	"char"
.LASF128:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF49:
	.string	"__INT_LEAST16_TYPE__ int"
.LASF183:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF275:
	.string	"__UQQ_FBIT__ 8"
.LASF68:
	.string	"__SCHAR_MAX__ 127"
.LASF70:
	.string	"__INT_MAX__ 32767"
.LASF327:
	.string	"__AVR_2_BYTE_PC__ 1"
.LASF243:
	.string	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK"
.LASF173:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF337:
	.string	"__BUILTIN_AVR_WDR 1"
.LASF277:
	.string	"__UHQ_FBIT__ 16"
.LASF42:
	.string	"__INT32_TYPE__ long int"
.LASF405:
	.string	"__BUILTIN_AVR_LLRBITS 1"
.LASF443:
	.string	"long int"
.LASF269:
	.string	"__SQ_FBIT__ 31"
.LASF76:
	.string	"__WINT_MIN__ (-__WINT_MAX__ - 1)"
.LASF207:
	.string	"__LFRACT_MIN__ (-0.5LR-0.5LR)"
.LASF303:
	.string	"__GNUC_GNU_INLINE__ 1"
.LASF180:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF336:
	.string	"__BUILTIN_AVR_CLI 1"
.LASF60:
	.string	"__UINT_FAST8_TYPE__ unsigned char"
.LASF163:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF40:
	.string	"__INT8_TYPE__ signed char"
.LASF33:
	.string	"__WCHAR_TYPE__ int"
.LASF418:
	.string	"__BUILTIN_AVR_ABSFX 1"
.LASF425:
	.string	"CIRCBUFF_POW2DIM 1"
.LASF351:
	.string	"__BUILTIN_AVR_ABSK 1"
.LASF273:
	.string	"__TQ_FBIT__ 127"
.LASF258:
	.string	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-47LLK"
.LASF447:
	.string	"uint64_t"
.LASF194:
	.string	"__USFRACT_EPSILON__ 0x1P-8UHR"
.LASF329:
	.string	"__AVR_HAVE_SPH__ 1"
.LASF331:
	.string	"__WITH_AVRLIBC__ 1"
.LASF88:
	.string	"__INT64_MAX__ 9223372036854775807LL"
.LASF190:
	.string	"__USFRACT_FBIT__ 8"
.LASF100:
	.string	"__INT64_C(c) c ## LL"
.LASF267:
	.string	"__HQ_FBIT__ 15"
.LASF186:
	.string	"__SFRACT_IBIT__ 0"
.LASF17:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF139:
	.string	"__DBL_MIN_10_EXP__ (-37)"
.LASF44:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF345:
	.string	"__BUILTIN_AVR_FLASH_SEGMENT 1"
.LASF143:
	.string	"__DBL_MAX__ ((double)3.40282347e+38L)"
.LASF154:
	.string	"__LDBL_MAX_EXP__ 128"
.LASF156:
	.string	"__DECIMAL_DIG__ 9"
.LASF410:
	.string	"__BUILTIN_AVR_HKBITS 1"
.LASF46:
	.string	"__UINT32_TYPE__ long unsigned int"
.LASF30:
	.string	"__SIZEOF_POINTER__ 2"
.LASF412:
	.string	"__BUILTIN_AVR_LKBITS 1"
.LASF368:
	.string	"__BUILTIN_AVR_ROUNDULK 1"
.LASF213:
	.string	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR"
.LASF77:
	.string	"__PTRDIFF_MAX__ 32767"
.LASF350:
	.string	"__BUILTIN_AVR_ABSHK 1"
.LASF362:
	.string	"__BUILTIN_AVR_ROUNDHK 1"
.LASF227:
	.string	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)"
.LASF315:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 1"
.LASF403:
	.string	"__BUILTIN_AVR_RBITS 1"
.LASF108:
	.string	"__UINT64_C(c) c ## ULL"
.LASF249:
	.string	"__LACCUM_EPSILON__ 0x1P-31LK"
.LASF41:
	.string	"__INT16_TYPE__ int"
.LASF189:
	.string	"__SFRACT_EPSILON__ 0x1P-7HR"
.LASF332:
	.string	"__FLASH 1"
.LASF276:
	.string	"__UQQ_IBIT__ 0"
.LASF279:
	.string	"__USQ_FBIT__ 32"
.LASF286:
	.string	"__HA_IBIT__ 8"
.LASF444:
	.string	"long unsigned int"
.LASF308:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 1"
.LASF348:
	.string	"__BUILTIN_AVR_ABSLR 1"
.LASF263:
	.string	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-48ULLK"
.LASF132:
	.string	"__FLT_DENORM_MIN__ 1.40129846e-45F"
.LASF378:
	.string	"__BUILTIN_AVR_COUNTLSHK 1"
.LASF420:
	.string	"__BUILTIN_AVR_COUNTLSFX 1"
.LASF81:
	.string	"__UINTMAX_MAX__ 18446744073709551615ULL"
.LASF12:
	.string	"__OPTIMIZE_SIZE__ 1"
.LASF1:
	.string	"__STDC_HOSTED__ 1"
.LASF79:
	.string	"__INTMAX_MAX__ 9223372036854775807LL"
.LASF90:
	.string	"__UINT16_MAX__ 65535U"
.LASF385:
	.string	"__BUILTIN_AVR_COUNTLSULLK 1"
.LASF357:
	.string	"__BUILTIN_AVR_ROUNDLLR 1"
.LASF112:
	.string	"__INT_FAST64_MAX__ 9223372036854775807LL"
.LASF78:
	.string	"__SIZE_MAX__ 65535U"
.LASF159:
	.string	"__LDBL_EPSILON__ 1.19209290e-7L"
.LASF389:
	.string	"__BUILTIN_AVR_BITSLLR 1"
.LASF416:
	.string	"__BUILTIN_AVR_ULKBITS 1"
.LASF463:
	.string	"_strntoll"
.LASF313:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 1"
.LASF158:
	.string	"__LDBL_MIN__ 1.17549435e-38L"
.LASF126:
	.string	"__FLT_MAX_EXP__ 128"
.LASF10:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF438:
	.string	"unsigned char"
.LASF165:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF36:
	.string	"__UINTMAX_TYPE__ long long unsigned int"
.LASF399:
	.string	"__BUILTIN_AVR_BITSUK 1"
.LASF64:
	.string	"__INTPTR_TYPE__ int"
.LASF120:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF232:
	.string	"__USACCUM_MIN__ 0.0UHK"
.LASF191:
	.string	"__USFRACT_IBIT__ 0"
.LASF145:
	.string	"__DBL_EPSILON__ ((double)1.19209290e-7L)"
.LASF339:
	.string	"__BUILTIN_AVR_SWAP 1"
.LASF144:
	.string	"__DBL_MIN__ ((double)1.17549435e-38L)"
.LASF356:
	.string	"__BUILTIN_AVR_ROUNDLR 1"
.LASF141:
	.string	"__DBL_MAX_10_EXP__ 38"
.LASF110:
	.string	"__INT_FAST16_MAX__ 32767"
.LASF116:
	.string	"__UINT_FAST64_MAX__ 18446744073709551615ULL"
.LASF31:
	.string	"__SIZE_TYPE__ unsigned int"
.LASF166:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF407:
	.string	"__BUILTIN_AVR_URBITS 1"
.LASF71:
	.string	"__LONG_MAX__ 2147483647L"
.LASF451:
	.string	"_memcpy"
.LASF291:
	.string	"__TA_FBIT__ 47"
.LASF393:
	.string	"__BUILTIN_AVR_BITSULLR 1"
.LASF372:
	.string	"__BUILTIN_AVR_COUNTLSLR 1"
.LASF199:
	.string	"__FRACT_EPSILON__ 0x1P-15R"
.LASF125:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF426:
	.string	"FNCLIB_H "
.LASF148:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF401:
	.string	"__BUILTIN_AVR_BITSULLK 1"
.LASF15:
	.string	"__SIZEOF_INT__ 2"
.LASF135:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF142:
	.string	"__DBL_DECIMAL_DIG__ 9"
.LASF35:
	.string	"__INTMAX_TYPE__ long long int"
.LASF80:
	.string	"__INTMAX_C(c) c ## LL"
.LASF136:
	.string	"__DBL_MANT_DIG__ 24"
.LASF67:
	.string	"__USING_SJLJ_EXCEPTIONS__ 1"
.LASF437:
	.string	"signed char"
.LASF341:
	.string	"__BUILTIN_AVR_FMULS 1"
.LASF310:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 1"
.LASF111:
	.string	"__INT_FAST32_MAX__ 2147483647L"
.LASF265:
	.string	"__QQ_FBIT__ 7"
.LASF408:
	.string	"__BUILTIN_AVR_ULRBITS 1"
.LASF349:
	.string	"__BUILTIN_AVR_ABSLLR 1"
.LASF264:
	.string	"__ULLACCUM_EPSILON__ 0x1P-48ULLK"
.LASF137:
	.string	"__DBL_DIG__ 6"
.LASF124:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF370:
	.string	"__BUILTIN_AVR_COUNTLSHR 1"
.LASF182:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF260:
	.string	"__ULLACCUM_FBIT__ 48"
.LASF285:
	.string	"__HA_FBIT__ 7"
.LASF404:
	.string	"__BUILTIN_AVR_LRBITS 1"
.LASF98:
	.string	"__INT32_C(c) c ## L"
.LASF433:
	.string	"__FNC_INLINE_MEMCPY "
.LASF304:
	.string	"__STRICT_ANSI__ 1"
.LASF326:
	.string	"__AVR_HAVE_LPMX__ 1"
.LASF338:
	.string	"__BUILTIN_AVR_SLEEP 1"
.LASF208:
	.string	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR"
.LASF423:
	.string	"__UINT24_MAX__ 16777215UL"
.LASF333:
	.string	"__MEMX 1"
.LASF299:
	.string	"__UTA_FBIT__ 48"
.LASF174:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF317:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF217:
	.string	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)"
.LASF455:
	.string	"_strlen"
.LASF224:
	.string	"__ULLFRACT_EPSILON__ 0x1P-64ULLR"
.LASF256:
	.string	"__LLACCUM_IBIT__ 16"
.LASF152:
	.string	"__LDBL_MIN_EXP__ (-125)"
.LASF114:
	.string	"__UINT_FAST16_MAX__ 65535U"
.LASF75:
	.string	"__WINT_MAX__ 32767"
.LASF171:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF133:
	.string	"__FLT_HAS_DENORM__ 1"
	.ident	"GCC: (GNU) 4.8.1"
