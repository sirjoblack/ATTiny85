	.file	"circbuff.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._ZN14CircularBufferC2EPch,"ax",@progbits
.global	_ZN14CircularBufferC2EPch
	.type	_ZN14CircularBufferC2EPch, @function
_ZN14CircularBufferC2EPch:
.LFB9:
	.file 1 "../circbuff.cpp"
	.loc 1 61 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
.LBB11:
	.loc 1 62 0
	std Z+1,__zero_reg__
	std Z+2,__zero_reg__
	std Z+4,r23
	std Z+3,r22
	std Z+5,__zero_reg__
	std Z+6,__zero_reg__
.LVL1:
.LBB12:
.LBB13:
	.file 2 "../circbuff.h"
	.loc 2 189 0
	ldi r24,lo8(-128)
.LVL2:
.L8:
	.loc 2 191 0
	st Z,r24
	.loc 2 190 0
	ld r24,Z
	tst r24
	breq .L1
	mov r25,r20
	and r25,r24
	brne .L1
	.loc 2 191 0
	ldi r25,0
	asr r25
	ror r24
	rjmp .L8
.L1:
	ret
.LBE13:
.LBE12:
.LBE11:
	.cfi_endproc
.LFE9:
	.size	_ZN14CircularBufferC2EPch, .-_ZN14CircularBufferC2EPch
.global	_ZN14CircularBufferC1EPch
	.set	_ZN14CircularBufferC1EPch,_ZN14CircularBufferC2EPch
	.section	.text._ZN14CircularBufferD2Ev,"ax",@progbits
.global	_ZN14CircularBufferD2Ev
	.type	_ZN14CircularBufferD2Ev, @function
_ZN14CircularBufferD2Ev:
.LFB12:
	.loc 1 71 0
	.cfi_startproc
.LVL3:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE12:
	.size	_ZN14CircularBufferD2Ev, .-_ZN14CircularBufferD2Ev
.global	_ZN14CircularBufferD1Ev
	.set	_ZN14CircularBufferD1Ev,_ZN14CircularBufferD2Ev
	.section	.text._ZN14CircularBuffer7getByteEv,"ax",@progbits
.global	_ZN14CircularBuffer7getByteEv
	.type	_ZN14CircularBuffer7getByteEv, @function
_ZN14CircularBuffer7getByteEv:
.LFB14:
	.loc 1 84 0
	.cfi_startproc
.LVL4:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 84 0
	movw r30,r24
.LBB14:
	.loc 1 85 0
	ldd r25,Z+1
	ldd r24,Z+2
.LVL5:
	cpse r25,r24
	rjmp .L13
	.loc 1 85 0 is_stmt 0 discriminator 1
	ldd r24,Z+5
	cpse r24,__zero_reg__
	rjmp .L13
	.loc 1 86 0 is_stmt 1
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	ret
.L13:
	.loc 1 87 0
	ldd r24,Z+1
	ldd r26,Z+3
	ldd r27,Z+4
	add r26,r24
	adc r27,__zero_reg__
	ld r24,X
.LVL6:
	.loc 1 89 0
	ldd r18,Z+1
.LVL7:
	ld r25,Z
	subi r25,lo8(-(-1))
	subi r18,lo8(-(1))
	and r25,r18
	std Z+1,r25
	.loc 1 93 0
	std Z+5,__zero_reg__
	.loc 1 94 0
	ldi r25,0
.LBE14:
	.loc 1 95 0
	ret
	.cfi_endproc
.LFE14:
	.size	_ZN14CircularBuffer7getByteEv, .-_ZN14CircularBuffer7getByteEv
	.section	.text._ZN14CircularBuffer7getDataEPch,"ax",@progbits
.global	_ZN14CircularBuffer7getDataEPch
	.type	_ZN14CircularBuffer7getDataEPch, @function
_ZN14CircularBuffer7getDataEPch:
.LFB15:
	.loc 1 98 0
	.cfi_startproc
.LVL8:
	push r12
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 12, -2
	push r13
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 13, -3
	push r14
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 14, -4
	push r15
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 15, -5
	push r16
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 16, -6
	push r17
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 17, -7
	push r28
.LCFI6:
	.cfi_def_cfa_offset 9
	.cfi_offset 28, -8
	push r29
.LCFI7:
	.cfi_def_cfa_offset 10
	.cfi_offset 29, -9
	push __zero_reg__
.LCFI8:
	.cfi_def_cfa_offset 11
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI9:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 1 */
/* stack size = 9 */
.L__stack_usage = 9
	movw r16,r24
.LVL9:
	mov r14,r22
.LBB19:
	.loc 1 100 0
	movw r12,r22
.LVL10:
.L20:
	mov r15,r12
	sub r15,r14
.LVL11:
	.loc 1 100 0 is_stmt 0 discriminator 1
	cp r15,r20
	brsh .L17
.LVL12:
.LBB20:
.LBB21:
	.loc 2 96 0 is_stmt 1 discriminator 1
	movw r24,r16
	std Y+1,r20
	rcall _ZN14CircularBuffer7getByteEv
.LVL13:
	movw r18,r24
.LVL14:
	ldd r20,Y+1
	sbrs r25,7
	rjmp .L19
	.loc 2 96 0 is_stmt 0
	movw r30,r12
	ld r24,Z
.L19:
	movw r30,r12
	st Z+,r24
	movw r12,r30
.LVL15:
.LBE21:
.LBE20:
	.loc 1 100 0 is_stmt 1
	sbrs r19,7
	rjmp .L20
.LVL16:
.L17:
.LBE19:
	.loc 1 104 0
	mov r24,r15
/* epilogue start */
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
.LVL17:
	pop r15
.LVL18:
	pop r14
	pop r13
	pop r12
	ret
	.cfi_endproc
.LFE15:
	.size	_ZN14CircularBuffer7getDataEPch, .-_ZN14CircularBuffer7getDataEPch
	.section	.text._ZN14CircularBuffer7putByteEcb,"ax",@progbits
.global	_ZN14CircularBuffer7putByteEcb
	.type	_ZN14CircularBuffer7putByteEcb, @function
_ZN14CircularBuffer7putByteEcb:
.LFB16:
	.loc 1 107 0
	.cfi_startproc
.LVL19:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
.LBB22:
	.loc 1 108 0
	ldd r25,Z+5
.LVL20:
	.loc 1 111 0
	cpse r20,__zero_reg__
	rjmp .L22
	.loc 1 111 0 is_stmt 0 discriminator 1
	cpse r25,__zero_reg__
	rjmp .L23
.L22:
	.loc 1 113 0 is_stmt 1
	ldd r24,Z+2
.LVL21:
	ldd r26,Z+3
	ldd r27,Z+4
	add r26,r24
	adc r27,__zero_reg__
	st X,r22
	.loc 1 115 0
	ldd r18,Z+2
.LVL22:
	ld r24,Z
	subi r24,lo8(-(-1))
	subi r18,lo8(-(1))
	and r24,r18
	std Z+2,r24
	.loc 1 120 0
	tst r25
	breq .L23
	.loc 1 121 0
	ldi r24,lo8(1)
	std Z+6,r24
	.loc 1 122 0
	std Z+5,__zero_reg__
.LVL23:
.L23:
	.loc 1 127 0
	ldd r18,Z+2
	ldd r24,Z+1
	cpse r18,r24
	rjmp .L25
	.loc 1 128 0
	ldi r24,lo8(1)
	std Z+5,r24
.L25:
	.loc 1 131 0
	tst r25
	breq .L27
	.loc 1 131 0 is_stmt 0 discriminator 1
	tst r20
	breq .L28
	.loc 1 131 0
	ldi r24,lo8(-1)
	ldi r25,lo8(-1)
	ret
.L27:
	ldi r24,0
	ldi r25,0
	ret
.L28:
	ldi r24,lo8(-2)
	ldi r25,lo8(-1)
.LBE22:
	.loc 1 132 0 is_stmt 1
	ret
	.cfi_endproc
.LFE16:
	.size	_ZN14CircularBuffer7putByteEcb, .-_ZN14CircularBuffer7putByteEcb
	.section	.text._ZN14CircularBuffer7putDataEPKchb,"ax",@progbits
.global	_ZN14CircularBuffer7putDataEPKchb
	.type	_ZN14CircularBuffer7putDataEPKchb, @function
_ZN14CircularBuffer7putDataEPKchb:
.LFB17:
	.loc 1 135 0
	.cfi_startproc
.LVL24:
	push r10
.LCFI10:
	.cfi_def_cfa_offset 3
	.cfi_offset 10, -2
	push r11
.LCFI11:
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -3
	push r13
.LCFI12:
	.cfi_def_cfa_offset 5
	.cfi_offset 13, -4
	push r14
.LCFI13:
	.cfi_def_cfa_offset 6
	.cfi_offset 14, -5
	push r15
.LCFI14:
	.cfi_def_cfa_offset 7
	.cfi_offset 15, -6
	push r16
.LCFI15:
	.cfi_def_cfa_offset 8
	.cfi_offset 16, -7
	push r17
.LCFI16:
	.cfi_def_cfa_offset 9
	.cfi_offset 17, -8
	push r28
.LCFI17:
	.cfi_def_cfa_offset 10
	.cfi_offset 28, -9
	push r29
.LCFI18:
	.cfi_def_cfa_offset 11
	.cfi_offset 29, -10
	push __zero_reg__
.LCFI19:
	.cfi_def_cfa_offset 12
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI20:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 1 */
/* stack size = 10 */
.L__stack_usage = 10
	movw r16,r24
	mov r14,r20
.LVL25:
	mov r13,r22
.LBB23:
	.loc 1 138 0
	movw r10,r22
.LVL26:
.L38:
	mov r15,r10
	sub r15,r13
.LVL27:
	.loc 1 138 0 is_stmt 0 discriminator 1
	cp r15,r14
	brsh .L40
	movw r30,r10
	ld r22,Z+
	movw r10,r30
	mov r20,r18
	movw r24,r16
	std Y+1,r18
	rcall _ZN14CircularBuffer7putByteEcb
.LVL28:
	ldd r18,Y+1
	adiw r24,2
	brne .L38
.L40:
.LBE23:
	.loc 1 142 0 is_stmt 1
	mov r24,r15
/* epilogue start */
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
.LVL29:
	pop r15
.LVL30:
	pop r14
.LVL31:
	pop r13
	pop r11
	pop r10
	ret
	.cfi_endproc
.LFE17:
	.size	_ZN14CircularBuffer7putDataEPKchb, .-_ZN14CircularBuffer7putDataEPKchb
	.text
.Letext0:
	.file 3 "../include/h_types.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x641
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF491
	.byte	0x4
	.long	.LASF492
	.long	.LASF493
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF438
	.uleb128 0x3
	.long	.LASF448
	.byte	0x3
	.byte	0x1d
	.long	0x3f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF439
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF440
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF441
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF442
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF443
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF444
	.uleb128 0x5
	.long	.LASF456
	.byte	0x7
	.byte	0x2
	.byte	0x29
	.long	0x2f9
	.uleb128 0x6
	.long	.LASF494
	.byte	0x2
	.byte	0x2
	.byte	0x32
	.long	0x9b
	.uleb128 0x7
	.long	.LASF445
	.sleb128 0
	.uleb128 0x7
	.long	.LASF446
	.sleb128 -1
	.uleb128 0x7
	.long	.LASF447
	.sleb128 -2
	.byte	0
	.uleb128 0x3
	.long	.LASF449
	.byte	0x2
	.byte	0x2d
	.long	0x34
	.uleb128 0x8
	.long	.LASF450
	.byte	0x2
	.byte	0xc7
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x8
	.long	.LASF451
	.byte	0x2
	.byte	0xc8
	.long	0xc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x3
	.uleb128 0x9
	.long	0x9b
	.uleb128 0x8
	.long	.LASF452
	.byte	0x2
	.byte	0xc9
	.long	0xc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x3
	.uleb128 0xa
	.string	"mem"
	.byte	0x2
	.byte	0xca
	.long	0x2f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x3
	.uleb128 0x8
	.long	.LASF453
	.byte	0x2
	.byte	0xcd
	.long	0x306
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0x3
	.uleb128 0x8
	.long	.LASF454
	.byte	0x2
	.byte	0xce
	.long	0x306
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0x3
	.uleb128 0x3
	.long	.LASF455
	.byte	0x2
	.byte	0x36
	.long	0x7c
	.uleb128 0xb
	.byte	0x1
	.long	.LASF456
	.byte	0x2
	.byte	0x38
	.byte	0x1
	.long	0x121
	.long	0x132
	.uleb128 0xc
	.long	0x312
	.byte	0x1
	.uleb128 0xd
	.long	0x2f9
	.uleb128 0xd
	.long	0x9b
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF457
	.byte	0x2
	.byte	0x3e
	.byte	0x1
	.long	0x143
	.long	0x150
	.uleb128 0xc
	.long	0x312
	.byte	0x1
	.uleb128 0xc
	.long	0x46
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF458
	.byte	0x2
	.byte	0x4a
	.long	.LASF460
	.long	0x9b
	.byte	0x1
	.long	0x169
	.long	0x170
	.uleb128 0xc
	.long	0x312
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF459
	.byte	0x2
	.byte	0x52
	.long	.LASF461
	.long	0x9b
	.byte	0x1
	.long	0x189
	.long	0x190
	.uleb128 0xc
	.long	0x312
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF462
	.byte	0x2
	.byte	0x53
	.long	.LASF463
	.long	0x30b
	.byte	0x1
	.long	0x1a9
	.long	0x1b0
	.uleb128 0xc
	.long	0x312
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF464
	.byte	0x2
	.byte	0x54
	.long	.LASF465
	.long	0x9b
	.byte	0x1
	.long	0x1c9
	.long	0x1d0
	.uleb128 0xc
	.long	0x312
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF466
	.byte	0x2
	.byte	0x5f
	.long	.LASF467
	.long	0x46
	.byte	0x1
	.long	0x1e9
	.long	0x1f0
	.uleb128 0xc
	.long	0x312
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF466
	.byte	0x2
	.byte	0x60
	.long	.LASF468
	.long	0x46
	.byte	0x1
	.long	0x209
	.long	0x215
	.uleb128 0xc
	.long	0x312
	.byte	0x1
	.uleb128 0xd
	.long	0x318
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF469
	.byte	0x2
	.byte	0x71
	.long	.LASF470
	.long	0x9b
	.byte	0x1
	.long	0x22e
	.long	0x23f
	.uleb128 0xc
	.long	0x312
	.byte	0x1
	.uleb128 0xd
	.long	0x2f9
	.uleb128 0xd
	.long	0x9b
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF471
	.byte	0x2
	.byte	0x86
	.long	.LASF472
	.long	0x105
	.byte	0x1
	.long	0x258
	.long	0x269
	.uleb128 0xc
	.long	0x312
	.byte	0x1
	.uleb128 0xd
	.long	0x2ff
	.uleb128 0xd
	.long	0x30b
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF473
	.byte	0x2
	.byte	0x9d
	.long	.LASF474
	.long	0x9b
	.byte	0x1
	.long	0x282
	.long	0x298
	.uleb128 0xc
	.long	0x312
	.byte	0x1
	.uleb128 0xd
	.long	0x31e
	.uleb128 0xd
	.long	0x9b
	.uleb128 0xd
	.long	0x30b
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF475
	.byte	0x2
	.byte	0xa4
	.long	.LASF477
	.byte	0x1
	.long	0x2ad
	.long	0x2b4
	.uleb128 0xc
	.long	0x312
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF476
	.byte	0x2
	.byte	0xb2
	.long	.LASF478
	.byte	0x1
	.long	0x2c9
	.long	0x2da
	.uleb128 0xc
	.long	0x312
	.byte	0x1
	.uleb128 0xd
	.long	0x31e
	.uleb128 0xd
	.long	0x9b
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF479
	.byte	0x2
	.byte	0xba
	.long	.LASF480
	.byte	0x3
	.byte	0x1
	.long	0x2ec
	.uleb128 0xc
	.long	0x312
	.byte	0x1
	.uleb128 0xd
	.long	0x9b
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x2
	.long	0x2ff
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF481
	.uleb128 0x9
	.long	0x30b
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF482
	.uleb128 0x11
	.byte	0x2
	.long	0x70
	.uleb128 0x12
	.byte	0x2
	.long	0x2ff
	.uleb128 0x11
	.byte	0x2
	.long	0x324
	.uleb128 0x13
	.long	0x2ff
	.uleb128 0x14
	.long	0x1b0
	.byte	0x3
	.long	0x337
	.long	0x342
	.uleb128 0x15
	.long	.LASF483
	.long	0x342
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.long	0x312
	.uleb128 0x14
	.long	0x2da
	.byte	0x3
	.long	0x355
	.long	0x36b
	.uleb128 0x15
	.long	.LASF483
	.long	0x342
	.byte	0x1
	.uleb128 0x16
	.long	.LASF484
	.byte	0x2
	.byte	0xba
	.long	0x9b
	.byte	0
	.uleb128 0x17
	.long	0x110
	.byte	0x1
	.byte	0x3d
	.byte	0
	.long	0x37b
	.long	0x39c
	.uleb128 0x15
	.long	.LASF483
	.long	0x342
	.byte	0x1
	.uleb128 0x16
	.long	.LASF485
	.byte	0x1
	.byte	0x3d
	.long	0x2f9
	.uleb128 0x16
	.long	.LASF484
	.byte	0x1
	.byte	0x3d
	.long	0x9b
	.byte	0
	.uleb128 0x18
	.long	0x36b
	.long	.LASF487
	.long	.LFB9
	.long	.LFE9
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0x3ba
	.byte	0x1
	.long	0x3f7
	.uleb128 0x19
	.long	0x37b
	.long	.LLST0
	.uleb128 0x1a
	.long	0x385
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x1a
	.long	0x390
	.byte	0x1
	.byte	0x64
	.uleb128 0x1b
	.long	0x347
	.long	.LBB12
	.long	.LBE12
	.byte	0x1
	.byte	0x44
	.uleb128 0x1a
	.long	0x35f
	.byte	0x1
	.byte	0x64
	.uleb128 0x19
	.long	0x355
	.long	.LLST1
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	0x132
	.byte	0x1
	.byte	0x47
	.byte	0
	.long	0x407
	.long	0x41c
	.uleb128 0x15
	.long	.LASF483
	.long	0x342
	.byte	0x1
	.uleb128 0x15
	.long	.LASF486
	.long	0x41c
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.long	0x46
	.uleb128 0x18
	.long	0x3f7
	.long	.LASF488
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0x43f
	.byte	0x1
	.long	0x44c
	.uleb128 0x1a
	.long	0x407
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x1c
	.long	0x1d0
	.byte	0x1
	.byte	0x53
	.long	.LFB14
	.long	.LFE14
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0x468
	.byte	0x1
	.long	0x48d
	.uleb128 0x1d
	.long	.LASF483
	.long	0x342
	.byte	0x1
	.long	.LLST2
	.uleb128 0x1e
	.long	.LBB14
	.long	.LBE14
	.uleb128 0x1f
	.string	"ch"
	.byte	0x1
	.byte	0x57
	.long	0x2ff
	.byte	0x1
	.byte	0x68
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x1f0
	.byte	0x3
	.long	0x49b
	.long	0x4bb
	.uleb128 0x15
	.long	.LASF483
	.long	0x342
	.byte	0x1
	.uleb128 0x20
	.string	"ch"
	.byte	0x2
	.byte	0x60
	.long	0x4bb
	.uleb128 0x21
	.uleb128 0x22
	.string	"j"
	.byte	0x2
	.byte	0x60
	.long	0x46
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x318
	.uleb128 0x23
	.long	0x215
	.byte	0x1
	.byte	0x61
	.long	.LFB15
	.long	.LFE15
	.long	.LLST3
	.long	0x4dc
	.byte	0x1
	.long	0x56a
	.uleb128 0x1d
	.long	.LASF483
	.long	0x342
	.byte	0x1
	.long	.LLST4
	.uleb128 0x24
	.long	.LASF489
	.byte	0x1
	.byte	0x61
	.long	0x2f9
	.long	.LLST5
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.byte	0x61
	.long	0x9b
	.long	.LLST6
	.uleb128 0x1e
	.long	.LBB19
	.long	.LBE19
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.byte	0x63
	.long	0x9b
	.long	.LLST7
	.uleb128 0x1b
	.long	0x48d
	.long	.LBB20
	.long	.LBE20
	.byte	0x1
	.byte	0x64
	.uleb128 0x19
	.long	0x4a5
	.long	.LLST8
	.uleb128 0x19
	.long	0x49b
	.long	.LLST9
	.uleb128 0x1e
	.long	.LBB21
	.long	.LBE21
	.uleb128 0x27
	.long	0x4b0
	.long	.LLST10
	.uleb128 0x28
	.long	.LVL13
	.long	0x44c
	.uleb128 0x29
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
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x23f
	.byte	0x1
	.byte	0x6a
	.long	.LFB16
	.long	.LFE16
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0x586
	.byte	0x1
	.long	0x5c4
	.uleb128 0x1d
	.long	.LASF483
	.long	0x342
	.byte	0x1
	.long	.LLST11
	.uleb128 0x2a
	.string	"ch"
	.byte	0x1
	.byte	0x6a
	.long	0x324
	.byte	0x1
	.byte	0x66
	.uleb128 0x2b
	.long	.LASF490
	.byte	0x1
	.byte	0x6a
	.long	0x30b
	.byte	0x1
	.byte	0x64
	.uleb128 0x1e
	.long	.LBB22
	.long	.LBE22
	.uleb128 0x1f
	.string	"ow"
	.byte	0x1
	.byte	0x6c
	.long	0x30b
	.byte	0x1
	.byte	0x69
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0x269
	.byte	0x1
	.byte	0x86
	.long	.LFB17
	.long	.LFE17
	.long	.LLST12
	.long	0x5dc
	.byte	0x1
	.uleb128 0x1d
	.long	.LASF483
	.long	0x342
	.byte	0x1
	.long	.LLST13
	.uleb128 0x24
	.long	.LASF489
	.byte	0x1
	.byte	0x86
	.long	0x31e
	.long	.LLST14
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.byte	0x86
	.long	0x9b
	.long	.LLST15
	.uleb128 0x24
	.long	.LASF490
	.byte	0x1
	.byte	0x86
	.long	0x30b
	.long	.LLST16
	.uleb128 0x1e
	.long	.LBB23
	.long	.LBE23
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.byte	0x88
	.long	0x9b
	.long	.LLST17
	.uleb128 0x28
	.long	.LVL28
	.long	0x56a
	.uleb128 0x29
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
	.uleb128 0x4
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0xc
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
	.uleb128 0x10
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
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x6
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL2
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL2
	.long	.LFE9
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
	.long	.LVL1
	.long	.LVL2
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL2
	.long	.LFE9
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST2:
	.long	.LVL4
	.long	.LVL5
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL5
	.long	.LFE14
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST3:
	.long	.LFB15
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
	.long	.LFE15
	.word	0x2
	.byte	0x8c
	.sleb128 11
	.long	0
	.long	0
.LLST4:
	.long	.LVL8
	.long	.LVL10
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL10
	.long	.LVL17
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL17
	.long	.LFE15
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL8
	.long	.LVL10
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL10
	.long	.LFE15
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL8
	.long	.LVL10
	.word	0x1
	.byte	0x64
	.long	.LVL10
	.long	.LFE15
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL9
	.long	.LVL10
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL11
	.long	.LVL18
	.word	0x1
	.byte	0x5f
	.long	.LVL18
	.long	.LFE15
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST8:
	.long	.LVL12
	.long	.LVL15
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL15
	.long	.LVL16
	.word	0x3
	.byte	0x7c
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL12
	.long	.LVL16
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST10:
	.long	.LVL14
	.long	.LVL16
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST11:
	.long	.LVL19
	.long	.LVL21
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL21
	.long	.LFE16
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST12:
	.long	.LFB17
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
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI20
	.long	.LFE17
	.word	0x2
	.byte	0x8c
	.sleb128 12
	.long	0
	.long	0
.LLST13:
	.long	.LVL24
	.long	.LVL26
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL26
	.long	.LVL29
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL29
	.long	.LFE17
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL24
	.long	.LVL26
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL26
	.long	.LFE17
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL24
	.long	.LVL26
	.word	0x1
	.byte	0x64
	.long	.LVL26
	.long	.LVL31
	.word	0x1
	.byte	0x5e
	.long	.LVL31
	.long	.LFE17
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LVL24
	.long	.LVL26
	.word	0x1
	.byte	0x62
	.long	.LVL26
	.long	.LFE17
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL25
	.long	.LVL26
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL27
	.long	.LVL30
	.word	0x1
	.byte	0x5f
	.long	.LVL30
	.long	.LFE17
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x44
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB9
	.long	.LFE9
	.long	.LFB12
	.long	.LFE12
	.long	.LFB14
	.long	.LFE14
	.long	.LFB15
	.long	.LFE15
	.long	.LFB16
	.long	.LFE16
	.long	.LFB17
	.long	.LFE17
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
	.byte	0x5
	.uleb128 0x17
	.long	.LASF428
	.byte	0x3
	.uleb128 0x19
	.uleb128 0x3
	.byte	0x7
	.long	.Ldebug_macro2
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.byte	0x5
	.uleb128 0x26
	.long	.LASF437
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
	.long	.LASF429
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF430
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF431
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF432
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF433
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF434
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.circbuff.h.32.31ee656e2a3e90fb4ddee1dbdf5d6d60,comdat
.Ldebug_macro3:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x20
	.long	.LASF435
	.byte	0x5
	.uleb128 0x41
	.long	.LASF436
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF36:
	.string	"__WINT_TYPE__ int"
.LASF346:
	.string	"__BUILTIN_AVR_INSERT_BITS 1"
.LASF133:
	.string	"__FLT_MAX__ 3.40282347e+38F"
.LASF76:
	.string	"__LONG_LONG_MAX__ 9223372036854775807LL"
.LASF181:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF123:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF431:
	.string	"UNUSED(x) (void)(x)"
.LASF354:
	.string	"__BUILTIN_AVR_ABSLK 1"
.LASF494:
	.string	"putres_e"
.LASF180:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF97:
	.string	"__INT_LEAST8_MAX__ 127"
.LASF417:
	.string	"__BUILTIN_AVR_UKBITS 1"
.LASF453:
	.string	"overflow"
.LASF89:
	.string	"__INT8_MAX__ 127"
.LASF106:
	.string	"__UINT8_C(c) c"
.LASF91:
	.string	"__INT32_MAX__ 2147483647L"
.LASF388:
	.string	"__BUILTIN_AVR_BITSHR 1"
.LASF270:
	.string	"__QQ_IBIT__ 0"
.LASF286:
	.string	"__UDQ_IBIT__ 0"
.LASF10:
	.string	"__ATOMIC_RELEASE 3"
.LASF361:
	.string	"__BUILTIN_AVR_ROUNDUR 1"
.LASF480:
	.string	"_ZN14CircularBuffer11evalBuffDimEh"
.LASF311:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 1"
.LASF103:
	.string	"__INT_LEAST64_MAX__ 9223372036854775807LL"
.LASF469:
	.string	"getData"
.LASF432:
	.string	"_uSec(n) (n)"
.LASF323:
	.string	"__SIZEOF_WINT_T__ 2"
.LASF220:
	.string	"__LLFRACT_IBIT__ 0"
.LASF159:
	.string	"__LDBL_MAX_10_EXP__ 38"
.LASF196:
	.string	"__USFRACT_MIN__ 0.0UHR"
.LASF377:
	.string	"__BUILTIN_AVR_COUNTLSUR 1"
.LASF4:
	.string	"__GNUC_MINOR__ 8"
.LASF440:
	.string	"unsigned int"
.LASF366:
	.string	"__BUILTIN_AVR_ROUNDLK 1"
.LASF337:
	.string	"__BUILTIN_AVR_SEI 1"
.LASF23:
	.string	"__SIZEOF_SIZE_T__ 2"
.LASF471:
	.string	"putByte"
.LASF22:
	.string	"__SIZEOF_LONG_DOUBLE__ 4"
.LASF332:
	.string	"__AVR_HAVE_16BIT_SP__ 1"
.LASF3:
	.string	"__GNUC__ 4"
.LASF27:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF227:
	.string	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR"
.LASF185:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF476:
	.string	"setBufferSpec"
.LASF57:
	.string	"__UINT_LEAST64_TYPE__ long long unsigned int"
.LASF382:
	.string	"__BUILTIN_AVR_COUNTLSLK 1"
.LASF262:
	.string	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-47LLK"
.LASF34:
	.string	"__PTRDIFF_TYPE__ int"
.LASF148:
	.string	"__DBL_MIN__ double(1.17549435e-38L)"
.LASF173:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF17:
	.string	"__SIZEOF_LONG__ 4"
.LASF8:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF19:
	.string	"__SIZEOF_SHORT__ 2"
.LASF135:
	.string	"__FLT_EPSILON__ 1.19209290e-7F"
.LASF78:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF305:
	.string	"__REGISTER_PREFIX__ "
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
.LASF375:
	.string	"__BUILTIN_AVR_COUNTLSLLR 1"
.LASF151:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF210:
	.string	"__LFRACT_IBIT__ 0"
.LASF328:
	.string	"__AVR_ATtiny85__ 1"
.LASF484:
	.string	"lmem"
.LASF450:
	.string	"m_bufferDim"
.LASF326:
	.string	"__AVR__ 1"
.LASF54:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF364:
	.string	"__BUILTIN_AVR_ROUNDHK 1"
.LASF188:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF225:
	.string	"__ULLFRACT_IBIT__ 0"
.LASF376:
	.string	"__BUILTIN_AVR_COUNTLSUHR 1"
.LASF478:
	.string	"_ZN14CircularBuffer13setBufferSpecEPKch"
.LASF7:
	.string	"__ATOMIC_RELAXED 0"
.LASF52:
	.string	"__INT_LEAST32_TYPE__ long int"
.LASF416:
	.string	"__BUILTIN_AVR_UHKBITS 1"
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
.LASF421:
	.string	"__BUILTIN_AVR_ROUNDFX 1"
.LASF266:
	.string	"__ULLACCUM_MIN__ 0.0ULLK"
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
.LASF292:
	.string	"__SA_IBIT__ 16"
.LASF222:
	.string	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR"
.LASF127:
	.string	"__FLT_DIG__ 6"
.LASF143:
	.string	"__DBL_MIN_10_EXP__ (-37)"
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
.LASF238:
	.string	"__USACCUM_EPSILON__ 0x1P-8UHK"
.LASF257:
	.string	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK"
.LASF207:
	.string	"__UFRACT_MAX__ 0XFFFFP-16UR"
.LASF192:
	.string	"__SFRACT_MAX__ 0X7FP-7HR"
.LASF444:
	.string	"long long unsigned int"
.LASF122:
	.string	"__UINTPTR_MAX__ 65535U"
.LASF183:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF35:
	.string	"__WCHAR_TYPE__ int"
.LASF218:
	.string	"__ULFRACT_EPSILON__ 0x1P-32ULR"
.LASF479:
	.string	"evalBuffDim"
.LASF215:
	.string	"__ULFRACT_IBIT__ 0"
.LASF288:
	.string	"__UTQ_IBIT__ 0"
.LASF378:
	.string	"__BUILTIN_AVR_COUNTLSULR 1"
.LASF125:
	.string	"__FLT_RADIX__ 2"
.LASF396:
	.string	"__BUILTIN_AVR_BITSHK 1"
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
.LASF446:
	.string	"OVERWRITTEN"
.LASF63:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF39:
	.string	"__CHAR16_TYPE__ unsigned int"
.LASF229:
	.string	"__SACCUM_FBIT__ 7"
.LASF179:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF201:
	.string	"__FRACT_MIN__ (-0.5R-0.5R)"
.LASF315:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 1"
.LASF427:
	.string	"CIRCBUFF_POW2DIM 1"
.LASF367:
	.string	"__BUILTIN_AVR_ROUNDLLK 1"
.LASF393:
	.string	"__BUILTIN_AVR_BITSUR 1"
.LASF248:
	.string	"__UACCUM_EPSILON__ 0x1P-16UK"
.LASF113:
	.string	"__INT_FAST8_MAX__ 127"
.LASF240:
	.string	"__ACCUM_IBIT__ 16"
.LASF385:
	.string	"__BUILTIN_AVR_COUNTLSUK 1"
.LASF276:
	.string	"__DQ_IBIT__ 0"
.LASF324:
	.string	"__SIZEOF_PTRDIFF_T__ 2"
.LASF230:
	.string	"__SACCUM_IBIT__ 8"
.LASF392:
	.string	"__BUILTIN_AVR_BITSUHR 1"
.LASF344:
	.string	"__BUILTIN_AVR_FMULSU 1"
.LASF191:
	.string	"__SFRACT_MIN__ (-0.5HR-0.5HR)"
.LASF300:
	.string	"__USA_IBIT__ 16"
.LASF489:
	.string	"buff"
.LASF182:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF153:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF154:
	.string	"__LDBL_MANT_DIG__ 24"
.LASF20:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF330:
	.string	"__AVR_HAVE_LPMX__ 1"
.LASF110:
	.string	"__UINT32_C(c) c ## UL"
.LASF301:
	.string	"__UDA_FBIT__ 32"
.LASF474:
	.string	"_ZN14CircularBuffer7putDataEPKchb"
.LASF452:
	.string	"wPtr"
.LASF259:
	.string	"__LLACCUM_FBIT__ 47"
.LASF25:
	.string	"__BIGGEST_ALIGNMENT__ 1"
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
.LASF203:
	.string	"__FRACT_EPSILON__ 0x1P-15R"
.LASF189:
	.string	"__SFRACT_FBIT__ 7"
.LASF390:
	.string	"__BUILTIN_AVR_BITSLR 1"
.LASF70:
	.string	"__GXX_ABI_VERSION 1002"
.LASF433:
	.string	"_mSec(n) ((n)*1000UL)"
.LASF14:
	.string	"__OPTIMIZE__ 1"
.LASF291:
	.string	"__SA_FBIT__ 15"
.LASF345:
	.string	"__BUILTIN_AVR_DELAY_CYCLES 1"
.LASF6:
	.string	"__VERSION__ \"4.8.1\""
.LASF87:
	.string	"__SIG_ATOMIC_MAX__ 127"
.LASF429:
	.string	"H_TYPES_H_ "
.LASF233:
	.string	"__SACCUM_EPSILON__ 0x1P-7HK"
.LASF261:
	.string	"__LLACCUM_MIN__ (-0X1P15LLK-0X1P15LLK)"
.LASF59:
	.string	"__INT_FAST16_TYPE__ int"
.LASF144:
	.string	"__DBL_MAX_EXP__ 128"
.LASF383:
	.string	"__BUILTIN_AVR_COUNTLSLLK 1"
.LASF411:
	.string	"__BUILTIN_AVR_ULLRBITS 1"
.LASF310:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 1"
.LASF336:
	.string	"__BUILTIN_AVR_NOP 1"
.LASF282:
	.string	"__UHQ_IBIT__ 0"
.LASF50:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF131:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF53:
	.string	"__INT_LEAST64_TYPE__ long long int"
.LASF26:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF234:
	.string	"__USACCUM_FBIT__ 8"
.LASF126:
	.string	"__FLT_MANT_DIG__ 24"
.LASF284:
	.string	"__USQ_IBIT__ 0"
.LASF454:
	.string	"overwritten"
.LASF245:
	.string	"__UACCUM_IBIT__ 16"
.LASF164:
	.string	"__LDBL_DENORM_MIN__ 1.40129846e-45L"
.LASF371:
	.string	"__BUILTIN_AVR_ROUNDULLK 1"
.LASF235:
	.string	"__USACCUM_IBIT__ 8"
.LASF95:
	.string	"__UINT32_MAX__ 4294967295UL"
.LASF47:
	.string	"__UINT16_TYPE__ unsigned int"
.LASF199:
	.string	"__FRACT_FBIT__ 15"
.LASF419:
	.string	"__BUILTIN_AVR_ULLKBITS 1"
.LASF463:
	.string	"_ZN14CircularBuffer9overWriteEv"
.LASF397:
	.string	"__BUILTIN_AVR_BITSK 1"
.LASF466:
	.string	"getByte"
.LASF424:
	.string	"__INT24_MIN__ (-__INT24_MAX__-1)"
.LASF239:
	.string	"__ACCUM_FBIT__ 15"
.LASF313:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 1"
.LASF176:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF255:
	.string	"__ULACCUM_IBIT__ 32"
.LASF219:
	.string	"__LLFRACT_FBIT__ 63"
.LASF317:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 1"
.LASF327:
	.string	"__AVR_ARCH__ 25"
.LASF299:
	.string	"__USA_FBIT__ 16"
.LASF368:
	.string	"__BUILTIN_AVR_ROUNDUHK 1"
.LASF448:
	.string	"uint8_t"
.LASF101:
	.string	"__INT_LEAST32_MAX__ 2147483647L"
.LASF172:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF209:
	.string	"__LFRACT_FBIT__ 31"
.LASF15:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF119:
	.string	"__UINT_FAST32_MAX__ 4294967295UL"
.LASF386:
	.string	"__BUILTIN_AVR_COUNTLSULK 1"
.LASF249:
	.string	"__LACCUM_FBIT__ 31"
.LASF208:
	.string	"__UFRACT_EPSILON__ 0x1P-16UR"
.LASF316:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 1"
.LASF488:
	.string	"_ZN14CircularBufferD2Ev"
.LASF77:
	.string	"__WCHAR_MAX__ 32767"
.LASF243:
	.string	"__ACCUM_EPSILON__ 0x1P-15K"
.LASF348:
	.string	"__BUILTIN_AVR_ABSHR 1"
.LASF334:
	.string	"__AVR_SFR_OFFSET__ 0x20"
.LASF216:
	.string	"__ULFRACT_MIN__ 0.0ULR"
.LASF69:
	.string	"__DEPRECATED 1"
.LASF349:
	.string	"__BUILTIN_AVR_ABSR 1"
.LASF287:
	.string	"__UTQ_FBIT__ 128"
.LASF90:
	.string	"__INT16_MAX__ 32767"
.LASF443:
	.string	"long long int"
.LASF24:
	.string	"__CHAR_BIT__ 8"
.LASF456:
	.string	"CircularBuffer"
.LASF263:
	.string	"__LLACCUM_EPSILON__ 0x1P-47LLK"
.LASF472:
	.string	"_ZN14CircularBuffer7putByteEcb"
.LASF309:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 1"
.LASF415:
	.string	"__BUILTIN_AVR_LLKBITS 1"
.LASF155:
	.string	"__LDBL_DIG__ 6"
.LASF232:
	.string	"__SACCUM_MAX__ 0X7FFFP-7HK"
.LASF365:
	.string	"__BUILTIN_AVR_ROUNDK 1"
.LASF278:
	.string	"__TQ_IBIT__ 0"
.LASF297:
	.string	"__UHA_FBIT__ 8"
.LASF73:
	.string	"__SHRT_MAX__ 32767"
.LASF318:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF109:
	.string	"__UINT_LEAST32_MAX__ 4294967295UL"
.LASF426:
	.string	"__ELF__ 1"
.LASF482:
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
.LASF9:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF492:
	.string	"../circbuff.cpp"
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
.LASF244:
	.string	"__UACCUM_FBIT__ 16"
.LASF384:
	.string	"__BUILTIN_AVR_COUNTLSUHK 1"
.LASF132:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF356:
	.string	"__BUILTIN_AVR_ROUNDHR 1"
.LASF12:
	.string	"__ATOMIC_CONSUME 1"
.LASF381:
	.string	"__BUILTIN_AVR_COUNTLSK 1"
.LASF214:
	.string	"__ULFRACT_FBIT__ 32"
.LASF21:
	.string	"__SIZEOF_DOUBLE__ 4"
.LASF60:
	.string	"__INT_FAST32_TYPE__ long int"
.LASF241:
	.string	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)"
.LASF434:
	.string	"_Sec(n) ((n)*1000000UL)"
.LASF5:
	.string	"__GNUC_PATCHLEVEL__ 1"
.LASF398:
	.string	"__BUILTIN_AVR_BITSLK 1"
.LASF493:
	.string	"/home/sergio/workspace-a/mblk84/sblk85"
.LASF202:
	.string	"__FRACT_MAX__ 0X7FFFP-15R"
.LASF45:
	.string	"__INT64_TYPE__ long long int"
.LASF254:
	.string	"__ULACCUM_FBIT__ 32"
.LASF485:
	.string	"bmem"
.LASF206:
	.string	"__UFRACT_MIN__ 0.0UR"
.LASF325:
	.string	"__AVR 1"
.LASF184:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF329:
	.string	"__AVR_HAVE_MOVW__ 1"
.LASF379:
	.string	"__BUILTIN_AVR_COUNTLSULLR 1"
.LASF200:
	.string	"__FRACT_IBIT__ 0"
.LASF252:
	.string	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK"
.LASF166:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF65:
	.string	"__UINT_FAST64_TYPE__ long long unsigned int"
.LASF134:
	.string	"__FLT_MIN__ 1.17549435e-38F"
.LASF107:
	.string	"__UINT_LEAST16_MAX__ 65535U"
.LASF445:
	.string	"WRITTEN"
.LASF224:
	.string	"__ULLFRACT_FBIT__ 64"
.LASF265:
	.string	"__ULLACCUM_IBIT__ 16"
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
.LASF394:
	.string	"__BUILTIN_AVR_BITSULR 1"
.LASF157:
	.string	"__LDBL_MIN_10_EXP__ (-37)"
.LASF161:
	.string	"__LDBL_MAX__ 3.40282347e+38L"
.LASF223:
	.string	"__LLFRACT_EPSILON__ 0x1P-63LLR"
.LASF355:
	.string	"__BUILTIN_AVR_ABSLLK 1"
.LASF145:
	.string	"__DBL_MAX_10_EXP__ 38"
.LASF40:
	.string	"__CHAR32_TYPE__ long unsigned int"
.LASF272:
	.string	"__HQ_IBIT__ 0"
.LASF56:
	.string	"__UINT_LEAST32_TYPE__ long unsigned int"
.LASF275:
	.string	"__DQ_FBIT__ 63"
.LASF237:
	.string	"__USACCUM_MAX__ 0XFFFFP-8UHK"
.LASF483:
	.string	"this"
.LASF258:
	.string	"__ULACCUM_EPSILON__ 0x1P-32ULK"
.LASF468:
	.string	"_ZN14CircularBuffer7getByteERc"
.LASF93:
	.string	"__UINT8_MAX__ 255"
.LASF28:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF487:
	.string	"_ZN14CircularBufferC2EPch"
.LASF274:
	.string	"__SQ_IBIT__ 0"
.LASF481:
	.string	"char"
.LASF150:
	.string	"__DBL_DENORM_MIN__ double(1.40129846e-45L)"
.LASF51:
	.string	"__INT_LEAST16_TYPE__ int"
.LASF187:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF279:
	.string	"__UQQ_FBIT__ 8"
.LASF490:
	.string	"overwrite"
.LASF72:
	.string	"__SCHAR_MAX__ 127"
.LASF74:
	.string	"__INT_MAX__ 32767"
.LASF331:
	.string	"__AVR_2_BYTE_PC__ 1"
.LASF430:
	.string	"NULL __null"
.LASF247:
	.string	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK"
.LASF177:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF339:
	.string	"__BUILTIN_AVR_WDR 1"
.LASF281:
	.string	"__UHQ_FBIT__ 16"
.LASF44:
	.string	"__INT32_TYPE__ long int"
.LASF407:
	.string	"__BUILTIN_AVR_LLRBITS 1"
.LASF441:
	.string	"long int"
.LASF451:
	.string	"rPtr"
.LASF273:
	.string	"__SQ_FBIT__ 31"
.LASF80:
	.string	"__WINT_MIN__ (-__WINT_MAX__ - 1)"
.LASF211:
	.string	"__LFRACT_MIN__ (-0.5LR-0.5LR)"
.LASF307:
	.string	"__GNUC_GNU_INLINE__ 1"
.LASF32:
	.string	"__GNUG__ 4"
.LASF338:
	.string	"__BUILTIN_AVR_CLI 1"
.LASF62:
	.string	"__UINT_FAST8_TYPE__ unsigned char"
.LASF167:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF42:
	.string	"__INT8_TYPE__ signed char"
.LASF306:
	.string	"__USER_LABEL_PREFIX__ "
.LASF420:
	.string	"__BUILTIN_AVR_ABSFX 1"
.LASF473:
	.string	"putData"
.LASF353:
	.string	"__BUILTIN_AVR_ABSK 1"
.LASF277:
	.string	"__TQ_FBIT__ 127"
.LASF55:
	.string	"__UINT_LEAST16_TYPE__ unsigned int"
.LASF198:
	.string	"__USFRACT_EPSILON__ 0x1P-8UHR"
.LASF333:
	.string	"__AVR_HAVE_SPH__ 1"
.LASF322:
	.string	"__SIZEOF_WCHAR_T__ 2"
.LASF335:
	.string	"__WITH_AVRLIBC__ 1"
.LASF92:
	.string	"__INT64_MAX__ 9223372036854775807LL"
.LASF58:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF194:
	.string	"__USFRACT_FBIT__ 8"
.LASF285:
	.string	"__UDQ_FBIT__ 64"
.LASF271:
	.string	"__HQ_FBIT__ 15"
.LASF298:
	.string	"__UHA_IBIT__ 8"
.LASF190:
	.string	"__SFRACT_IBIT__ 0"
.LASF475:
	.string	"reset"
.LASF18:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF46:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF347:
	.string	"__BUILTIN_AVR_FLASH_SEGMENT 1"
.LASF350:
	.string	"__BUILTIN_AVR_ABSLR 1"
.LASF104:
	.string	"__INT64_C(c) c ## LL"
.LASF158:
	.string	"__LDBL_MAX_EXP__ 128"
.LASF160:
	.string	"__DECIMAL_DIG__ 9"
.LASF412:
	.string	"__BUILTIN_AVR_HKBITS 1"
.LASF48:
	.string	"__UINT32_TYPE__ long unsigned int"
.LASF31:
	.string	"__SIZEOF_POINTER__ 2"
.LASF414:
	.string	"__BUILTIN_AVR_LKBITS 1"
.LASF370:
	.string	"__BUILTIN_AVR_ROUNDULK 1"
.LASF460:
	.string	"_ZN14CircularBuffer8dataSizeEv"
.LASF486:
	.string	"__in_chrg"
.LASF217:
	.string	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR"
.LASF81:
	.string	"__PTRDIFF_MAX__ 32767"
.LASF1:
	.string	"__cplusplus 199711L"
.LASF352:
	.string	"__BUILTIN_AVR_ABSHK 1"
.LASF464:
	.string	"bufferDim"
.LASF231:
	.string	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)"
.LASF319:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 1"
.LASF405:
	.string	"__BUILTIN_AVR_RBITS 1"
.LASF112:
	.string	"__UINT64_C(c) c ## ULL"
.LASF253:
	.string	"__LACCUM_EPSILON__ 0x1P-31LK"
.LASF43:
	.string	"__INT16_TYPE__ int"
.LASF193:
	.string	"__SFRACT_EPSILON__ 0x1P-7HR"
.LASF391:
	.string	"__BUILTIN_AVR_BITSLLR 1"
.LASF280:
	.string	"__UQQ_IBIT__ 0"
.LASF428:
	.string	"CIRCBUFF_H_ "
.LASF283:
	.string	"__USQ_FBIT__ 32"
.LASF290:
	.string	"__HA_IBIT__ 8"
.LASF442:
	.string	"long unsigned int"
.LASF312:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 1"
.LASF447:
	.string	"NOT_WRITTEN"
.LASF267:
	.string	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-48ULLK"
.LASF136:
	.string	"__FLT_DENORM_MIN__ 1.40129846e-45F"
.LASF380:
	.string	"__BUILTIN_AVR_COUNTLSHK 1"
.LASF422:
	.string	"__BUILTIN_AVR_COUNTLSFX 1"
.LASF85:
	.string	"__UINTMAX_MAX__ 18446744073709551615ULL"
.LASF457:
	.string	"~CircularBuffer"
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
.LASF116:
	.string	"__INT_FAST64_MAX__ 9223372036854775807LL"
.LASF465:
	.string	"_ZN14CircularBuffer9bufferDimEv"
.LASF82:
	.string	"__SIZE_MAX__ 65535U"
.LASF163:
	.string	"__LDBL_EPSILON__ 1.19209290e-7L"
.LASF423:
	.string	"__INT24_MAX__ 8388607L"
.LASF418:
	.string	"__BUILTIN_AVR_ULKBITS 1"
.LASF470:
	.string	"_ZN14CircularBuffer7getDataEPch"
.LASF462:
	.string	"overWrite"
.LASF130:
	.string	"__FLT_MAX_EXP__ 128"
.LASF11:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF439:
	.string	"unsigned char"
.LASF169:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF38:
	.string	"__UINTMAX_TYPE__ long long unsigned int"
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
.LASF358:
	.string	"__BUILTIN_AVR_ROUNDLR 1"
.LASF114:
	.string	"__INT_FAST16_MAX__ 32767"
.LASF120:
	.string	"__UINT_FAST64_MAX__ 18446744073709551615ULL"
.LASF33:
	.string	"__SIZE_TYPE__ unsigned int"
.LASF170:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF436:
	.string	"__CIRCBUFFDIM() ((wPtr-rPtr)&(bufferDim()-1))"
.LASF162:
	.string	"__LDBL_MIN__ 1.17549435e-38L"
.LASF409:
	.string	"__BUILTIN_AVR_URBITS 1"
.LASF75:
	.string	"__LONG_MAX__ 2147483647L"
.LASF314:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 1"
.LASF295:
	.string	"__TA_FBIT__ 47"
.LASF395:
	.string	"__BUILTIN_AVR_BITSULLR 1"
.LASF374:
	.string	"__BUILTIN_AVR_COUNTLSLR 1"
.LASF461:
	.string	"_ZN14CircularBuffer9freeSpaceEv"
.LASF129:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF152:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF49:
	.string	"__UINT64_TYPE__ long long unsigned int"
.LASF403:
	.string	"__BUILTIN_AVR_BITSULLK 1"
.LASF16:
	.string	"__SIZEOF_INT__ 2"
.LASF139:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF146:
	.string	"__DBL_DECIMAL_DIG__ 9"
.LASF37:
	.string	"__INTMAX_TYPE__ long long int"
.LASF84:
	.string	"__INTMAX_C(c) c ## LL"
.LASF458:
	.string	"dataSize"
.LASF140:
	.string	"__DBL_MANT_DIG__ 24"
.LASF71:
	.string	"__USING_SJLJ_EXCEPTIONS__ 1"
.LASF438:
	.string	"signed char"
.LASF343:
	.string	"__BUILTIN_AVR_FMULS 1"
.LASF437:
	.string	"_INIT_(m) m_bufferDim(0), rPtr(0), wPtr(0), mem(m), overflow(false), overwritten(false)"
.LASF435:
	.string	"CIRCBUFF_SIZE_T uint8_t"
.LASF491:
	.string	"GNU C++ 4.8.1 -mmcu=attiny85 -g3 -Os -ansi -ffunction-sections -fdata-sections -fno-threadsafe-statics -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF115:
	.string	"__INT_FAST32_MAX__ 2147483647L"
.LASF459:
	.string	"freeSpace"
.LASF467:
	.string	"_ZN14CircularBuffer7getByteEv"
.LASF149:
	.string	"__DBL_EPSILON__ double(1.19209290e-7L)"
.LASF410:
	.string	"__BUILTIN_AVR_ULRBITS 1"
.LASF351:
	.string	"__BUILTIN_AVR_ABSLLR 1"
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
.LASF308:
	.string	"__STRICT_ANSI__ 1"
.LASF13:
	.string	"__OPTIMIZE_SIZE__ 1"
.LASF477:
	.string	"_ZN14CircularBuffer5resetEv"
.LASF455:
	.string	"putres_et"
.LASF340:
	.string	"__BUILTIN_AVR_SLEEP 1"
.LASF269:
	.string	"__QQ_FBIT__ 7"
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
.LASF449:
	.string	"m_size"
.LASF321:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF221:
	.string	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)"
.LASF228:
	.string	"__ULLFRACT_EPSILON__ 0x1P-64ULLR"
.LASF260:
	.string	"__LLACCUM_IBIT__ 16"
.LASF156:
	.string	"__LDBL_MIN_EXP__ (-125)"
.LASF118:
	.string	"__UINT_FAST16_MAX__ 65535U"
.LASF79:
	.string	"__WINT_MAX__ 32767"
.LASF175:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF137:
	.string	"__FLT_HAS_DENORM__ 1"
	.ident	"GCC: (GNU) 4.8.1"
