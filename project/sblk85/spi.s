	.file	"spi.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._ZN14CircularBuffer11evalBuffDimEh,"axG",@progbits,_ZN14CircularBuffer11evalBuffDimEh,comdat
	.weak	_ZN14CircularBuffer11evalBuffDimEh
	.type	_ZN14CircularBuffer11evalBuffDimEh, @function
_ZN14CircularBuffer11evalBuffDimEh:
.LFB7:
	.file 1 "../circbuff.h"
	.loc 1 186 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	.loc 1 189 0
	ldi r24,lo8(-128)
.LVL1:
.L8:
	.loc 1 191 0
	st Z,r24
	.loc 1 190 0
	ld r24,Z
	tst r24
	breq .L1
	.loc 1 190 0 is_stmt 0 discriminator 2
	mov r25,r22
	and r25,r24
	brne .L1
	.loc 1 191 0 is_stmt 1
	ldi r25,0
	asr r25
	ror r24
	rjmp .L8
.L1:
	ret
	.cfi_endproc
.LFE7:
	.size	_ZN14CircularBuffer11evalBuffDimEh, .-_ZN14CircularBuffer11evalBuffDimEh
	.section	.text._ZN3SPIC2Ev,"ax",@progbits
.global	_ZN3SPIC2Ev
	.type	_ZN3SPIC2Ev, @function
_ZN3SPIC2Ev:
.LFB55:
	.file 2 "../spi.cpp"
	.loc 2 44 0
	.cfi_startproc
.LVL2:
	push r28
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
.LBB53:
	.loc 2 45 0
	st Y,__zero_reg__
	std Y+1,__zero_reg__
	ldi r24,lo8(1)
.LVL3:
	std Y+2,r24
	std Y+3,__zero_reg__
	std Y+5,__zero_reg__
	std Y+4,__zero_reg__
	ldi r20,0
	ldi r22,0
	ldi r23,0
	movw r24,r28
	adiw r24,6
	rcall _ZN14CircularBufferC1EPch
.LVL4:
	ldi r20,0
	ldi r22,0
	ldi r23,0
	movw r24,r28
	adiw r24,13
/* epilogue start */
.LBE53:
	.loc 2 47 0
	pop r29
	pop r28
.LVL5:
.LBB54:
	.loc 2 45 0
	rjmp _ZN14CircularBufferC1EPch
.LVL6:
.LBE54:
	.cfi_endproc
.LFE55:
	.size	_ZN3SPIC2Ev, .-_ZN3SPIC2Ev
.global	_ZN3SPIC1Ev
	.set	_ZN3SPIC1Ev,_ZN3SPIC2Ev
	.section	.text._ZN3SPID2Ev,"ax",@progbits
.global	_ZN3SPID2Ev
	.type	_ZN3SPID2Ev, @function
_ZN3SPID2Ev:
.LFB58:
	.loc 2 49 0
	.cfi_startproc
.LVL7:
	push r28
.LCFI2:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI3:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
.LBB55:
	.loc 2 49 0
	adiw r24,13
.LVL8:
	rcall _ZN14CircularBufferD1Ev
.LVL9:
	movw r24,r28
	adiw r24,6
/* epilogue start */
.LBE55:
	.loc 2 51 0
	pop r29
	pop r28
.LVL10:
.LBB56:
	.loc 2 49 0
	rjmp _ZN14CircularBufferD1Ev
.LVL11:
.LBE56:
	.cfi_endproc
.LFE58:
	.size	_ZN3SPID2Ev, .-_ZN3SPID2Ev
.global	_ZN3SPID1Ev
	.set	_ZN3SPID1Ev,_ZN3SPID2Ev
	.section	.text._ZN3SPI5beginEPKvhS1_hbj,"ax",@progbits
.global	_ZN3SPI5beginEPKvhS1_hbj
	.type	_ZN3SPI5beginEPKvhS1_hbj, @function
_ZN3SPI5beginEPKvhS1_hbj:
.LFB60:
	.loc 2 55 0
	.cfi_startproc
.LVL12:
	push r10
.LCFI4:
	.cfi_def_cfa_offset 3
	.cfi_offset 10, -2
	push r11
.LCFI5:
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -3
	push r12
.LCFI6:
	.cfi_def_cfa_offset 5
	.cfi_offset 12, -4
	push r13
.LCFI7:
	.cfi_def_cfa_offset 6
	.cfi_offset 13, -5
	push r14
.LCFI8:
	.cfi_def_cfa_offset 7
	.cfi_offset 14, -6
	push r16
.LCFI9:
	.cfi_def_cfa_offset 8
	.cfi_offset 16, -7
	push r28
.LCFI10:
	.cfi_def_cfa_offset 9
	.cfi_offset 28, -8
	push r29
.LCFI11:
	.cfi_def_cfa_offset 10
	.cfi_offset 29, -9
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	movw r28,r24
	movw r10,r18
.LVL13:
.LBB57:
.LBB58:
	.file 3 "../spi.h"
	.loc 3 504 0
	sts _ZN3SPI9m_spiThisE+1,r25
	sts _ZN3SPI9m_spiThisE,r24
.LVL14:
.LBE58:
.LBE57:
.LBB59:
.LBB60:
	.loc 3 483 0
	st Y,r14
.LVL15:
.LBE60:
.LBE59:
.LBB61:
.LBB62:
.LBB63:
.LBB64:
	.loc 1 178 0
	std Y+10,r23
	std Y+9,r22
	mov r22,r20
.LVL16:
	adiw r24,6
.LVL17:
	rcall _ZN14CircularBuffer11evalBuffDimEh
.LVL18:
.LBE64:
.LBE63:
.LBE62:
.LBE61:
.LBB65:
.LBB66:
.LBB67:
.LBB68:
	std Y+17,r11
	std Y+16,r10
	mov r22,r16
	movw r24,r28
	adiw r24,13
.LVL19:
	rcall _ZN14CircularBuffer11evalBuffDimEh
.LVL20:
.LBE68:
.LBE67:
.LBE66:
.LBE65:
.LBB69:
.LBB70:
	.loc 3 471 0
	std Y+5,r13
	std Y+4,r12
/* epilogue start */
.LBE70:
.LBE69:
	.loc 2 61 0
	pop r29
	pop r28
.LVL21:
	pop r16
.LVL22:
	pop r14
.LVL23:
	pop r13
	pop r12
.LVL24:
	pop r11
	pop r10
.LVL25:
	ret
	.cfi_endproc
.LFE60:
	.size	_ZN3SPI5beginEPKvhS1_hbj, .-_ZN3SPI5beginEPKvhS1_hbj
	.section	.text._ZN3SPI12outputEnableEb,"ax",@progbits
.global	_ZN3SPI12outputEnableEb
	.type	_ZN3SPI12outputEnableEb, @function
_ZN3SPI12outputEnableEb:
.LFB62:
	.loc 2 92 0
	.cfi_startproc
.LVL26:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 2 93 0
	movw r30,r24
	ld r18,Z
	cpse r18,__zero_reg__
	rjmp .L13
	.loc 2 96 0
/* #APP */
 ;  96 "../spi.cpp" 1
	cli
 ;  0 "" 2
.LVL27:
/* #NOAPP */
.LBB71:
.LBB72:
	.loc 3 459 0
	movw r30,r24
	std Z+2,r22
.LBE72:
.LBE71:
	.loc 2 98 0
	in r24,0x17
.LVL28:
	andi r24,lo8(-3)
	tst r22
	breq .L16
	ldi r25,lo8(2)
	rjmp .L15
.L16:
	ldi r25,0
.L15:
	.loc 2 98 0 is_stmt 0 discriminator 3
	or r24,r25
	out 0x17,r24
	.loc 2 99 0 is_stmt 1 discriminator 3
	cbi 0x18,1
	.loc 2 100 0 discriminator 3
/* #APP */
 ;  100 "../spi.cpp" 1
	sei
 ;  0 "" 2
.LVL29:
/* #NOAPP */
.L13:
	ret
	.cfi_endproc
.LFE62:
	.size	_ZN3SPI12outputEnableEb, .-_ZN3SPI12outputEnableEb
	.section	.text._ZN3SPI19_enableOvfInterruptEv,"ax",@progbits
.global	_ZN3SPI19_enableOvfInterruptEv
	.type	_ZN3SPI19_enableOvfInterruptEv, @function
_ZN3SPI19_enableOvfInterruptEv:
.LFB63:
	.loc 2 104 0
	.cfi_startproc
.LVL30:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB73:
	.loc 2 105 0
/* #APP */
 ;  105 "../spi.cpp" 1
	cli
 ;  0 "" 2
.LVL31:
/* #NOAPP */
.LBB74:
.LBB75:
	.loc 3 430 0
	adiw r24,13
.LVL32:
	rcall _ZN14CircularBuffer7getByteEv
.LVL33:
.LBE75:
.LBE74:
	.loc 2 110 0
	ldi r25,lo8(64)
	out 0xe,r25
	.loc 2 112 0
	sbi 0xd,6
	.loc 2 114 0
	out 0xf,r24
	.loc 2 116 0
/* #APP */
 ;  116 "../spi.cpp" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	ret
.LBE73:
	.cfi_endproc
.LFE63:
	.size	_ZN3SPI19_enableOvfInterruptEv, .-_ZN3SPI19_enableOvfInterruptEv
	.section	.text._ZN3SPI7enabledEb,"ax",@progbits
.global	_ZN3SPI7enabledEb
	.type	_ZN3SPI7enabledEb, @function
_ZN3SPI7enabledEb:
.LFB61:
	.loc 2 64 0
	.cfi_startproc
.LVL34:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 2 65 0
	out 0xd,__zero_reg__
	.loc 2 67 0
	cpse r22,__zero_reg__
	rjmp .L19
	.loc 2 69 0
	in r24,0x17
.LVL35:
	andi r24,lo8(-8)
	rjmp .L24
.LVL36:
.L19:
	.loc 2 75 0
	movw r30,r24
	ld r18,Z
	tst r18
	breq .L21
	.loc 2 77 0
	in r24,0x17
.LVL37:
	andi r24,lo8(-8)
	ori r24,lo8(5)
.LVL38:
.L24:
	out 0x17,r24
	.loc 2 79 0
	in r24,0x18
	andi r24,lo8(-8)
	out 0x18,r24
	ret
.LVL39:
.L21:
	.loc 2 82 0
	in r18,0x17
	andi r18,lo8(-8)
.LVL40:
	movw r30,r24
	ldd r19,Z+2
	tst r19
	breq .L23
	ldi r19,lo8(2)
	rjmp .L22
.L23:
	ldi r19,0
.L22:
	.loc 2 82 0 is_stmt 0 discriminator 3
	or r18,r19
	out 0x17,r18
	.loc 2 83 0 is_stmt 1 discriminator 3
	in r18,0x18
	andi r18,lo8(-8)
	out 0x18,r18
	.loc 2 85 0 discriminator 3
	ldi r18,lo8(24)
	out 0xd,r18
	.loc 2 87 0 discriminator 3
	rjmp _ZN3SPI19_enableOvfInterruptEv
.LVL41:
	.cfi_endproc
.LFE61:
	.size	_ZN3SPI7enabledEb, .-_ZN3SPI7enabledEb
	.section	.text._ZN3SPI19enhancedGetRcvdDataEPKvh,"ax",@progbits
.global	_ZN3SPI19enhancedGetRcvdDataEPKvh
	.type	_ZN3SPI19enhancedGetRcvdDataEPKvh, @function
_ZN3SPI19enhancedGetRcvdDataEPKvh:
.LFB64:
	.loc 2 120 0
	.cfi_startproc
.LVL42:
	push r7
.LCFI12:
	.cfi_def_cfa_offset 3
	.cfi_offset 7, -2
	push r8
.LCFI13:
	.cfi_def_cfa_offset 4
	.cfi_offset 8, -3
	push r9
.LCFI14:
	.cfi_def_cfa_offset 5
	.cfi_offset 9, -4
	push r10
.LCFI15:
	.cfi_def_cfa_offset 6
	.cfi_offset 10, -5
	push r11
.LCFI16:
	.cfi_def_cfa_offset 7
	.cfi_offset 11, -6
	push r12
.LCFI17:
	.cfi_def_cfa_offset 8
	.cfi_offset 12, -7
	push r13
.LCFI18:
	.cfi_def_cfa_offset 9
	.cfi_offset 13, -8
	push r14
.LCFI19:
	.cfi_def_cfa_offset 10
	.cfi_offset 14, -9
	push r15
.LCFI20:
	.cfi_def_cfa_offset 11
	.cfi_offset 15, -10
	push r16
.LCFI21:
	.cfi_def_cfa_offset 12
	.cfi_offset 16, -11
	push r17
.LCFI22:
	.cfi_def_cfa_offset 13
	.cfi_offset 17, -12
	push r28
.LCFI23:
	.cfi_def_cfa_offset 14
	.cfi_offset 28, -13
	push r29
.LCFI24:
	.cfi_def_cfa_offset 15
	.cfi_offset 29, -14
/* prologue: function */
/* frame size = 0 */
/* stack size = 13 */
.L__stack_usage = 13
	movw r28,r24
	movw r10,r22
.LVL43:
.LBB82:
	.loc 2 123 0
	ldi r16,0
	ldi r17,0
	.loc 2 127 0
	mov r12,r20
	mov r13,__zero_reg__
	.loc 2 128 0
	movw r8,r24
	ldi r24,6
	add r8,r24
	adc r9,__zero_reg__
.LVL44:
	.loc 2 131 0
	clr r7
	inc r7
.LVL45:
.L26:
	.loc 2 127 0 discriminator 1
	cp r16,r12
	cpc r17,r13
	brsh .L45
	.loc 2 128 0
	movw r14,r10
	add r14,r16
	adc r15,r17
.LVL46:
.LBB83:
.LBB84:
	.loc 1 96 0
	movw r24,r8
	rcall _ZN14CircularBuffer7getByteEv
.LVL47:
	sbrs r25,7
	rjmp .L27
	movw r30,r14
	ld r18,Z
	rjmp .L28
.L27:
	mov r18,r24
.L28:
	movw r30,r14
	st Z,r18
.LBE84:
.LBE83:
	.loc 2 128 0
	sbrc r25,7
	rjmp .L45
	.loc 2 129 0
	ldd r24,Y+1
.LVL48:
	cpse r24,__zero_reg__
	rjmp .L30
	.loc 2 130 0
	cpi r18,lo8(27)
	brne .L31
	.loc 2 131 0
	std Y+1,r7
	.loc 2 132 0
	rjmp .L26
.L31:
	.loc 2 134 0
	ldi r24,lo8(-1)
	add r24,r18
	cpi r24,lo8(-2)
	brsh .L26
	.loc 2 135 0
	cpi r18,lo8(-86)
	brne .L33
	rjmp .L26
.L30:
	.loc 2 140 0
	ldi r24,lo8(-1)
	add r24,r18
	cpi r24,lo8(-2)
	brsh .L33
	.loc 2 141 0
	cpi r18,lo8(-86)
	breq .L33
	.loc 2 142 0
	cpi r18,lo8(27)
	breq .L33
.LVL49:
.LBB85:
.LBB86:
	.loc 3 453 0
	std Y+3,r18
.LVL50:
.L33:
.LBE86:
.LBE85:
	.loc 2 147 0
	subi r16,-1
	sbci r17,-1
.LVL51:
	.loc 2 148 0
	std Y+1,__zero_reg__
	rjmp .L26
.LVL52:
.L45:
.LBE82:
	.loc 2 155 0
	mov r24,r16
/* epilogue start */
	pop r29
	pop r28
.LVL53:
	pop r17
	pop r16
.LVL54:
	pop r15
	pop r14
	pop r13
	pop r12
.LVL55:
	pop r11
	pop r10
.LVL56:
	pop r9
	pop r8
.LVL57:
	pop r7
	ret
	.cfi_endproc
.LFE64:
	.size	_ZN3SPI19enhancedGetRcvdDataEPKvh, .-_ZN3SPI19enhancedGetRcvdDataEPKvh
	.section	.text._ZN3SPI20enhancedSetData2XmitEPKvh,"ax",@progbits
.global	_ZN3SPI20enhancedSetData2XmitEPKvh
	.type	_ZN3SPI20enhancedSetData2XmitEPKvh, @function
_ZN3SPI20enhancedSetData2XmitEPKvh:
.LFB65:
	.loc 2 158 0
	.cfi_startproc
.LVL58:
	push r10
.LCFI25:
	.cfi_def_cfa_offset 3
	.cfi_offset 10, -2
	push r11
.LCFI26:
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -3
	push r12
.LCFI27:
	.cfi_def_cfa_offset 5
	.cfi_offset 12, -4
	push r13
.LCFI28:
	.cfi_def_cfa_offset 6
	.cfi_offset 13, -5
	push r14
.LCFI29:
	.cfi_def_cfa_offset 7
	.cfi_offset 14, -6
	push r15
.LCFI30:
	.cfi_def_cfa_offset 8
	.cfi_offset 15, -7
	push r16
.LCFI31:
	.cfi_def_cfa_offset 9
	.cfi_offset 16, -8
	push r17
.LCFI32:
	.cfi_def_cfa_offset 10
	.cfi_offset 17, -9
	push r28
.LCFI33:
	.cfi_def_cfa_offset 11
	.cfi_offset 28, -10
	push r29
.LCFI34:
	.cfi_def_cfa_offset 12
	.cfi_offset 29, -11
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	movw r14,r22
.LVL59:
.LBB87:
	.loc 2 164 0
	movw r28,r22
	mov r16,r20
	ldi r17,0
	adiw r24,13
.LVL60:
	movw r12,r24
.LVL61:
.L47:
	movw r24,r28
	sub r24,r14
	sbc r25,r15
	.loc 2 164 0 is_stmt 0 discriminator 1
	cp r24,r16
	cpc r25,r17
	brsh .L60
	movw r10,r28
	.loc 2 165 0 is_stmt 1
	ld r24,Y
	cpi r24,lo8(27)
	breq .L48
	.loc 2 165 0 is_stmt 0 discriminator 1
	cpi r24,lo8(-1)
	breq .L48
	tst r24
	breq .L48
	.loc 2 166 0 is_stmt 1
	cpi r24,lo8(-86)
	brne .L49
.L48:
	.loc 2 167 0
	ldi r20,lo8(1)
	ldi r22,lo8(27)
	movw r24,r12
	rcall _ZN14CircularBuffer7putByteEcb
.LVL62:
.L49:
	adiw r28,1
.LVL63:
	.loc 2 170 0
	ldi r20,lo8(1)
	movw r30,r10
	ld r22,Z
	movw r24,r12
	rcall _ZN14CircularBuffer7putByteEcb
.LVL64:
	rjmp .L47
.L60:
.LBE87:
	.loc 2 176 0
	mov r24,r16
/* epilogue start */
	pop r29
	pop r28
.LVL65:
	pop r17
	pop r16
.LVL66:
	pop r15
	pop r14
.LVL67:
	pop r13
	pop r12
.LVL68:
	pop r11
	pop r10
	ret
	.cfi_endproc
.LFE65:
	.size	_ZN3SPI20enhancedSetData2XmitEPKvh, .-_ZN3SPI20enhancedSetData2XmitEPKvh
	.section	.text._ZN3SPI10sendMasterEh,"ax",@progbits
.global	_ZN3SPI10sendMasterEh
	.type	_ZN3SPI10sendMasterEh, @function
_ZN3SPI10sendMasterEh:
.LFB66:
	.loc 2 180 0
	.cfi_startproc
.LVL69:
	push r10
.LCFI35:
	.cfi_def_cfa_offset 3
	.cfi_offset 10, -2
	push r11
.LCFI36:
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -3
	push r12
.LCFI37:
	.cfi_def_cfa_offset 5
	.cfi_offset 12, -4
	push r13
.LCFI38:
	.cfi_def_cfa_offset 6
	.cfi_offset 13, -5
	push r14
.LCFI39:
	.cfi_def_cfa_offset 7
	.cfi_offset 14, -6
	push r15
.LCFI40:
	.cfi_def_cfa_offset 8
	.cfi_offset 15, -7
	push r16
.LCFI41:
	.cfi_def_cfa_offset 9
	.cfi_offset 16, -8
	push r17
.LCFI42:
	.cfi_def_cfa_offset 10
	.cfi_offset 17, -9
	push r28
.LCFI43:
	.cfi_def_cfa_offset 11
	.cfi_offset 28, -10
	push r29
.LCFI44:
	.cfi_def_cfa_offset 12
	.cfi_offset 29, -11
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	movw r16,r24
	mov r11,r22
.LVL70:
.LBB105:
	.loc 2 181 0
	mov r10,__zero_reg__
.LBB106:
.LBB107:
	.loc 3 431 0
	movw r14,r24
	ldi r18,13
	add r14,r18
	adc r15,__zero_reg__
.LBE107:
.LBE106:
.LBB111:
.LBB112:
.LBB113:
	.loc 3 423 0
	movw r12,r24
	ldi r24,6
	add r12,r24
	adc r13,__zero_reg__
.LVL71:
.L62:
.LBE113:
.LBE112:
.LBE111:
.LBB124:
.LBB110:
.LBB108:
.LBB109:
	.loc 1 96 0 discriminator 1
	movw r24,r14
	rcall _ZN14CircularBuffer7getByteEv
.LVL72:
	movw r18,r24
.LVL73:
	sbrc r25,7
	rjmp .L73
	.loc 1 96 0 is_stmt 0
	mov r25,r24
	rjmp .L69
.L73:
	ldi r25,lo8(-1)
.L69:
.LVL74:
.LBE109:
.LBE108:
.LBE110:
.LBE124:
	.loc 2 184 0 is_stmt 1
	sbrs r19,7
	rjmp .L70
	.loc 2 184 0 is_stmt 0 discriminator 2
	tst r11
	breq .L71
.L70:
.LBE105:
	.loc 2 180 0 is_stmt 1
	ldi r24,lo8(8)
.LVL75:
.L72:
.LBB126:
.LBB125:
.LBB115:
.LBB116:
	.loc 2 202 0
	in r19,0x18
	mov r18,r25
	rol r18
	clr r18
	rol r18
	andi r19,lo8(-2)
	or r18,r19
	out 0x18,r18
	.loc 2 204 0
	sbi 0x18,2
.LVL76:
.LBB117:
.LBB118:
.LBB119:
	.loc 3 465 0
	movw r30,r16
	ldd r20,Z+4
	ldd r21,Z+5
.LBE119:
.LBE118:
	.loc 2 205 0
	ldi r18,0
	ldi r19,0
.LVL77:
.L63:
	.loc 2 205 0 is_stmt 0 discriminator 1
	cp r18,r20
	cpc r19,r21
	breq .L77
	.loc 2 205 0 discriminator 2
/* #APP */
 ;  205 "../spi.cpp" 1
	nop
 ;  0 "" 2
/* #NOAPP */
	subi r18,-1
	sbci r19,-1
.LVL78:
	rjmp .L63
.L77:
.LBE117:
	.loc 2 209 0 is_stmt 1
	in r18,0x16
.LVL79:
	.loc 2 207 0
	lsl r25
	.loc 2 209 0
	lsr r18
	andi r18,1
	mov r28,r18
	or r28,r25
.LVL80:
	mov r25,r28
.LVL81:
	.loc 2 210 0
	cbi 0x18,2
.LVL82:
.LBB120:
.LBB121:
.LBB122:
	.loc 3 465 0
	movw r30,r16
	ldd r20,Z+4
	ldd r21,Z+5
.LBE122:
.LBE121:
	.loc 2 211 0
	ldi r18,0
	ldi r19,0
.LVL83:
.L65:
	.loc 2 211 0 is_stmt 0 discriminator 1
	cp r18,r20
	cpc r19,r21
	breq .L78
	.loc 2 211 0 discriminator 2
/* #APP */
 ;  211 "../spi.cpp" 1
	nop
 ;  0 "" 2
/* #NOAPP */
	subi r18,-1
	sbci r19,-1
.LVL84:
	rjmp .L65
.L78:
.LVL85:
	subi r24,lo8(-(-1))
.LVL86:
.LBE120:
.LBE116:
	.loc 2 200 0 is_stmt 1
	brne .L72
.LBE115:
	.loc 2 215 0
	tst r11
	breq .L68
.LVL87:
.LBB123:
.LBB114:
	.loc 3 423 0
	ldi r20,lo8(1)
	mov r22,r28
	movw r24,r12
.LVL88:
	rcall _ZN14CircularBuffer7putByteEcb
.LVL89:
.LBE114:
.LBE123:
	.loc 2 217 0
	dec r11
.LVL90:
.L68:
	.loc 2 221 0
	inc r10
.LVL91:
	rjmp .L62
.LVL92:
.L71:
.LBE125:
.LBE126:
	.loc 2 225 0
	mov r24,r10
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
.LVL93:
	pop r15
	pop r14
	pop r13
	pop r12
.LVL94:
	pop r11
.LVL95:
	pop r10
.LVL96:
	ret
	.cfi_endproc
.LFE66:
	.size	_ZN3SPI10sendMasterEh, .-_ZN3SPI10sendMasterEh
	.section	.text.__vector_14,"ax",@progbits
.global	__vector_14
	.type	__vector_14, @function
__vector_14:
.LFB68:
	.loc 2 249 0
	.cfi_startproc
	push r1
.LCFI45:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI46:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI47:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r19
.LCFI48:
	.cfi_def_cfa_offset 6
	.cfi_offset 19, -5
	push r20
.LCFI49:
	.cfi_def_cfa_offset 7
	.cfi_offset 20, -6
	push r21
.LCFI50:
	.cfi_def_cfa_offset 8
	.cfi_offset 21, -7
	push r22
.LCFI51:
	.cfi_def_cfa_offset 9
	.cfi_offset 22, -8
	push r23
.LCFI52:
	.cfi_def_cfa_offset 10
	.cfi_offset 23, -9
	push r24
.LCFI53:
	.cfi_def_cfa_offset 11
	.cfi_offset 24, -10
	push r25
.LCFI54:
	.cfi_def_cfa_offset 12
	.cfi_offset 25, -11
	push r26
.LCFI55:
	.cfi_def_cfa_offset 13
	.cfi_offset 26, -12
	push r27
.LCFI56:
	.cfi_def_cfa_offset 14
	.cfi_offset 27, -13
	push r28
.LCFI57:
	.cfi_def_cfa_offset 15
	.cfi_offset 28, -14
	push r29
.LCFI58:
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -15
	push r30
.LCFI59:
	.cfi_def_cfa_offset 17
	.cfi_offset 30, -16
	push r31
.LCFI60:
	.cfi_def_cfa_offset 18
	.cfi_offset 31, -17
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 17 */
.L__stack_usage = 17
.LBB138:
.LBB139:
.LBB140:
.LBB141:
	.loc 3 437 0
	lds r28,_ZN3SPI9m_spiThisE
	lds r29,_ZN3SPI9m_spiThisE+1
.LBE141:
.LBE140:
	.loc 2 232 0
	in r22,0xf
.LVL97:
.LBB142:
.LBB143:
	.loc 3 423 0
	ldi r20,lo8(1)
	movw r24,r28
	adiw r24,6
	rcall _ZN14CircularBuffer7putByteEcb
.LVL98:
.LBE143:
.LBE142:
	.loc 2 235 0
	sbi 0xe,6
.LVL99:
	.loc 2 238 0
	ldd r24,Y+2
	tst r24
	breq .L81
.LVL100:
.LBB144:
.LBB145:
	.loc 3 430 0
	movw r24,r28
	adiw r24,13
	rcall _ZN14CircularBuffer7getByteEv
.LVL101:
	rjmp .L80
.LVL102:
.L81:
.LBE145:
.LBE144:
	.loc 2 237 0
	ldi r24,lo8(-1)
.LVL103:
.L80:
	.loc 2 241 0
	out 0xf,r24
/* epilogue start */
.LBE139:
.LBE138:
	.loc 2 251 0
	pop r31
	pop r30
	pop r29
	pop r28
.LVL104:
	pop r27
	pop r26
	pop r25
	pop r24
.LVL105:
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
.LFE68:
	.size	__vector_14, .-__vector_14
.global	_ZN3SPI9m_spiThisE
	.section	.bss._ZN3SPI9m_spiThisE,"aw",@nobits
	.type	_ZN3SPI9m_spiThisE, @object
	.size	_ZN3SPI9m_spiThisE, 2
_ZN3SPI9m_spiThisE:
	.zero	2
	.text
.Letext0:
	.file 4 "../include/h_types.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x16b9
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF696
	.byte	0x4
	.long	.LASF697
	.long	.LASF698
	.long	.Ldebug_ranges0+0x48
	.long	0
	.long	0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF535
	.uleb128 0x3
	.long	.LASF537
	.byte	0x4
	.byte	0x1d
	.long	0x3f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF536
	.uleb128 0x3
	.long	.LASF538
	.byte	0x4
	.byte	0x1e
	.long	0x51
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF539
	.byte	0x4
	.byte	0x1f
	.long	0x63
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF540
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF541
	.uleb128 0x3
	.long	.LASF542
	.byte	0x4
	.byte	0x21
	.long	0x7c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF543
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF544
	.uleb128 0x3
	.long	.LASF545
	.byte	0x4
	.byte	0x23
	.long	0x95
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF546
	.uleb128 0x3
	.long	.LASF547
	.byte	0x4
	.byte	0x28
	.long	0x58
	.uleb128 0x5
	.long	.LASF558
	.byte	0x7
	.byte	0x1
	.byte	0x29
	.long	0x339
	.uleb128 0x6
	.long	.LASF585
	.byte	0x2
	.byte	0x1
	.byte	0x32
	.long	0xd2
	.uleb128 0x7
	.long	.LASF548
	.sleb128 0
	.uleb128 0x7
	.long	.LASF549
	.sleb128 -1
	.uleb128 0x7
	.long	.LASF550
	.sleb128 -2
	.byte	0
	.uleb128 0x3
	.long	.LASF551
	.byte	0x1
	.byte	0x2d
	.long	0x34
	.uleb128 0x8
	.long	.LASF552
	.byte	0x1
	.byte	0xc7
	.long	0xd2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x8
	.long	.LASF553
	.byte	0x1
	.byte	0xc8
	.long	0xfb
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x3
	.uleb128 0x9
	.long	0xd2
	.uleb128 0x8
	.long	.LASF554
	.byte	0x1
	.byte	0xc9
	.long	0xfb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x3
	.uleb128 0xa
	.string	"mem"
	.byte	0x1
	.byte	0xca
	.long	0x339
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x3
	.uleb128 0x8
	.long	.LASF555
	.byte	0x1
	.byte	0xcd
	.long	0x346
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0x3
	.uleb128 0x8
	.long	.LASF556
	.byte	0x1
	.byte	0xce
	.long	0x346
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0x3
	.uleb128 0x3
	.long	.LASF557
	.byte	0x1
	.byte	0x36
	.long	0xb3
	.uleb128 0xb
	.byte	0x1
	.long	.LASF558
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.long	0x158
	.long	0x169
	.uleb128 0xc
	.long	0x352
	.byte	0x1
	.uleb128 0xd
	.long	0x339
	.uleb128 0xd
	.long	0xd2
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF559
	.byte	0x1
	.byte	0x3e
	.byte	0x1
	.long	0x17a
	.long	0x187
	.uleb128 0xc
	.long	0x352
	.byte	0x1
	.uleb128 0xc
	.long	0x51
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF560
	.byte	0x1
	.byte	0x4a
	.long	.LASF562
	.long	0xd2
	.byte	0x1
	.long	0x1a0
	.long	0x1a7
	.uleb128 0xc
	.long	0x352
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF561
	.byte	0x1
	.byte	0x52
	.long	.LASF563
	.long	0xd2
	.byte	0x1
	.long	0x1c0
	.long	0x1c7
	.uleb128 0xc
	.long	0x352
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF564
	.byte	0x1
	.byte	0x53
	.long	.LASF565
	.long	0x34b
	.byte	0x1
	.long	0x1e0
	.long	0x1e7
	.uleb128 0xc
	.long	0x352
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF566
	.byte	0x1
	.byte	0x54
	.long	.LASF567
	.long	0xd2
	.byte	0x1
	.long	0x200
	.long	0x207
	.uleb128 0xc
	.long	0x352
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF568
	.byte	0x1
	.byte	0x5f
	.long	.LASF569
	.long	0x51
	.byte	0x1
	.long	0x220
	.long	0x227
	.uleb128 0xc
	.long	0x352
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF568
	.byte	0x1
	.byte	0x60
	.long	.LASF570
	.long	0x51
	.byte	0x1
	.long	0x240
	.long	0x24c
	.uleb128 0xc
	.long	0x352
	.byte	0x1
	.uleb128 0xd
	.long	0x358
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF571
	.byte	0x1
	.byte	0x71
	.long	.LASF572
	.long	0xd2
	.byte	0x1
	.long	0x265
	.long	0x276
	.uleb128 0xc
	.long	0x352
	.byte	0x1
	.uleb128 0xd
	.long	0x339
	.uleb128 0xd
	.long	0xd2
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF573
	.byte	0x1
	.byte	0x86
	.long	.LASF574
	.long	0x13c
	.byte	0x1
	.long	0x28f
	.long	0x2a0
	.uleb128 0xc
	.long	0x352
	.byte	0x1
	.uleb128 0xd
	.long	0x33f
	.uleb128 0xd
	.long	0x34b
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF575
	.byte	0x1
	.byte	0x9d
	.long	.LASF576
	.long	0xd2
	.byte	0x1
	.long	0x2b9
	.long	0x2cf
	.uleb128 0xc
	.long	0x352
	.byte	0x1
	.uleb128 0xd
	.long	0x35e
	.uleb128 0xd
	.long	0xd2
	.uleb128 0xd
	.long	0x34b
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF577
	.byte	0x1
	.byte	0xa4
	.long	.LASF579
	.byte	0x1
	.long	0x2e4
	.long	0x2eb
	.uleb128 0xc
	.long	0x352
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF578
	.byte	0x1
	.byte	0xb2
	.long	.LASF580
	.byte	0x1
	.long	0x300
	.long	0x311
	.uleb128 0xc
	.long	0x352
	.byte	0x1
	.uleb128 0xd
	.long	0x35e
	.uleb128 0xd
	.long	0xd2
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF581
	.byte	0x1
	.byte	0xba
	.long	.LASF582
	.byte	0x3
	.byte	0x1
	.long	0x327
	.long	0x333
	.uleb128 0xc
	.long	0x352
	.byte	0x1
	.uleb128 0xd
	.long	0xd2
	.byte	0
	.uleb128 0x11
	.long	0xd2
	.byte	0
	.uleb128 0x12
	.byte	0x2
	.long	0x33f
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF583
	.uleb128 0x9
	.long	0x34b
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF584
	.uleb128 0x12
	.byte	0x2
	.long	0xa7
	.uleb128 0x13
	.byte	0x2
	.long	0x33f
	.uleb128 0x12
	.byte	0x2
	.long	0x364
	.uleb128 0x11
	.long	0x33f
	.uleb128 0x14
	.string	"SPI"
	.byte	0x14
	.byte	0x3
	.byte	0x1b
	.long	0xbe4
	.uleb128 0x6
	.long	.LASF586
	.byte	0x2
	.byte	0x3
	.byte	0x20
	.long	0x39c
	.uleb128 0x7
	.long	.LASF587
	.sleb128 255
	.uleb128 0x7
	.long	.LASF588
	.sleb128 0
	.uleb128 0x7
	.long	.LASF589
	.sleb128 27
	.uleb128 0x7
	.long	.LASF590
	.sleb128 170
	.byte	0
	.uleb128 0x15
	.long	.LASF591
	.byte	0x3
	.word	0x200
	.long	0x34b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x15
	.long	.LASF592
	.byte	0x3
	.word	0x201
	.long	0x34b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x3
	.uleb128 0x15
	.long	.LASF593
	.byte	0x3
	.word	0x202
	.long	0x34b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x3
	.uleb128 0x15
	.long	.LASF594
	.byte	0x3
	.word	0x204
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x3
	.uleb128 0x15
	.long	.LASF595
	.byte	0x3
	.word	0x205
	.long	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x15
	.long	.LASF596
	.byte	0x3
	.word	0x207
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0x3
	.uleb128 0x15
	.long	.LASF597
	.byte	0x3
	.word	0x208
	.long	0xa7
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0x3
	.uleb128 0x16
	.long	.LASF699
	.byte	0x3
	.word	0x20a
	.long	0xbe4
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x3
	.long	.LASF551
	.byte	0x3
	.byte	0x1e
	.long	0xd2
	.uleb128 0x17
	.byte	0x1
	.string	"SPI"
	.byte	0x3
	.byte	0x27
	.byte	0x1
	.long	0x437
	.long	0x43e
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF598
	.byte	0x3
	.byte	0x28
	.byte	0x1
	.long	0x44f
	.long	0x45c
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.uleb128 0xc
	.long	0x51
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF599
	.byte	0x3
	.byte	0x48
	.long	.LASF600
	.byte	0x1
	.long	0x471
	.long	0x496
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.uleb128 0xd
	.long	0xbea
	.uleb128 0xd
	.long	0x41b
	.uleb128 0xd
	.long	0xbea
	.uleb128 0xd
	.long	0x41b
	.uleb128 0xd
	.long	0x34b
	.uleb128 0xd
	.long	0x58
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF601
	.byte	0x3
	.byte	0x65
	.long	.LASF602
	.byte	0x1
	.long	0x4ab
	.long	0x4b7
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.uleb128 0xd
	.long	0x34b
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF603
	.byte	0x3
	.byte	0x72
	.long	.LASF604
	.byte	0x1
	.long	0x4cc
	.long	0x4d8
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.uleb128 0xd
	.long	0x34b
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF605
	.byte	0x3
	.byte	0x85
	.long	.LASF606
	.byte	0x1
	.long	0x4ed
	.long	0x4fe
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.uleb128 0xd
	.long	0xbea
	.uleb128 0xd
	.long	0x41b
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF607
	.byte	0x3
	.byte	0x9a
	.long	.LASF608
	.long	0x41b
	.byte	0x1
	.long	0x517
	.long	0x528
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.uleb128 0xd
	.long	0xbea
	.uleb128 0xd
	.long	0x41b
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF607
	.byte	0x3
	.byte	0x9b
	.long	.LASF609
	.long	0x41b
	.byte	0x1
	.long	0x541
	.long	0x54d
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.uleb128 0xd
	.long	0x358
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF610
	.byte	0x3
	.byte	0xa6
	.long	.LASF611
	.long	0x51
	.byte	0x1
	.long	0x566
	.long	0x56d
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF610
	.byte	0x3
	.byte	0xa7
	.long	.LASF612
	.long	0x51
	.byte	0x1
	.long	0x586
	.long	0x592
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.uleb128 0xd
	.long	0x358
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF613
	.byte	0x3
	.byte	0xbd
	.long	.LASF614
	.long	0x41b
	.byte	0x1
	.long	0x5ab
	.long	0x5bc
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.uleb128 0xd
	.long	0xbea
	.uleb128 0xd
	.long	0x41b
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF613
	.byte	0x3
	.byte	0xca
	.long	.LASF615
	.long	0x41b
	.byte	0x1
	.long	0x5d5
	.long	0x5e1
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.uleb128 0xd
	.long	0x358
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF613
	.byte	0x3
	.byte	0xd5
	.long	.LASF616
	.long	0x41b
	.byte	0x1
	.long	0x5fa
	.long	0x606
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.uleb128 0xd
	.long	0xbf1
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF613
	.byte	0x3
	.byte	0xd7
	.long	.LASF617
	.long	0x41b
	.byte	0x1
	.long	0x61f
	.long	0x62b
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.uleb128 0xd
	.long	0xbf7
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF613
	.byte	0x3
	.byte	0xd9
	.long	.LASF618
	.long	0x41b
	.byte	0x1
	.long	0x644
	.long	0x650
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.uleb128 0xd
	.long	0xbfd
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF613
	.byte	0x3
	.byte	0xdb
	.long	.LASF619
	.long	0x41b
	.byte	0x1
	.long	0x669
	.long	0x675
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.uleb128 0xd
	.long	0xc03
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF613
	.byte	0x3
	.byte	0xdd
	.long	.LASF620
	.long	0x41b
	.byte	0x1
	.long	0x68e
	.long	0x69a
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.uleb128 0xd
	.long	0xc09
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF621
	.byte	0x3
	.byte	0xe8
	.long	.LASF622
	.long	0x41b
	.byte	0x1
	.long	0x6b3
	.long	0x6ba
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF623
	.byte	0x3
	.byte	0xef
	.long	.LASF624
	.long	0x41b
	.byte	0x1
	.long	0x6d3
	.long	0x6da
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF625
	.byte	0x3
	.word	0x107
	.long	.LASF679
	.byte	0x1
	.long	0x6f0
	.long	0x701
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.uleb128 0xd
	.long	0xbea
	.uleb128 0xd
	.long	0x41b
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF626
	.byte	0x3
	.word	0x119
	.long	.LASF627
	.long	0x41b
	.byte	0x1
	.long	0x71b
	.long	0x72c
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.uleb128 0xd
	.long	0xbea
	.uleb128 0xd
	.long	0x41b
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF626
	.byte	0x3
	.word	0x11b
	.long	.LASF628
	.long	0x41b
	.byte	0x1
	.long	0x746
	.long	0x752
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.uleb128 0xd
	.long	0xc0f
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF626
	.byte	0x3
	.word	0x11d
	.long	.LASF629
	.long	0x41b
	.byte	0x1
	.long	0x76c
	.long	0x778
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.uleb128 0xd
	.long	0xc1a
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF626
	.byte	0x3
	.word	0x11f
	.long	.LASF630
	.long	0x41b
	.byte	0x1
	.long	0x792
	.long	0x79e
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.uleb128 0xd
	.long	0xc25
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF626
	.byte	0x3
	.word	0x121
	.long	.LASF631
	.long	0x41b
	.byte	0x1
	.long	0x7b8
	.long	0x7c4
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.uleb128 0xd
	.long	0xc30
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF626
	.byte	0x3
	.word	0x123
	.long	.LASF632
	.long	0x41b
	.byte	0x1
	.long	0x7de
	.long	0x7ea
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.uleb128 0xd
	.long	0xc3b
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF633
	.byte	0x3
	.word	0x134
	.long	.LASF634
	.long	0x13c
	.byte	0x1
	.long	0x804
	.long	0x810
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.uleb128 0xd
	.long	0x33f
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF635
	.byte	0x3
	.word	0x150
	.long	.LASF636
	.long	0x41b
	.byte	0x1
	.long	0x82a
	.long	0x83b
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.uleb128 0xd
	.long	0xbea
	.uleb128 0xd
	.long	0x41b
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF635
	.byte	0x3
	.word	0x151
	.long	.LASF637
	.long	0x41b
	.byte	0x1
	.long	0x855
	.long	0x861
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.uleb128 0xd
	.long	0xc3b
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF635
	.byte	0x3
	.word	0x153
	.long	.LASF638
	.long	0x41b
	.byte	0x1
	.long	0x87b
	.long	0x887
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.uleb128 0xd
	.long	0xc41
	.byte	0
	.uleb128 0x11
	.long	0x41b
	.uleb128 0x19
	.byte	0x1
	.long	.LASF635
	.byte	0x3
	.word	0x155
	.long	.LASF639
	.long	0x41b
	.byte	0x1
	.long	0x8a6
	.long	0x8b2
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.uleb128 0xd
	.long	0xc47
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF635
	.byte	0x3
	.word	0x157
	.long	.LASF640
	.long	0x41b
	.byte	0x1
	.long	0x8cc
	.long	0x8d8
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.uleb128 0xd
	.long	0xc1a
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF635
	.byte	0x3
	.word	0x159
	.long	.LASF641
	.long	0x41b
	.byte	0x1
	.long	0x8f2
	.long	0x8fe
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.uleb128 0xd
	.long	0xc25
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF635
	.byte	0x3
	.word	0x15b
	.long	.LASF642
	.long	0x41b
	.byte	0x1
	.long	0x918
	.long	0x924
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.uleb128 0xd
	.long	0xc30
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF643
	.byte	0x3
	.word	0x16a
	.long	.LASF644
	.long	0x41b
	.byte	0x1
	.long	0x93e
	.long	0x94a
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.uleb128 0xd
	.long	0x34
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF645
	.byte	0x3
	.word	0x178
	.long	.LASF646
	.long	0x41b
	.byte	0x1
	.long	0x964
	.long	0x96b
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF647
	.byte	0x3
	.word	0x180
	.long	.LASF648
	.long	0x41b
	.byte	0x1
	.long	0x985
	.long	0x98c
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF649
	.byte	0x3
	.word	0x194
	.long	.LASF650
	.long	0x41b
	.byte	0x1
	.long	0x9a6
	.long	0x9b2
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.uleb128 0xd
	.long	0x41b
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF651
	.byte	0x3
	.word	0x19b
	.long	.LASF652
	.long	0x34
	.byte	0x1
	.long	0x9cc
	.long	0x9d3
	.uleb128 0xc
	.long	0xc52
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"isr"
	.byte	0x3
	.word	0x19f
	.long	.LASF700
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF653
	.byte	0x3
	.word	0x1a7
	.long	.LASF655
	.long	0x51
	.byte	0x3
	.byte	0x1
	.long	0x9fc
	.long	0xa08
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.uleb128 0xd
	.long	0x34
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF654
	.byte	0x3
	.word	0x1ae
	.long	.LASF656
	.long	0x51
	.byte	0x3
	.byte	0x1
	.long	0xa23
	.long	0xa2a
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF654
	.byte	0x3
	.word	0x1af
	.long	.LASF657
	.long	0x51
	.byte	0x3
	.byte	0x1
	.long	0xa45
	.long	0xa51
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.uleb128 0xd
	.long	0xbf7
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF701
	.byte	0x3
	.word	0x1b5
	.long	.LASF702
	.long	0xbe4
	.byte	0x3
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF658
	.byte	0x3
	.word	0x1bb
	.long	.LASF659
	.long	0x34b
	.byte	0x3
	.byte	0x1
	.long	0xa7f
	.long	0xa86
	.uleb128 0xc
	.long	0xc52
	.byte	0x1
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF660
	.byte	0x3
	.word	0x1c5
	.long	.LASF661
	.byte	0x3
	.byte	0x1
	.long	0xa9d
	.long	0xaa9
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.uleb128 0xd
	.long	0xc5d
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF662
	.byte	0x3
	.word	0x1cb
	.long	.LASF663
	.byte	0x3
	.byte	0x1
	.long	0xac0
	.long	0xacc
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.uleb128 0xd
	.long	0x34b
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF664
	.byte	0x3
	.word	0x1d1
	.long	.LASF665
	.long	0x58
	.byte	0x3
	.byte	0x1
	.long	0xae7
	.long	0xaee
	.uleb128 0xc
	.long	0xc52
	.byte	0x1
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF666
	.byte	0x3
	.word	0x1d7
	.long	.LASF667
	.byte	0x3
	.byte	0x1
	.long	0xb05
	.long	0xb11
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.uleb128 0xd
	.long	0xc1a
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF668
	.byte	0x3
	.word	0x1dd
	.long	.LASF669
	.long	0x34b
	.byte	0x3
	.byte	0x1
	.long	0xb2c
	.long	0xb33
	.uleb128 0xc
	.long	0xc52
	.byte	0x1
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF670
	.byte	0x3
	.word	0x1e3
	.long	.LASF671
	.byte	0x3
	.byte	0x1
	.long	0xb4a
	.long	0xb56
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.uleb128 0xd
	.long	0x34b
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF672
	.byte	0x3
	.word	0x1e8
	.long	.LASF673
	.byte	0x3
	.byte	0x1
	.long	0xb6d
	.long	0xb74
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF674
	.byte	0x3
	.word	0x1ed
	.long	.LASF675
	.byte	0x3
	.byte	0x1
	.long	0xb8b
	.long	0xb92
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF676
	.byte	0x3
	.word	0x1f2
	.long	.LASF677
	.byte	0x3
	.byte	0x1
	.long	0xba9
	.long	0xbb0
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF678
	.byte	0x3
	.word	0x1f8
	.long	.LASF680
	.byte	0x3
	.byte	0x1
	.long	0xbc9
	.uleb128 0xd
	.long	0xbe4
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF681
	.byte	0x3
	.word	0x1fe
	.long	.LASF682
	.byte	0x3
	.byte	0x1
	.long	0xbdc
	.uleb128 0xc
	.long	0xbe4
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x2
	.long	0x369
	.uleb128 0x12
	.byte	0x2
	.long	0xbf0
	.uleb128 0x20
	.uleb128 0x13
	.byte	0x2
	.long	0x51
	.uleb128 0x13
	.byte	0x2
	.long	0x34
	.uleb128 0x13
	.byte	0x2
	.long	0x58
	.uleb128 0x13
	.byte	0x2
	.long	0x71
	.uleb128 0x13
	.byte	0x2
	.long	0x8a
	.uleb128 0x13
	.byte	0x2
	.long	0xc15
	.uleb128 0x11
	.long	0x46
	.uleb128 0x13
	.byte	0x2
	.long	0xc20
	.uleb128 0x11
	.long	0x58
	.uleb128 0x13
	.byte	0x2
	.long	0xc2b
	.uleb128 0x11
	.long	0x71
	.uleb128 0x13
	.byte	0x2
	.long	0xc36
	.uleb128 0x11
	.long	0x8a
	.uleb128 0x13
	.byte	0x2
	.long	0x364
	.uleb128 0x13
	.byte	0x2
	.long	0x887
	.uleb128 0x13
	.byte	0x2
	.long	0xc4d
	.uleb128 0x11
	.long	0x51
	.uleb128 0x12
	.byte	0x2
	.long	0xc58
	.uleb128 0x11
	.long	0x369
	.uleb128 0x13
	.byte	0x2
	.long	0xc63
	.uleb128 0x11
	.long	0x34
	.uleb128 0x21
	.long	0x2eb
	.byte	0x3
	.long	0xc76
	.long	0xc97
	.uleb128 0x22
	.long	.LASF684
	.long	0xc97
	.byte	0x1
	.uleb128 0x23
	.long	.LASF683
	.byte	0x1
	.byte	0xb2
	.long	0x35e
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.byte	0xb2
	.long	0x333
	.byte	0
	.uleb128 0x11
	.long	0x352
	.uleb128 0x21
	.long	0xa86
	.byte	0x3
	.long	0xcaa
	.long	0xcc1
	.uleb128 0x22
	.long	.LASF684
	.long	0xcc1
	.byte	0x1
	.uleb128 0x25
	.long	.LASF651
	.byte	0x3
	.word	0x1c5
	.long	0xcc6
	.byte	0
	.uleb128 0x11
	.long	0xbe4
	.uleb128 0x11
	.long	0xc5d
	.uleb128 0x21
	.long	0xaee
	.byte	0x3
	.long	0xcd9
	.long	0xcf0
	.uleb128 0x22
	.long	.LASF684
	.long	0xcc1
	.byte	0x1
	.uleb128 0x25
	.long	.LASF664
	.byte	0x3
	.word	0x1d7
	.long	0xcf0
	.byte	0
	.uleb128 0x11
	.long	0xc1a
	.uleb128 0x26
	.long	0xbb0
	.byte	0x3
	.long	0xd0c
	.uleb128 0x25
	.long	.LASF685
	.byte	0x3
	.word	0x1f8
	.long	0xbe4
	.byte	0
	.uleb128 0x21
	.long	0xb33
	.byte	0x3
	.long	0xd1a
	.long	0xd31
	.uleb128 0x22
	.long	.LASF684
	.long	0xcc1
	.byte	0x1
	.uleb128 0x25
	.long	.LASF668
	.byte	0x3
	.word	0x1e3
	.long	0x34b
	.byte	0
	.uleb128 0x21
	.long	0x4d8
	.byte	0x3
	.long	0xd3f
	.long	0xd5f
	.uleb128 0x22
	.long	.LASF684
	.long	0xcc1
	.byte	0x1
	.uleb128 0x24
	.string	"rx"
	.byte	0x3
	.byte	0x85
	.long	0xbea
	.uleb128 0x24
	.string	"len"
	.byte	0x3
	.byte	0x85
	.long	0x41b
	.byte	0
	.uleb128 0x21
	.long	0x6da
	.byte	0x3
	.long	0xd6d
	.long	0xd8f
	.uleb128 0x22
	.long	.LASF684
	.long	0xcc1
	.byte	0x1
	.uleb128 0x27
	.string	"tx"
	.byte	0x3
	.word	0x107
	.long	0xbea
	.uleb128 0x27
	.string	"len"
	.byte	0x3
	.word	0x107
	.long	0x41b
	.byte	0
	.uleb128 0x21
	.long	0xb11
	.byte	0x3
	.long	0xd9d
	.long	0xda8
	.uleb128 0x22
	.long	.LASF684
	.long	0xda8
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.long	0xc52
	.uleb128 0x21
	.long	0xaa9
	.byte	0x3
	.long	0xdbb
	.long	0xdd2
	.uleb128 0x22
	.long	.LASF684
	.long	0xcc1
	.byte	0x1
	.uleb128 0x25
	.long	.LASF686
	.byte	0x3
	.word	0x1cb
	.long	0x34b
	.byte	0
	.uleb128 0x21
	.long	0xa08
	.byte	0x3
	.long	0xde0
	.long	0xdeb
	.uleb128 0x22
	.long	.LASF684
	.long	0xcc1
	.byte	0x1
	.byte	0
	.uleb128 0x21
	.long	0xa64
	.byte	0x3
	.long	0xdf9
	.long	0xe04
	.uleb128 0x22
	.long	.LASF684
	.long	0xda8
	.byte	0x1
	.byte	0
	.uleb128 0x21
	.long	0xacc
	.byte	0x3
	.long	0xe12
	.long	0xe1d
	.uleb128 0x22
	.long	.LASF684
	.long	0xda8
	.byte	0x1
	.byte	0
	.uleb128 0x21
	.long	0xa2a
	.byte	0x3
	.long	0xe2b
	.long	0xe41
	.uleb128 0x22
	.long	.LASF684
	.long	0xcc1
	.byte	0x1
	.uleb128 0x27
	.string	"ch"
	.byte	0x3
	.word	0x1af
	.long	0xe41
	.byte	0
	.uleb128 0x11
	.long	0xbf7
	.uleb128 0x28
	.long	0xa51
	.byte	0x3
	.uleb128 0x29
	.long	0x311
	.long	.LFB7
	.long	.LFE7
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0xe66
	.byte	0x1
	.long	0xe82
	.uleb128 0x2a
	.long	.LASF684
	.long	0xc97
	.byte	0x1
	.long	.LLST0
	.uleb128 0x2b
	.long	.LASF690
	.byte	0x1
	.byte	0xba
	.long	0xd2
	.byte	0x1
	.byte	0x66
	.byte	0
	.uleb128 0x2c
	.long	0x426
	.byte	0x2
	.byte	0x2c
	.byte	0
	.long	0xe92
	.long	0xe9d
	.uleb128 0x22
	.long	.LASF684
	.long	0xcc1
	.byte	0x1
	.byte	0
	.uleb128 0x2d
	.long	0xe82
	.long	.LASF688
	.long	.LFB55
	.long	.LFE55
	.long	.LLST1
	.long	0xebb
	.byte	0x1
	.long	0xf0d
	.uleb128 0x2e
	.long	0xe92
	.long	.LLST2
	.uleb128 0x2f
	.long	.LVL4
	.long	0xee8
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 6
	.uleb128 0x30
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x31
	.long	.LVL6
	.byte	0x1
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x30
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0x43e
	.byte	0x2
	.byte	0x31
	.byte	0
	.long	0xf1d
	.long	0xf32
	.uleb128 0x22
	.long	.LASF684
	.long	0xcc1
	.byte	0x1
	.uleb128 0x22
	.long	.LASF687
	.long	0xc4d
	.byte	0x1
	.byte	0
	.uleb128 0x2d
	.long	0xf0d
	.long	.LASF689
	.long	.LFB58
	.long	.LFE58
	.long	.LLST3
	.long	0xf50
	.byte	0x1
	.long	0xf84
	.uleb128 0x2e
	.long	0xf1d
	.long	.LLST4
	.uleb128 0x2f
	.long	.LVL9
	.long	0xf6e
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 13
	.byte	0
	.uleb128 0x31
	.long	.LVL11
	.byte	0x1
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	0x45c
	.byte	0x2
	.byte	0x36
	.long	.LFB60
	.long	.LFE60
	.long	.LLST5
	.long	0xfa0
	.byte	0x1
	.long	0x115b
	.uleb128 0x2a
	.long	.LASF684
	.long	0xcc1
	.byte	0x1
	.long	.LLST6
	.uleb128 0x33
	.string	"rx"
	.byte	0x2
	.byte	0x36
	.long	0xbea
	.long	.LLST7
	.uleb128 0x33
	.string	"lrx"
	.byte	0x2
	.byte	0x36
	.long	0x41b
	.long	.LLST8
	.uleb128 0x33
	.string	"tx"
	.byte	0x2
	.byte	0x36
	.long	0xbea
	.long	.LLST9
	.uleb128 0x33
	.string	"ltx"
	.byte	0x2
	.byte	0x36
	.long	0x41b
	.long	.LLST10
	.uleb128 0x34
	.long	.LASF668
	.byte	0x2
	.byte	0x36
	.long	0x34b
	.long	.LLST11
	.uleb128 0x34
	.long	.LASF691
	.byte	0x2
	.byte	0x36
	.long	0x58
	.long	.LLST12
	.uleb128 0x35
	.long	0xcf5
	.long	.LBB57
	.long	.LBE57
	.byte	0x2
	.byte	0x38
	.long	0x1023
	.uleb128 0x2e
	.long	0xcff
	.long	.LLST13
	.byte	0
	.uleb128 0x35
	.long	0xd0c
	.long	.LBB59
	.long	.LBE59
	.byte	0x2
	.byte	0x39
	.long	0x1049
	.uleb128 0x2e
	.long	0xd24
	.long	.LLST14
	.uleb128 0x2e
	.long	0xd1a
	.long	.LLST15
	.byte	0
	.uleb128 0x35
	.long	0xd31
	.long	.LBB61
	.long	.LBE61
	.byte	0x2
	.byte	0x3a
	.long	0x10bf
	.uleb128 0x2e
	.long	0xd53
	.long	.LLST16
	.uleb128 0x2e
	.long	0xd49
	.long	.LLST17
	.uleb128 0x2e
	.long	0xd3f
	.long	.LLST18
	.uleb128 0x36
	.long	0xc68
	.long	.LBB63
	.long	.LBE63
	.byte	0x3
	.byte	0x85
	.uleb128 0x2e
	.long	0xc8b
	.long	.LLST16
	.uleb128 0x2e
	.long	0xc80
	.long	.LLST17
	.uleb128 0x2e
	.long	0xc76
	.long	.LLST21
	.uleb128 0x37
	.long	.LVL18
	.long	0xe4c
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 6
	.uleb128 0x30
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	0xd5f
	.long	.LBB65
	.long	.LBE65
	.byte	0x2
	.byte	0x3b
	.long	0x1135
	.uleb128 0x2e
	.long	0xd82
	.long	.LLST22
	.uleb128 0x2e
	.long	0xd77
	.long	.LLST23
	.uleb128 0x2e
	.long	0xd6d
	.long	.LLST24
	.uleb128 0x38
	.long	0xc68
	.long	.LBB67
	.long	.LBE67
	.byte	0x3
	.word	0x107
	.uleb128 0x2e
	.long	0xc8b
	.long	.LLST22
	.uleb128 0x2e
	.long	0xc80
	.long	.LLST23
	.uleb128 0x2e
	.long	0xc76
	.long	.LLST27
	.uleb128 0x37
	.long	.LVL20
	.long	0xe4c
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 13
	.uleb128 0x30
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	0xccb
	.long	.LBB69
	.long	.LBE69
	.byte	0x2
	.byte	0x3c
	.uleb128 0x39
	.long	0xce3
	.byte	0x6
	.byte	0xf2
	.long	.Ldebug_info0+4087
	.sleb128 0
	.uleb128 0x2e
	.long	0xcd9
	.long	.LLST28
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	0x4b7
	.byte	0x2
	.byte	0x5b
	.long	.LFB62
	.long	.LFE62
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0x1177
	.byte	0x1
	.long	0x11b5
	.uleb128 0x2a
	.long	.LASF684
	.long	0xcc1
	.byte	0x1
	.long	.LLST29
	.uleb128 0x2b
	.long	.LASF692
	.byte	0x2
	.byte	0x5b
	.long	0x34b
	.byte	0x1
	.byte	0x66
	.uleb128 0x36
	.long	0xdad
	.long	.LBB71
	.long	.LBE71
	.byte	0x2
	.byte	0x61
	.uleb128 0x2e
	.long	0xdc5
	.long	.LLST30
	.uleb128 0x2e
	.long	0xdbb
	.long	.LLST31
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	0xbc9
	.byte	0x2
	.byte	0x67
	.long	.LFB63
	.long	.LFE63
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0x11d1
	.byte	0x1
	.long	0x1229
	.uleb128 0x2a
	.long	.LASF684
	.long	0xcc1
	.byte	0x1
	.long	.LLST32
	.uleb128 0x3b
	.long	.LBB73
	.long	.LBE73
	.uleb128 0x3c
	.string	"ch"
	.byte	0x2
	.byte	0x6a
	.long	0x34
	.long	.LLST33
	.uleb128 0x36
	.long	0xdd2
	.long	.LBB74
	.long	.LBE74
	.byte	0x2
	.byte	0x6c
	.uleb128 0x2e
	.long	0xde0
	.long	.LLST34
	.uleb128 0x37
	.long	.LVL33
	.long	0x207
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	0x496
	.byte	0x2
	.byte	0x3f
	.long	.LFB61
	.long	.LFE61
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0x1245
	.byte	0x1
	.long	0x126d
	.uleb128 0x2a
	.long	.LASF684
	.long	0xcc1
	.byte	0x1
	.long	.LLST35
	.uleb128 0x34
	.long	.LASF692
	.byte	0x2
	.byte	0x3f
	.long	0x34b
	.long	.LLST36
	.uleb128 0x3d
	.long	.LVL41
	.byte	0x1
	.long	0x11b5
	.byte	0
	.uleb128 0x21
	.long	0x227
	.byte	0x3
	.long	0x127b
	.long	0x129b
	.uleb128 0x22
	.long	.LASF684
	.long	0xc97
	.byte	0x1
	.uleb128 0x24
	.string	"ch"
	.byte	0x1
	.byte	0x60
	.long	0x129b
	.uleb128 0x3e
	.uleb128 0x3f
	.string	"j"
	.byte	0x1
	.byte	0x60
	.long	0x51
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x358
	.uleb128 0x32
	.long	0x592
	.byte	0x2
	.byte	0x77
	.long	.LFB64
	.long	.LFE64
	.long	.LLST37
	.long	0x12bc
	.byte	0x1
	.long	0x136f
	.uleb128 0x2a
	.long	.LASF684
	.long	0xcc1
	.byte	0x1
	.long	.LLST38
	.uleb128 0x33
	.string	"rx"
	.byte	0x2
	.byte	0x77
	.long	0xbea
	.long	.LLST39
	.uleb128 0x33
	.string	"len"
	.byte	0x2
	.byte	0x77
	.long	0x41b
	.long	.LLST40
	.uleb128 0x3b
	.long	.LBB82
	.long	.LBE82
	.uleb128 0x3c
	.string	"i"
	.byte	0x2
	.byte	0x7b
	.long	0x9c
	.long	.LLST41
	.uleb128 0x35
	.long	0x126d
	.long	.LBB83
	.long	.LBE83
	.byte	0x2
	.byte	0x80
	.long	0x134b
	.uleb128 0x2e
	.long	0x1285
	.long	.LLST42
	.uleb128 0x2e
	.long	0x127b
	.long	.LLST43
	.uleb128 0x3b
	.long	.LBB84
	.long	.LBE84
	.uleb128 0x40
	.long	0x1290
	.long	.LLST44
	.uleb128 0x37
	.long	.LVL47
	.long	0x207
	.uleb128 0x30
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
	.uleb128 0x36
	.long	0xc9c
	.long	.LBB85
	.long	.LBE85
	.byte	0x2
	.byte	0x90
	.uleb128 0x2e
	.long	0xcb4
	.long	.LLST45
	.uleb128 0x2e
	.long	0xcaa
	.long	.LLST46
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	0x810
	.byte	0x2
	.byte	0x9d
	.long	.LFB65
	.long	.LFE65
	.long	.LLST47
	.long	0x138b
	.byte	0x1
	.long	0x140b
	.uleb128 0x2a
	.long	.LASF684
	.long	0xcc1
	.byte	0x1
	.long	.LLST48
	.uleb128 0x33
	.string	"tx"
	.byte	0x2
	.byte	0x9d
	.long	0xbea
	.long	.LLST49
	.uleb128 0x33
	.string	"len"
	.byte	0x2
	.byte	0x9d
	.long	0x41b
	.long	.LLST50
	.uleb128 0x3b
	.long	.LBB87
	.long	.LBE87
	.uleb128 0x3c
	.string	"i"
	.byte	0x2
	.byte	0xa3
	.long	0x9c
	.long	.LLST51
	.uleb128 0x41
	.long	.LVL62
	.long	0x276
	.long	0x13ef
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x30
	.byte	0x1
	.byte	0x66
	.byte	0x1
	.byte	0x4b
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x37
	.long	.LVL64
	.long	0x276
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	0x9e1
	.byte	0x3
	.long	0x1419
	.long	0x142f
	.uleb128 0x22
	.long	.LASF684
	.long	0xcc1
	.byte	0x1
	.uleb128 0x27
	.string	"ch"
	.byte	0x3
	.word	0x1a7
	.long	0x34
	.byte	0
	.uleb128 0x32
	.long	0x98c
	.byte	0x2
	.byte	0xb3
	.long	.LFB66
	.long	.LFE66
	.long	.LLST52
	.long	0x144b
	.byte	0x1
	.long	0x15c8
	.uleb128 0x2a
	.long	.LASF684
	.long	0xcc1
	.byte	0x1
	.long	.LLST53
	.uleb128 0x34
	.long	.LASF693
	.byte	0x2
	.byte	0xb3
	.long	0x41b
	.long	.LLST54
	.uleb128 0x42
	.long	.Ldebug_ranges0+0
	.uleb128 0x3c
	.string	"cnt"
	.byte	0x2
	.byte	0xb5
	.long	0x41b
	.long	.LLST55
	.uleb128 0x3c
	.string	"ch"
	.byte	0x2
	.byte	0xb6
	.long	0x34
	.long	.LLST56
	.uleb128 0x43
	.long	0xe1d
	.long	.LBB106
	.long	.Ldebug_ranges0+0x18
	.byte	0x2
	.byte	0xb8
	.long	0x1501
	.uleb128 0x39
	.long	0xe35
	.byte	0x6
	.byte	0xf2
	.long	.Ldebug_info0+5244
	.sleb128 0
	.uleb128 0x2e
	.long	0xe2b
	.long	.LLST57
	.uleb128 0x38
	.long	0x126d
	.long	.LBB108
	.long	.LBE108
	.byte	0x3
	.word	0x1af
	.uleb128 0x39
	.long	0x1285
	.byte	0x6
	.byte	0xf2
	.long	.Ldebug_info0+5244
	.sleb128 0
	.uleb128 0x2e
	.long	0x127b
	.long	.LLST58
	.uleb128 0x3b
	.long	.LBB109
	.long	.LBE109
	.uleb128 0x40
	.long	0x1290
	.long	.LLST59
	.uleb128 0x37
	.long	.LVL72
	.long	0x207
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x43
	.long	0x140b
	.long	.LBB112
	.long	.Ldebug_ranges0+0x30
	.byte	0x2
	.byte	0xd8
	.long	0x1547
	.uleb128 0x2e
	.long	0x1423
	.long	.LLST60
	.uleb128 0x2e
	.long	0x1419
	.long	.LLST61
	.uleb128 0x37
	.long	.LVL89
	.long	0x276
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x30
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	.LBB115
	.long	.LBE115
	.uleb128 0x3c
	.string	"i"
	.byte	0x2
	.byte	0xc8
	.long	0x34
	.long	.LLST62
	.uleb128 0x44
	.long	.LBB117
	.long	.LBE117
	.long	0x1593
	.uleb128 0x45
	.long	.LASF694
	.byte	0x2
	.byte	0xcd
	.long	0x63
	.long	.LLST63
	.uleb128 0x36
	.long	0xe04
	.long	.LBB118
	.long	.LBE118
	.byte	0x2
	.byte	0xcd
	.uleb128 0x2e
	.long	0xe12
	.long	.LLST64
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	.LBB120
	.long	.LBE120
	.uleb128 0x45
	.long	.LASF694
	.byte	0x2
	.byte	0xd3
	.long	0x63
	.long	.LLST65
	.uleb128 0x36
	.long	0xe04
	.long	.LBB121
	.long	.LBE121
	.byte	0x2
	.byte	0xd3
	.uleb128 0x2e
	.long	0xe12
	.long	.LLST66
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x46
	.long	0x9d3
	.byte	0x2
	.byte	0xe3
	.byte	0x3
	.long	0x15ec
	.uleb128 0x3e
	.uleb128 0x3f
	.string	"spi"
	.byte	0x2
	.byte	0xe5
	.long	0xbe4
	.uleb128 0x3f
	.string	"ch"
	.byte	0x2
	.byte	0xe6
	.long	0x34
	.byte	0
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.long	.LASF695
	.byte	0x2
	.byte	0xf8
	.long	.LFB68
	.long	.LFE68
	.long	.LLST67
	.byte	0x1
	.long	0x16ab
	.uleb128 0x36
	.long	0x15c8
	.long	.LBB138
	.long	.LBE138
	.byte	0x2
	.byte	0xfa
	.uleb128 0x3b
	.long	.LBB139
	.long	.LBE139
	.uleb128 0x48
	.long	0x15d5
	.uleb128 0x40
	.long	0x15e0
	.long	.LLST68
	.uleb128 0x49
	.long	0xe46
	.long	.LBB140
	.long	.LBE140
	.byte	0x2
	.byte	0xe5
	.uleb128 0x35
	.long	0x140b
	.long	.LBB142
	.long	.LBE142
	.byte	0x2
	.byte	0xea
	.long	0x167a
	.uleb128 0x2e
	.long	0x1423
	.long	.LLST69
	.uleb128 0x2e
	.long	0x1419
	.long	.LLST70
	.uleb128 0x37
	.long	.LVL98
	.long	0x276
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 6
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	0xdd2
	.long	.LBB144
	.long	.LBE144
	.byte	0x2
	.byte	0xef
	.uleb128 0x2e
	.long	0xde0
	.long	.LLST71
	.uleb128 0x37
	.long	.LVL101
	.long	0x207
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 13
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	0x40c
	.byte	0x2
	.byte	0x1e
	.long	.LASF703
	.byte	0x5
	.byte	0x3
	.long	_ZN3SPI9m_spiThisE
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x20
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
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
	.uleb128 0x2a
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x6
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x4a
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
	.long	.LFE7
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
	.long	.LFB55
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
	.long	.LFE55
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST2:
	.long	.LVL2
	.long	.LVL3
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL3
	.long	.LVL5
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL5
	.long	.LVL6-1
	.word	0x3
	.byte	0x88
	.sleb128 -13
	.byte	0x9f
	.long	.LVL6-1
	.long	.LFE55
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LFB58
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI3
	.long	.LFE58
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST4:
	.long	.LVL7
	.long	.LVL8
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL8
	.long	.LVL10
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL10
	.long	.LVL11-1
	.word	0x3
	.byte	0x88
	.sleb128 -6
	.byte	0x9f
	.long	.LVL11-1
	.long	.LFE58
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LFB60
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI11
	.long	.LFE60
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	0
	.long	0
.LLST6:
	.long	.LVL12
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
	.long	.LFE60
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL12
	.long	.LVL16
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL16
	.long	.LVL17
	.word	0x2
	.byte	0x88
	.sleb128 9
	.long	.LVL17
	.long	.LVL18-1
	.word	0x2
	.byte	0x8c
	.sleb128 9
	.long	.LVL18-1
	.long	.LFE60
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL12
	.long	.LVL18-1
	.word	0x1
	.byte	0x64
	.long	.LVL18-1
	.long	.LFE60
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL12
	.long	.LVL18-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL18-1
	.long	.LVL25
	.word	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL25
	.long	.LFE60
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL12
	.long	.LVL22
	.word	0x1
	.byte	0x60
	.long	.LVL22
	.long	.LFE60
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x60
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL12
	.long	.LVL23
	.word	0x1
	.byte	0x5e
	.long	.LVL23
	.long	.LFE60
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5e
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL12
	.long	.LVL24
	.word	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL24
	.long	.LFE60
	.word	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x23
	.uleb128 0x4
	.long	0
	.long	0
.LLST13:
	.long	.LVL13
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
	.long	.LFE60
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL14
	.long	.LVL23
	.word	0x1
	.byte	0x5e
	.long	.LVL23
	.long	.LFE60
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x5e
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL14
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
	.long	.LFE60
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LVL15
	.long	.LVL18-1
	.word	0x1
	.byte	0x64
	.long	.LVL18-1
	.long	.LFE60
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL15
	.long	.LVL16
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL16
	.long	.LVL17
	.word	0x2
	.byte	0x88
	.sleb128 9
	.long	.LVL17
	.long	.LVL18-1
	.word	0x2
	.byte	0x8c
	.sleb128 9
	.long	.LVL18-1
	.long	.LFE60
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL15
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
	.long	.LFE60
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL15
	.long	.LVL17
	.word	0x3
	.byte	0x88
	.sleb128 6
	.byte	0x9f
	.long	.LVL17
	.long	.LVL18-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL18-1
	.long	.LVL21
	.word	0x3
	.byte	0x8c
	.sleb128 6
	.byte	0x9f
	.long	.LVL21
	.long	.LFE60
	.word	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x23
	.uleb128 0x6
	.byte	0x9f
	.long	0
	.long	0
.LLST22:
	.long	.LVL18
	.long	.LVL22
	.word	0x1
	.byte	0x60
	.long	.LVL22
	.long	.LFE60
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x60
	.byte	0x9f
	.long	0
	.long	0
.LLST23:
	.long	.LVL18
	.long	.LVL25
	.word	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL25
	.long	.LFE60
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL18
	.long	.LVL21
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL21
	.long	.LFE60
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST27:
	.long	.LVL18
	.long	.LVL19
	.word	0x3
	.byte	0x8c
	.sleb128 13
	.byte	0x9f
	.long	.LVL19
	.long	.LVL20-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL20-1
	.long	.LVL21
	.word	0x3
	.byte	0x8c
	.sleb128 13
	.byte	0x9f
	.long	.LVL21
	.long	.LFE60
	.word	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x23
	.uleb128 0xd
	.byte	0x9f
	.long	0
	.long	0
.LLST28:
	.long	.LVL20
	.long	.LVL21
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL21
	.long	.LFE60
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST29:
	.long	.LVL26
	.long	.LVL28
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL28
	.long	.LFE62
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST30:
	.long	.LVL27
	.long	.LVL29
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST31:
	.long	.LVL27
	.long	.LVL28
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL28
	.long	.LVL29
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST32:
	.long	.LVL30
	.long	.LVL32
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL32
	.long	.LVL33-1
	.word	0x3
	.byte	0x88
	.sleb128 -13
	.byte	0x9f
	.long	.LVL33-1
	.long	.LFE63
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST33:
	.long	.LVL31
	.long	.LVL33
	.word	0x3
	.byte	0x9
	.byte	0xaa
	.byte	0x9f
	.long	.LVL33
	.long	.LFE63
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST34:
	.long	.LVL31
	.long	.LVL32
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL32
	.long	.LVL33-1
	.word	0x3
	.byte	0x88
	.sleb128 -13
	.byte	0x9f
	.long	.LVL33-1
	.long	.LFE63
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST35:
	.long	.LVL34
	.long	.LVL35
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL35
	.long	.LVL36
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
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
	.long	.LVL38
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL38
	.long	.LVL39
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL39
	.long	.LVL41-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL41-1
	.long	.LFE61
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST36:
	.long	.LVL34
	.long	.LVL41-1
	.word	0x1
	.byte	0x66
	.long	.LVL41-1
	.long	.LFE61
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST37:
	.long	.LFB64
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
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI20
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI21
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI22
	.long	.LCFI23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI23
	.long	.LCFI24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI24
	.long	.LFE64
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	0
	.long	0
.LLST38:
	.long	.LVL42
	.long	.LVL44
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL44
	.long	.LVL53
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL53
	.long	.LVL57
	.word	0x3
	.byte	0x78
	.sleb128 -6
	.byte	0x9f
	.long	.LVL57
	.long	.LFE64
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST39:
	.long	.LVL42
	.long	.LVL45
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL45
	.long	.LVL56
	.word	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL56
	.long	.LFE64
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST40:
	.long	.LVL42
	.long	.LVL45
	.word	0x1
	.byte	0x64
	.long	.LVL45
	.long	.LVL55
	.word	0x1
	.byte	0x5c
	.long	.LVL55
	.long	.LFE64
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.long	0
	.long	0
.LLST41:
	.long	.LVL43
	.long	.LVL45
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL45
	.long	.LVL54
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST42:
	.long	.LVL46
	.long	.LVL52
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST43:
	.long	.LVL46
	.long	.LVL52
	.word	0x3
	.byte	0x8c
	.sleb128 6
	.byte	0x9f
	.long	0
	.long	0
.LLST44:
	.long	.LVL47
	.long	.LVL48
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST45:
	.long	.LVL49
	.long	.LVL50
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST46:
	.long	.LVL49
	.long	.LVL50
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST47:
	.long	.LFB65
	.long	.LCFI25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI25
	.long	.LCFI26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI26
	.long	.LCFI27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI27
	.long	.LCFI28
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI28
	.long	.LCFI29
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI29
	.long	.LCFI30
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI30
	.long	.LCFI31
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI31
	.long	.LCFI32
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI32
	.long	.LCFI33
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI33
	.long	.LCFI34
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI34
	.long	.LFE65
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	0
	.long	0
.LLST48:
	.long	.LVL58
	.long	.LVL60
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL60
	.long	.LVL61
	.word	0x3
	.byte	0x88
	.sleb128 -13
	.byte	0x9f
	.long	.LVL61
	.long	.LVL68
	.word	0x3
	.byte	0x7c
	.sleb128 -13
	.byte	0x9f
	.long	.LVL68
	.long	.LFE65
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST49:
	.long	.LVL58
	.long	.LVL61
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL61
	.long	.LVL67
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL67
	.long	.LFE65
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST50:
	.long	.LVL58
	.long	.LVL61
	.word	0x1
	.byte	0x64
	.long	.LVL61
	.long	.LVL66
	.word	0x1
	.byte	0x60
	.long	.LVL66
	.long	.LFE65
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST51:
	.long	.LVL59
	.long	.LVL61
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL61
	.long	.LVL63
	.word	0x6
	.byte	0x8c
	.sleb128 0
	.byte	0x7e
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL63
	.long	.LVL64
	.word	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x7e
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL64
	.long	.LVL65
	.word	0x6
	.byte	0x8c
	.sleb128 0
	.byte	0x7e
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST52:
	.long	.LFB66
	.long	.LCFI35
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI35
	.long	.LCFI36
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI36
	.long	.LCFI37
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI37
	.long	.LCFI38
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI38
	.long	.LCFI39
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI39
	.long	.LCFI40
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI40
	.long	.LCFI41
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI41
	.long	.LCFI42
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI42
	.long	.LCFI43
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI43
	.long	.LCFI44
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI44
	.long	.LFE66
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	0
	.long	0
.LLST53:
	.long	.LVL69
	.long	.LVL71
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL71
	.long	.LVL93
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL93
	.long	.LVL94
	.word	0x3
	.byte	0x7c
	.sleb128 -6
	.byte	0x9f
	.long	.LVL94
	.long	.LFE66
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST54:
	.long	.LVL69
	.long	.LVL71
	.word	0x1
	.byte	0x66
	.long	.LVL71
	.long	.LVL95
	.word	0x1
	.byte	0x5b
	.long	0
	.long	0
.LLST55:
	.long	.LVL70
	.long	.LVL71
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL71
	.long	.LVL96
	.word	0x1
	.byte	0x5a
	.long	.LVL96
	.long	.LFE66
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST56:
	.long	.LVL70
	.long	.LVL74
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL74
	.long	.LVL75
	.word	0x1
	.byte	0x69
	.long	.LVL80
	.long	.LVL81
	.word	0x5
	.byte	0x8c
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.long	.LVL81
	.long	.LVL90
	.word	0x1
	.byte	0x6c
	.long	.LVL90
	.long	.LVL92
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL92
	.long	.LFE66
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST57:
	.long	.LVL71
	.long	.LVL93
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL93
	.long	.LVL94
	.word	0x3
	.byte	0x7c
	.sleb128 -6
	.byte	0x9f
	.long	.LVL94
	.long	.LFE66
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST58:
	.long	.LVL71
	.long	.LVL93
	.word	0x3
	.byte	0x80
	.sleb128 13
	.byte	0x9f
	.long	.LVL93
	.long	.LVL94
	.word	0x3
	.byte	0x7c
	.sleb128 7
	.byte	0x9f
	.long	.LVL94
	.long	.LFE66
	.word	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x23
	.uleb128 0xd
	.byte	0x9f
	.long	0
	.long	0
.LLST59:
	.long	.LVL73
	.long	.LVL75
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL92
	.long	.LFE66
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST60:
	.long	.LVL87
	.long	.LVL90
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST61:
	.long	.LVL87
	.long	.LVL90
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST62:
	.long	.LVL75
	.long	.LVL85
	.word	0x5
	.byte	0x38
	.byte	0x88
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL85
	.long	.LVL86
	.word	0x5
	.byte	0x39
	.byte	0x88
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL86
	.long	.LVL88
	.word	0x5
	.byte	0x38
	.byte	0x88
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST63:
	.long	.LVL76
	.long	.LVL77
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL77
	.long	.LVL79
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST64:
	.long	.LVL77
	.long	.LVL92
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST65:
	.long	.LVL82
	.long	.LVL83
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL83
	.long	.LVL89-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST66:
	.long	.LVL83
	.long	.LVL92
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST67:
	.long	.LFB68
	.long	.LCFI45
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI45
	.long	.LCFI46
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI46
	.long	.LCFI47
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI47
	.long	.LCFI48
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI48
	.long	.LCFI49
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI49
	.long	.LCFI50
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI50
	.long	.LCFI51
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI51
	.long	.LCFI52
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI52
	.long	.LCFI53
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI53
	.long	.LCFI54
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI54
	.long	.LCFI55
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI55
	.long	.LCFI56
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI56
	.long	.LCFI57
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI57
	.long	.LCFI58
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI58
	.long	.LCFI59
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	.LCFI59
	.long	.LCFI60
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 17
	.long	.LCFI60
	.long	.LFE68
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 18
	.long	0
	.long	0
.LLST68:
	.long	.LVL97
	.long	.LVL98-1
	.word	0x1
	.byte	0x66
	.long	.LVL99
	.long	.LVL101
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL101
	.long	.LVL102
	.word	0x1
	.byte	0x68
	.long	.LVL102
	.long	.LVL103
	.word	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL103
	.long	.LVL105
	.word	0x1
	.byte	0x68
	.long	.LVL105
	.long	.LFE68
	.word	0x2
	.byte	0x8
	.byte	0x2f
	.long	0
	.long	0
.LLST69:
	.long	.LVL97
	.long	.LVL98-1
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST70:
	.long	.LVL97
	.long	.LVL104
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST71:
	.long	.LVL100
	.long	.LVL102
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x6c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	.LFB55
	.long	.LFE55-.LFB55
	.long	.LFB58
	.long	.LFE58-.LFB58
	.long	.LFB60
	.long	.LFE60-.LFB60
	.long	.LFB62
	.long	.LFE62-.LFB62
	.long	.LFB63
	.long	.LFE63-.LFB63
	.long	.LFB61
	.long	.LFE61-.LFB61
	.long	.LFB64
	.long	.LFE64-.LFB64
	.long	.LFB65
	.long	.LFE65-.LFB65
	.long	.LFB66
	.long	.LFE66-.LFB66
	.long	.LFB68
	.long	.LFE68-.LFB68
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB105
	.long	.LBE105
	.long	.LBB126
	.long	.LBE126
	.long	0
	.long	0
	.long	.LBB106
	.long	.LBE106
	.long	.LBB124
	.long	.LBE124
	.long	0
	.long	0
	.long	.LBB112
	.long	.LBE112
	.long	.LBB123
	.long	.LBE123
	.long	0
	.long	0
	.long	.LFB7
	.long	.LFE7
	.long	.LFB55
	.long	.LFE55
	.long	.LFB58
	.long	.LFE58
	.long	.LFB60
	.long	.LFE60
	.long	.LFB62
	.long	.LFE62
	.long	.LFB63
	.long	.LFE63
	.long	.LFB61
	.long	.LFE61
	.long	.LFB64
	.long	.LFE64
	.long	.LFB65
	.long	.LFE65
	.long	.LFB66
	.long	.LFE66
	.long	.LFB68
	.long	.LFE68
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
	.uleb128 0x2
	.byte	0x3
	.uleb128 0x16
	.uleb128 0x3
	.byte	0x5
	.uleb128 0x17
	.long	.LASF428
	.byte	0x3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x5
	.uleb128 0x17
	.long	.LASF429
	.byte	0x3
	.uleb128 0x19
	.uleb128 0x4
	.byte	0x7
	.long	.Ldebug_macro2
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.byte	0x4
	.file 5 "../include/fnasm.h"
	.byte	0x3
	.uleb128 0x17
	.uleb128 0x5
	.byte	0x7
	.long	.Ldebug_macro4
	.byte	0x4
	.file 6 "../include/reg/timing.h"
	.byte	0x3
	.uleb128 0x18
	.uleb128 0x6
	.byte	0x7
	.long	.Ldebug_macro5
	.byte	0x4
	.file 7 "../include/reg/interrupt.h"
	.byte	0x3
	.uleb128 0x19
	.uleb128 0x7
	.byte	0x7
	.long	.Ldebug_macro6
	.byte	0x4
	.file 8 "../include/reg/regusi.h"
	.byte	0x3
	.uleb128 0x1a
	.uleb128 0x8
	.byte	0x5
	.uleb128 0x17
	.long	.LASF468
	.file 9 "../include/reg/regdport.h"
	.byte	0x3
	.uleb128 0x19
	.uleb128 0x9
	.byte	0x5
	.uleb128 0x16
	.long	.LASF469
	.file 10 "../include/bits.h"
	.byte	0x3
	.uleb128 0x18
	.uleb128 0xa
	.byte	0x7
	.long	.Ldebug_macro7
	.byte	0x4
	.file 11 "../include/reg/regmacros.h"
	.byte	0x3
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro9
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro10
	.byte	0x4
	.byte	0x5
	.uleb128 0x23
	.long	.LASF531
	.byte	0x5
	.uleb128 0x79
	.long	.LASF532
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF533
	.byte	0x5
	.uleb128 0xa0
	.long	.LASF534
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
	.long	.LASF430
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF431
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF432
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF433
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF434
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF435
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.circbuff.h.32.31ee656e2a3e90fb4ddee1dbdf5d6d60,comdat
.Ldebug_macro3:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x20
	.long	.LASF436
	.byte	0x5
	.uleb128 0x41
	.long	.LASF437
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.fnasm.h.23.7eceab03832af77a7f7ccd5b8c0ab920,comdat
.Ldebug_macro4:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.long	.LASF438
	.byte	0x5
	.uleb128 0x19
	.long	.LASF439
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF440
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF441
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF442
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF443
	.byte	0x5
	.uleb128 0x21
	.long	.LASF444
	.byte	0x5
	.uleb128 0x24
	.long	.LASF445
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.timing.h.22.67928da58428f8f56a8f06df487b592a,comdat
.Ldebug_macro5:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x16
	.long	.LASF446
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF447
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF448
	.byte	0x6
	.uleb128 0x27
	.long	.LASF449
	.byte	0x5
	.uleb128 0x34
	.long	.LASF450
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF451
	.byte	0x5
	.uleb128 0x47
	.long	.LASF452
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF453
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF454
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF455
	.byte	0x5
	.uleb128 0x50
	.long	.LASF456
	.byte	0x5
	.uleb128 0x53
	.long	.LASF457
	.byte	0x6
	.uleb128 0x5a
	.long	.LASF458
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.interrupt.h.23.0afd4eadf21a5f98065932550e67ed73,comdat
.Ldebug_macro6:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.long	.LASF459
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF447
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF448
	.byte	0x6
	.uleb128 0x28
	.long	.LASF449
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF460
	.byte	0x5
	.uleb128 0x33
	.long	.LASF461
	.byte	0x5
	.uleb128 0x37
	.long	.LASF462
	.byte	0x5
	.uleb128 0x41
	.long	.LASF463
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF464
	.byte	0x5
	.uleb128 0x55
	.long	.LASF465
	.byte	0x5
	.uleb128 0x56
	.long	.LASF466
	.byte	0x5
	.uleb128 0x57
	.long	.LASF467
	.byte	0x6
	.uleb128 0x64
	.long	.LASF458
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.bits.h.23.4b916c607563962d63c8c197b9cd0074,comdat
.Ldebug_macro7:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.long	.LASF470
	.byte	0x5
	.uleb128 0x19
	.long	.LASF471
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF472
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.regmacros.h.22.49a8bb8630f59ea577dfc3b79d20f031,comdat
.Ldebug_macro8:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x16
	.long	.LASF473
	.byte	0x5
	.uleb128 0x19
	.long	.LASF474
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF475
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF476
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF477
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF478
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.regdport.h.33.75cf1069ad344d63a73a5ca22441e85f,comdat
.Ldebug_macro9:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x21
	.long	.LASF447
	.byte	0x5
	.uleb128 0x22
	.long	.LASF448
	.byte	0x6
	.uleb128 0x2a
	.long	.LASF449
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF479
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF480
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF481
	.byte	0x5
	.uleb128 0x40
	.long	.LASF482
	.byte	0x5
	.uleb128 0x41
	.long	.LASF483
	.byte	0x5
	.uleb128 0x42
	.long	.LASF484
	.byte	0x5
	.uleb128 0x45
	.long	.LASF485
	.byte	0x5
	.uleb128 0x46
	.long	.LASF486
	.byte	0x5
	.uleb128 0x48
	.long	.LASF487
	.byte	0x5
	.uleb128 0x49
	.long	.LASF488
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF489
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF490
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF491
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF492
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF493
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF494
	.byte	0x5
	.uleb128 0x60
	.long	.LASF495
	.byte	0x6
	.uleb128 0x67
	.long	.LASF458
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.regusi.h.32.514a92ebbb4b229622a309d059ac36c8,comdat
.Ldebug_macro10:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x20
	.long	.LASF447
	.byte	0x5
	.uleb128 0x21
	.long	.LASF448
	.byte	0x6
	.uleb128 0x2a
	.long	.LASF449
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF496
	.byte	0x6
	.uleb128 0x2e
	.long	.LASF497
	.byte	0x5
	.uleb128 0x33
	.long	.LASF498
	.byte	0x5
	.uleb128 0x38
	.long	.LASF499
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF500
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF501
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF502
	.byte	0x5
	.uleb128 0x40
	.long	.LASF503
	.byte	0x5
	.uleb128 0x41
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
	.uleb128 0x4a
	.long	.LASF508
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF509
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF510
	.byte	0x5
	.uleb128 0x75
	.long	.LASF511
	.byte	0x5
	.uleb128 0x76
	.long	.LASF512
	.byte	0x5
	.uleb128 0x77
	.long	.LASF513
	.byte	0x5
	.uleb128 0x78
	.long	.LASF514
	.byte	0x5
	.uleb128 0x79
	.long	.LASF515
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF516
	.byte	0x5
	.uleb128 0x84
	.long	.LASF517
	.byte	0x5
	.uleb128 0x85
	.long	.LASF518
	.byte	0x5
	.uleb128 0x86
	.long	.LASF519
	.byte	0x5
	.uleb128 0x87
	.long	.LASF520
	.byte	0x5
	.uleb128 0x88
	.long	.LASF521
	.byte	0x5
	.uleb128 0x89
	.long	.LASF522
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF523
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF524
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF525
	.byte	0x5
	.uleb128 0x90
	.long	.LASF526
	.byte	0x5
	.uleb128 0x91
	.long	.LASF527
	.byte	0x5
	.uleb128 0x92
	.long	.LASF528
	.byte	0x5
	.uleb128 0x93
	.long	.LASF529
	.byte	0x5
	.uleb128 0x94
	.long	.LASF530
	.byte	0x6
	.uleb128 0xa5
	.long	.LASF458
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF446:
	.string	"TIMING_H "
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
.LASF666:
	.string	"setDelayNops"
.LASF363:
	.string	"__BUILTIN_AVR_ROUNDULLR 1"
.LASF354:
	.string	"__BUILTIN_AVR_ABSLK 1"
.LASF127:
	.string	"__FLT_DIG__ 6"
.LASF680:
	.string	"_ZN3SPI11_setSpiThisEPS_"
.LASF520:
	.string	"USICS_T0CMP (USICS0)"
.LASF407:
	.string	"__BUILTIN_AVR_LLRBITS 1"
.LASF585:
	.string	"putres_e"
.LASF701:
	.string	"_spiThis"
.LASF632:
	.string	"_ZN3SPI12setData2XmitERKc"
.LASF97:
	.string	"__INT_LEAST8_MAX__ 127"
.LASF417:
	.string	"__BUILTIN_AVR_UKBITS 1"
.LASF555:
	.string	"overflow"
.LASF628:
	.string	"_ZN3SPI12setData2XmitERKi"
.LASF629:
	.string	"_ZN3SPI12setData2XmitERKj"
.LASF89:
	.string	"__INT8_MAX__ 127"
.LASF686:
	.string	"output"
.LASF337:
	.string	"__BUILTIN_AVR_SEI 1"
.LASF91:
	.string	"__INT32_MAX__ 2147483647L"
.LASF272:
	.string	"__HQ_IBIT__ 0"
.LASF623:
	.string	"rxBufferDim"
.LASF59:
	.string	"__INT_FAST16_TYPE__ int"
.LASF261:
	.string	"__LLACCUM_MIN__ (-0X1P15LLK-0X1P15LLK)"
.LASF625:
	.string	"setTxBufferSpec"
.LASF486:
	.string	"PB4 BV_(4)"
.LASF631:
	.string	"_ZN3SPI12setData2XmitERKy"
.LASF361:
	.string	"__BUILTIN_AVR_ROUNDUR 1"
.LASF464:
	.string	"EMPTY_INTERRUPT(vector) extern \"C\" void vector(void) __attribute__ ((signal,naked,__INTR_ATTRS)); void vector (void) { __asm__ __volatile__ (\"reti\" ::); }"
.LASF582:
	.string	"_ZN14CircularBuffer11evalBuffDimEh"
.LASF260:
	.string	"__LLACCUM_IBIT__ 16"
.LASF311:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 1"
.LASF103:
	.string	"__INT_LEAST64_MAX__ 9223372036854775807LL"
.LASF571:
	.string	"getData"
.LASF317:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 1"
.LASF219:
	.string	"__LLFRACT_FBIT__ 63"
.LASF323:
	.string	"__SIZEOF_WINT_T__ 2"
.LASF615:
	.string	"_ZN3SPI19enhancedGetRcvdDataERc"
.LASF220:
	.string	"__LLFRACT_IBIT__ 0"
.LASF461:
	.string	"_VECTOR(N) __vector_ ## N"
.LASF603:
	.string	"outputEnable"
.LASF159:
	.string	"__LDBL_MAX_10_EXP__ 38"
.LASF196:
	.string	"__USFRACT_MIN__ 0.0UHR"
.LASF608:
	.string	"_ZN3SPI11getRcvdDataEPKvh"
.LASF618:
	.string	"_ZN3SPI19enhancedGetRcvdDataERj"
.LASF649:
	.string	"sendMaster"
.LASF4:
	.string	"__GNUC_MINOR__ 8"
.LASF540:
	.string	"unsigned int"
.LASF619:
	.string	"_ZN3SPI19enhancedGetRcvdDataERm"
.LASF366:
	.string	"__BUILTIN_AVR_ROUNDLK 1"
.LASF531:
	.string	"_INIT_ m_master(false), m_enhFlag(false), m_output(true), m_activeSlave(0), m_delayNops(0), m_rx(NULL,0), m_tx(NULL,0)"
.LASF230:
	.string	"__SACCUM_IBIT__ 8"
.LASF23:
	.string	"__SIZEOF_SIZE_T__ 2"
.LASF19:
	.string	"__SIZEOF_SHORT__ 2"
.LASF22:
	.string	"__SIZEOF_LONG_DOUBLE__ 4"
.LASF332:
	.string	"__AVR_HAVE_16BIT_SP__ 1"
.LASF688:
	.string	"_ZN3SPIC2Ev"
.LASF3:
	.string	"__GNUC__ 4"
.LASF27:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF227:
	.string	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR"
.LASF185:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF578:
	.string	"setBufferSpec"
.LASF106:
	.string	"__UINT8_C(c) c"
.LASF57:
	.string	"__UINT_LEAST64_TYPE__ long long unsigned int"
.LASF453:
	.string	"CLKPS_DIV RCLKPS(1UL)"
.LASF382:
	.string	"__BUILTIN_AVR_COUNTLSLK 1"
.LASF10:
	.string	"__ATOMIC_RELEASE 3"
.LASF523:
	.string	"USICLK BV_(1)"
.LASF595:
	.string	"m_delayNops"
.LASF474:
	.string	"REGDECL_WPTR(r) (volatile uint16_t * volatile)((r)+((((int)r)<0x60)?0x20:0))"
.LASF381:
	.string	"__BUILTIN_AVR_COUNTLSK 1"
.LASF589:
	.string	"__USI_ISDATA_FLAG"
.LASF173:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF357:
	.string	"__BUILTIN_AVR_ROUNDR 1"
.LASF14:
	.string	"__OPTIMIZE__ 1"
.LASF697:
	.string	"../spi.cpp"
.LASF259:
	.string	"__LLACCUM_FBIT__ 47"
.LASF8:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF388:
	.string	"__BUILTIN_AVR_BITSHR 1"
.LASF691:
	.string	"speed"
.LASF135:
	.string	"__FLT_EPSILON__ 1.19209290e-7F"
.LASF592:
	.string	"m_enhFlag"
.LASF50:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF115:
	.string	"__INT_FAST32_MAX__ 2147483647L"
.LASF502:
	.string	"USIOIF BV_(6)"
.LASF86:
	.string	"__UINTMAX_C(c) c ## ULL"
.LASF480:
	.string	"PIN(p) (p-2)"
.LASF522:
	.string	"USICS_NEGEDGE (USICS1|USICS0)"
.LASF78:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF360:
	.string	"__BUILTIN_AVR_ROUNDUHR 1"
.LASF29:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF105:
	.string	"__UINT_LEAST8_MAX__ 255"
.LASF375:
	.string	"__BUILTIN_AVR_COUNTLSLLR 1"
.LASF72:
	.string	"__SCHAR_MAX__ 127"
.LASF328:
	.string	"__AVR_ATtiny85__ 1"
.LASF15:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF668:
	.string	"master"
.LASF552:
	.string	"m_bufferDim"
.LASF509:
	.string	"USISIE BV_(7)"
.LASF326:
	.string	"__AVR__ 1"
.LASF54:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF694:
	.string	"i___"
.LASF627:
	.string	"_ZN3SPI12setData2XmitEPKvh"
.LASF364:
	.string	"__BUILTIN_AVR_ROUNDHK 1"
.LASF188:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF225:
	.string	"__ULLFRACT_IBIT__ 0"
.LASF500:
	.string	"USISR REGDECL(0x0E)"
.LASF376:
	.string	"__BUILTIN_AVR_COUNTLSUHR 1"
.LASF580:
	.string	"_ZN14CircularBuffer13setBufferSpecEPKch"
.LASF653:
	.string	"_setRcvdByte"
.LASF52:
	.string	"__INT_LEAST32_TYPE__ long int"
.LASF494:
	.string	"PIN_from_SET(dport) PINB"
.LASF416:
	.string	"__BUILTIN_AVR_UHKBITS 1"
.LASF622:
	.string	"_ZN3SPI15getRcvdDataSizeEv"
.LASF251:
	.string	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)"
.LASF41:
	.string	"__SIG_ATOMIC_TYPE__ char"
.LASF256:
	.string	"__ULACCUM_MIN__ 0.0ULK"
.LASF588:
	.string	"__USI_NODATA_ZERO"
.LASF138:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF676:
	.string	"resetBuffers"
.LASF324:
	.string	"__SIZEOF_PTRDIFF_T__ 2"
.LASF96:
	.string	"__UINT64_MAX__ 18446744073709551615ULL"
.LASF669:
	.string	"_ZNK3SPI6masterEv"
.LASF61:
	.string	"__INT_FAST64_TYPE__ long long int"
.LASF98:
	.string	"__INT8_C(c) c"
.LASF488:
	.string	"PB2 BV_(2)"
.LASF535:
	.string	"signed char"
.LASF484:
	.string	"PINB REGDECL(PIN(__PORTADDRB))"
.LASF527:
	.string	"PINUSI PINB"
.LASF142:
	.string	"__DBL_MIN_EXP__ (-125)"
.LASF421:
	.string	"__BUILTIN_AVR_ROUNDFX 1"
.LASF542:
	.string	"uint32_t"
.LASF389:
	.string	"__BUILTIN_AVR_BITSR 1"
.LASF600:
	.string	"_ZN3SPI5beginEPKvhS1_hbj"
.LASF443:
	.string	"sts(mem,in) __asm__ __volatile__ (\"sts %0,%1\" : : \"i\" (&mem), \"r\" (in) : \"memory\" );"
.LASF67:
	.string	"__UINTPTR_TYPE__ unsigned int"
.LASF404:
	.string	"__BUILTIN_AVR_HRBITS 1"
.LASF377:
	.string	"__BUILTIN_AVR_COUNTLSUR 1"
.LASF463:
	.string	"NAKED_ISR(vector) extern \"C\" void vector(void) __attribute__ ((signal,naked,__INTR_ATTRS)); void vector (void)"
.LASF292:
	.string	"__SA_IBIT__ 16"
.LASF222:
	.string	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR"
.LASF661:
	.string	"_ZN3SPI14setActiveSlaveERKh"
.LASF176:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF472:
	.string	"SETBITS(s,bv,m) (((s) & ~(m)) | ((bv) & (m)))"
.LASF293:
	.string	"__DA_FBIT__ 31"
.LASF431:
	.string	"NULL __null"
.LASF217:
	.string	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR"
.LASF304:
	.string	"__UTA_IBIT__ 16"
.LASF430:
	.string	"H_TYPES_H_ "
.LASF171:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF238:
	.string	"__USACCUM_EPSILON__ 0x1P-8UHK"
.LASF452:
	.string	"CLK_KHz 16000UL"
.LASF538:
	.string	"int16_t"
.LASF444:
	.string	"lds(out,mem) __asm__ __volatile__ (\"lds %0,%1\" : \"=d\" (out) : \"i\" (&mem));"
.LASF257:
	.string	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK"
.LASF145:
	.string	"__DBL_MAX_10_EXP__ 38"
.LASF192:
	.string	"__SFRACT_MAX__ 0X7FP-7HR"
.LASF270:
	.string	"__QQ_IBIT__ 0"
.LASF546:
	.string	"long long unsigned int"
.LASF660:
	.string	"setActiveSlave"
.LASF183:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF412:
	.string	"__BUILTIN_AVR_HKBITS 1"
.LASF650:
	.string	"_ZN3SPI10sendMasterEh"
.LASF218:
	.string	"__ULFRACT_EPSILON__ 0x1P-32ULR"
.LASF581:
	.string	"evalBuffDim"
.LASF607:
	.string	"getRcvdData"
.LASF215:
	.string	"__ULFRACT_IBIT__ 0"
.LASF288:
	.string	"__UTQ_IBIT__ 0"
.LASF258:
	.string	"__ULACCUM_EPSILON__ 0x1P-32ULK"
.LASF456:
	.string	"TICK_ns_10th ((unsigned long)(TICKf_ns*10))"
.LASF667:
	.string	"_ZN3SPI12setDelayNopsERKj"
.LASF125:
	.string	"__FLT_RADIX__ 2"
.LASF396:
	.string	"__BUILTIN_AVR_BITSHK 1"
.LASF448:
	.string	"___tiny85 "
.LASF226:
	.string	"__ULLFRACT_MIN__ 0.0ULLR"
.LASF111:
	.string	"__UINT_LEAST64_MAX__ 18446744073709551615ULL"
.LASF246:
	.string	"__UACCUM_MIN__ 0.0UK"
.LASF515:
	.string	"USIWM_2W_1 (USIWM1)"
.LASF122:
	.string	"__UINTPTR_MAX__ 65535U"
.LASF369:
	.string	"__BUILTIN_AVR_ROUNDUK 1"
.LASF549:
	.string	"OVERWRITTEN"
.LASF63:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF504:
	.string	"USIDC BV_(4)"
.LASF180:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF39:
	.string	"__CHAR16_TYPE__ unsigned int"
.LASF229:
	.string	"__SACCUM_FBIT__ 7"
.LASF207:
	.string	"__UFRACT_MAX__ 0XFFFFP-16UR"
.LASF481:
	.string	"__PORTADDRB 0x18"
.LASF179:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF201:
	.string	"__FRACT_MIN__ (-0.5R-0.5R)"
.LASF670:
	.string	"setMaster"
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
.LASF626:
	.string	"setData2Xmit"
.LASF612:
	.string	"_ZN3SPI11getRcvdByteERc"
.LASF234:
	.string	"__USACCUM_FBIT__ 8"
.LASF26:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF392:
	.string	"__BUILTIN_AVR_BITSUHR 1"
.LASF702:
	.string	"_ZN3SPI8_spiThisEv"
.LASF344:
	.string	"__BUILTIN_AVR_FMULSU 1"
.LASF162:
	.string	"__LDBL_MIN__ 1.17549435e-38L"
.LASF300:
	.string	"__USA_IBIT__ 16"
.LASF490:
	.string	"PB0 BV_(0)"
.LASF683:
	.string	"buff"
.LASF182:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF685:
	.string	"spith"
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
.LASF170:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF517:
	.string	"USICS1 BV_(3)"
.LASF547:
	.string	"size_t"
.LASF576:
	.string	"_ZN14CircularBuffer7putDataEPKchb"
.LASF554:
	.string	"wPtr"
.LASF445:
	.string	"NOPLOOPDELAY(n) {for(register unsigned int i___=0;i___<(n);i___++) __asm__ __volatile__ (\"nop\");}"
.LASF506:
	.string	"USICNT() (USISR&USICNT_0_3)"
.LASF521:
	.string	"USICS_POSEDGE (USICS1)"
.LASF25:
	.string	"__BIGGEST_ALIGNMENT__ 1"
.LASF68:
	.string	"__GXX_WEAK__ 1"
.LASF295:
	.string	"__TA_FBIT__ 47"
.LASF294:
	.string	"__DA_IBIT__ 32"
.LASF594:
	.string	"m_activeSlave"
.LASF250:
	.string	"__LACCUM_IBIT__ 32"
.LASF144:
	.string	"__DBL_MAX_EXP__ 128"
.LASF197:
	.string	"__USFRACT_MAX__ 0XFFP-8UHR"
.LASF378:
	.string	"__BUILTIN_AVR_COUNTLSULR 1"
.LASF203:
	.string	"__FRACT_EPSILON__ 0x1P-15R"
.LASF447:
	.string	"__AVR_Selected "
.LASF498:
	.string	"USIDR REGDECL(0xF)"
.LASF390:
	.string	"__BUILTIN_AVR_BITSLR 1"
.LASF70:
	.string	"__GXX_ABI_VERSION 1002"
.LASF434:
	.string	"_mSec(n) ((n)*1000UL)"
.LASF604:
	.string	"_ZN3SPI12outputEnableEb"
.LASF345:
	.string	"__BUILTIN_AVR_DELAY_CYCLES 1"
.LASF348:
	.string	"__BUILTIN_AVR_ABSHR 1"
.LASF6:
	.string	"__VERSION__ \"4.8.1\""
.LASF637:
	.string	"_ZN3SPI20enhancedSetData2XmitERKc"
.LASF87:
	.string	"__SIG_ATOMIC_MAX__ 127"
.LASF426:
	.string	"__ELF__ 1"
.LASF233:
	.string	"__SACCUM_EPSILON__ 0x1P-7HK"
.LASF638:
	.string	"_ZN3SPI20enhancedSetData2XmitERKh"
.LASF639:
	.string	"_ZN3SPI20enhancedSetData2XmitERKi"
.LASF640:
	.string	"_ZN3SPI20enhancedSetData2XmitERKj"
.LASF641:
	.string	"_ZN3SPI20enhancedSetData2XmitERKm"
.LASF383:
	.string	"__BUILTIN_AVR_COUNTLSLLK 1"
.LASF591:
	.string	"m_master"
.LASF411:
	.string	"__BUILTIN_AVR_ULLRBITS 1"
.LASF310:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 1"
.LASF336:
	.string	"__BUILTIN_AVR_NOP 1"
.LASF282:
	.string	"__UHQ_IBIT__ 0"
.LASF204:
	.string	"__UFRACT_FBIT__ 16"
.LASF437:
	.string	"__CIRCBUFFDIM() ((wPtr-rPtr)&(bufferDim()-1))"
.LASF642:
	.string	"_ZN3SPI20enhancedSetData2XmitERKy"
.LASF131:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF166:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF533:
	.string	"__rx_(i) *((uint8_t *)rx+i)"
.LASF236:
	.string	"__USACCUM_MIN__ 0.0UHK"
.LASF371:
	.string	"__BUILTIN_AVR_ROUNDULLK 1"
.LASF643:
	.string	"masterSetActiveSlave2Xmit"
.LASF235:
	.string	"__USACCUM_IBIT__ 8"
.LASF216:
	.string	"__ULFRACT_MIN__ 0.0ULR"
.LASF126:
	.string	"__FLT_MANT_DIG__ 24"
.LASF598:
	.string	"~SPI"
.LASF284:
	.string	"__USQ_IBIT__ 0"
.LASF677:
	.string	"_ZN3SPI12resetBuffersEv"
.LASF305:
	.string	"__REGISTER_PREFIX__ "
.LASF556:
	.string	"overwritten"
.LASF534:
	.string	"__tx(i) *((uint8_t *)tx+i)"
.LASF245:
	.string	"__UACCUM_IBIT__ 16"
.LASF124:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF583:
	.string	"char"
.LASF95:
	.string	"__UINT32_MAX__ 4294967295UL"
.LASF505:
	.string	"USICNT_0_3 (0xF)"
.LASF645:
	.string	"get2XmitDataSize"
.LASF454:
	.string	"CLK_CYCLE_FREQ_KHz (CLK_KHz/CLKPS_DIV)"
.LASF47:
	.string	"__UINT16_TYPE__ unsigned int"
.LASF199:
	.string	"__FRACT_FBIT__ 15"
.LASF532:
	.string	"__rx(i) *((char *)rx+i)"
.LASF419:
	.string	"__BUILTIN_AVR_ULLKBITS 1"
.LASF565:
	.string	"_ZN14CircularBuffer9overWriteEv"
.LASF397:
	.string	"__BUILTIN_AVR_BITSK 1"
.LASF568:
	.string	"getByte"
.LASF511:
	.string	"USIWM0 BV_(4)"
.LASF513:
	.string	"USIWM_DISABLED 0"
.LASF424:
	.string	"__INT24_MIN__ (-__INT24_MAX__-1)"
.LASF239:
	.string	"__ACCUM_FBIT__ 15"
.LASF55:
	.string	"__UINT_LEAST16_TYPE__ unsigned int"
.LASF703:
	.string	"_ZN3SPI9m_spiThisE"
.LASF586:
	.string	"enforceProtocol_e"
.LASF471:
	.string	"BV_(b) (1<<(b))"
.LASF132:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF297:
	.string	"__UHA_FBIT__ 8"
.LASF7:
	.string	"__ATOMIC_RELAXED 0"
.LASF327:
	.string	"__AVR_ARCH__ 25"
.LASF299:
	.string	"__USA_FBIT__ 16"
.LASF266:
	.string	"__ULLACCUM_MIN__ 0.0ULLK"
.LASF473:
	.string	"REGMACROS_H "
.LASF634:
	.string	"_ZN3SPI12setByte2XmitEc"
.LASF368:
	.string	"__BUILTIN_AVR_ROUNDUHK 1"
.LASF244:
	.string	"__UACCUM_FBIT__ 16"
.LASF537:
	.string	"uint8_t"
.LASF373:
	.string	"__BUILTIN_AVR_COUNTLSR 1"
.LASF101:
	.string	"__INT_LEAST32_MAX__ 2147483647L"
.LASF172:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF209:
	.string	"__LFRACT_FBIT__ 31"
.LASF528:
	.string	"MISO PB1"
.LASF279:
	.string	"__UQQ_FBIT__ 8"
.LASF462:
	.string	"ISR(vector,...) extern \"C\" void vector (void) __attribute__ ((signal,__INTR_ATTRS)) __VA_ARGS__; void vector (void)"
.LASF119:
	.string	"__UINT_FAST32_MAX__ 4294967295UL"
.LASF386:
	.string	"__BUILTIN_AVR_COUNTLSULK 1"
.LASF467:
	.string	"USI_OVF_VECT _VECTOR(14)"
.LASF1:
	.string	"__cplusplus 199711L"
.LASF432:
	.string	"UNUSED(x) (void)(x)"
.LASF316:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 1"
.LASF499:
	.string	"USIBR REGDECL(0x10)"
.LASF77:
	.string	"__WCHAR_MAX__ 32767"
.LASF243:
	.string	"__ACCUM_EPSILON__ 0x1P-15K"
.LASF648:
	.string	"_ZN3SPI11txBufferDimEv"
.LASF334:
	.string	"__AVR_SFR_OFFSET__ 0x20"
.LASF605:
	.string	"setRxBufferSpec"
.LASF69:
	.string	"__DEPRECATED 1"
.LASF349:
	.string	"__BUILTIN_AVR_ABSR 1"
.LASF287:
	.string	"__UTQ_FBIT__ 128"
.LASF90:
	.string	"__INT16_MAX__ 32767"
.LASF544:
	.string	"long long int"
.LASF24:
	.string	"__CHAR_BIT__ 8"
.LASF558:
	.string	"CircularBuffer"
.LASF79:
	.string	"__WINT_MAX__ 32767"
.LASF574:
	.string	"_ZN14CircularBuffer7putByteEcb"
.LASF309:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 1"
.LASF415:
	.string	"__BUILTIN_AVR_LLKBITS 1"
.LASF155:
	.string	"__LDBL_DIG__ 6"
.LASF646:
	.string	"_ZN3SPI16get2XmitDataSizeEv"
.LASF682:
	.string	"_ZN3SPI19_enableOvfInterruptEv"
.LASF273:
	.string	"__SQ_FBIT__ 31"
.LASF485:
	.string	"PB5 BV_(5)"
.LASF440:
	.string	"sei() __asm__ __volatile__ (\"sei\" ::: \"memory\")"
.LASF365:
	.string	"__BUILTIN_AVR_ROUNDK 1"
.LASF278:
	.string	"__TQ_IBIT__ 0"
.LASF31:
	.string	"__SIZEOF_POINTER__ 2"
.LASF73:
	.string	"__SHRT_MAX__ 32767"
.LASF441:
	.string	"nop() __asm__ __volatile__ (\"nop\" ::)"
.LASF318:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF679:
	.string	"_ZN3SPI15setTxBufferSpecEPKvh"
.LASF109:
	.string	"__UINT_LEAST32_MAX__ 4294967295UL"
.LASF428:
	.string	"SPI_H_ "
.LASF675:
	.string	"_ZN3SPI7resetRxEv"
.LASF584:
	.string	"bool"
.LASF400:
	.string	"__BUILTIN_AVR_BITSUHK 1"
.LASF100:
	.string	"__INT16_C(c) c"
.LASF320:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF662:
	.string	"setOutput"
.LASF681:
	.string	"_enableOvfInterrupt"
.LASF34:
	.string	"__PTRDIFF_TYPE__ int"
.LASF64:
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
.LASF302:
	.string	"__UDA_IBIT__ 32"
.LASF9:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF609:
	.string	"_ZN3SPI11getRcvdDataERc"
.LASF482:
	.string	"PORTB REGDECL(__PORTADDRB)"
.LASF362:
	.string	"__BUILTIN_AVR_ROUNDULR 1"
.LASF508:
	.string	"USICR REGDECL(0x0D)"
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
.LASF117:
	.string	"__UINT_FAST8_MAX__ 255"
.LASF356:
	.string	"__BUILTIN_AVR_ROUNDHR 1"
.LASF12:
	.string	"__ATOMIC_CONSUME 1"
.LASF450:
	.ascii	"RCLK_DIV(d) ((d<=1)?1UL:(d<=2)?2UL"
	.string	": (d<=4+1)?4UL:(d<=8+3)?8UL: (d<=16+7)?16UL:(d<=32+15)?32UL: (d<=64+31)?64UL:(d<=128+63)?128UL: (d<=256+127)?256UL:(d<=512+255)?512UL: (d<=1024+511)?1024UL:(d<=2048+1023)?2048UL: (d<=4096+2047)?4096UL:(d<=8192+4095)?8192UL: (d<=16384+8191)?16384UL:16384UL)"
.LASF459:
	.string	"INTERRUPT_H "
.LASF476:
	.string	"REGDECLB(r) (*REGDECL_BPTR(r))"
.LASF621:
	.string	"getRcvdDataSize"
.LASF214:
	.string	"__ULFRACT_FBIT__ 32"
.LASF433:
	.string	"_uSec(n) (n)"
.LASF21:
	.string	"__SIZEOF_DOUBLE__ 4"
.LASF60:
	.string	"__INT_FAST32_TYPE__ long int"
.LASF241:
	.string	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)"
.LASF438:
	.string	"FNASM_H_ "
.LASF435:
	.string	"_Sec(n) ((n)*1000000UL)"
.LASF5:
	.string	"__GNUC_PATCHLEVEL__ 1"
.LASF398:
	.string	"__BUILTIN_AVR_BITSLK 1"
.LASF655:
	.string	"_ZN3SPI12_setRcvdByteEh"
.LASF698:
	.string	"/home/sergio/workspace-a/mblk84/sblk85"
.LASF507:
	.string	"SETUSICNT(n) USISR=SETBITS(USISR,n,USICNT_0_3)"
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
.LASF501:
	.string	"USISIF BV_(7)"
.LASF663:
	.string	"_ZN3SPI9setOutputEb"
.LASF329:
	.string	"__AVR_HAVE_MOVW__ 1"
.LASF519:
	.string	"USICS_NOCLK 0"
.LASF606:
	.string	"_ZN3SPI15setRxBufferSpecEPKvh"
.LASF200:
	.string	"__FRACT_IBIT__ 0"
.LASF493:
	.string	"DDR_from_SET(dport) DDRB"
.LASF252:
	.string	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK"
.LASF593:
	.string	"m_output"
.LASF651:
	.string	"activeSlave"
.LASF65:
	.string	"__UINT_FAST64_TYPE__ long long unsigned int"
.LASF510:
	.string	"USIOIE BV_(6)"
.LASF134:
	.string	"__FLT_MIN__ 1.17549435e-38F"
.LASF107:
	.string	"__UINT_LEAST16_MAX__ 65535U"
.LASF548:
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
.LASF514:
	.string	"USIWM_3W (USIWM0)"
.LASF189:
	.string	"__SFRACT_FBIT__ 7"
.LASF40:
	.string	"__CHAR32_TYPE__ long unsigned int"
.LASF503:
	.string	"USIPF BV_(5)"
.LASF610:
	.string	"getRcvdByte"
.LASF487:
	.string	"PB3 BV_(3)"
.LASF53:
	.string	"__INT_LEAST64_TYPE__ long long int"
.LASF539:
	.string	"uint16_t"
.LASF306:
	.string	"__USER_LABEL_PREFIX__ "
.LASF659:
	.string	"_ZNK3SPI7_outputEv"
.LASF664:
	.string	"delayNops"
.LASF56:
	.string	"__UINT_LEAST32_TYPE__ long unsigned int"
.LASF496:
	.string	"__USE_CHIP_USISPI_PROTOCOL__ "
.LASF275:
	.string	"__DQ_FBIT__ 63"
.LASF191:
	.string	"__SFRACT_MIN__ (-0.5HR-0.5HR)"
.LASF684:
	.string	"this"
.LASF597:
	.string	"m_tx"
.LASF570:
	.string	"_ZN14CircularBuffer7getByteERc"
.LASF93:
	.string	"__UINT8_MAX__ 255"
.LASF313:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 1"
.LASF451:
	.string	"RCLKPS(d) ((d<=1)?1UL:(d<=2)?2UL: (d<=4+1)?4UL:(d<=8+3)?8UL: (d<=16+7)?16UL:(d<=32+15)?32UL: (d<=64+31)?64UL:(d<=128+63)?128UL: (d<=256+127)?256UL:256UL)"
.LASF700:
	.string	"_ZN3SPI3isrEv"
.LASF28:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF636:
	.string	"_ZN3SPI20enhancedSetData2XmitEPKvh"
.LASF274:
	.string	"__SQ_IBIT__ 0"
.LASF150:
	.string	"__DBL_DENORM_MIN__ double(1.40129846e-45L)"
.LASF51:
	.string	"__INT_LEAST16_TYPE__ int"
.LASF587:
	.string	"__USI_NODATA_FF"
.LASF483:
	.string	"DDRB REGDECL(DDR(__PORTADDRB))"
.LASF187:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF652:
	.string	"_ZNK3SPI11activeSlaveEv"
.LASF689:
	.string	"_ZN3SPID2Ev"
.LASF601:
	.string	"enabled"
.LASF74:
	.string	"__INT_MAX__ 32767"
.LASF331:
	.string	"__AVR_2_BYTE_PC__ 1"
.LASF286:
	.string	"__UDQ_IBIT__ 0"
.LASF208:
	.string	"__UFRACT_EPSILON__ 0x1P-16UR"
.LASF673:
	.string	"_ZN3SPI7resetTxEv"
.LASF177:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF330:
	.string	"__AVR_HAVE_LPMX__ 1"
.LASF281:
	.string	"__UHQ_FBIT__ 16"
.LASF44:
	.string	"__INT32_TYPE__ long int"
.LASF656:
	.string	"_ZN3SPI13_getByte2XmitEv"
.LASF541:
	.string	"long int"
.LASF553:
	.string	"rPtr"
.LASF339:
	.string	"__BUILTIN_AVR_WDR 1"
.LASF418:
	.string	"__BUILTIN_AVR_ULKBITS 1"
.LASF148:
	.string	"__DBL_MIN__ double(1.17549435e-38L)"
.LASF80:
	.string	"__WINT_MIN__ (-__WINT_MAX__ - 1)"
.LASF211:
	.string	"__LFRACT_MIN__ (-0.5LR-0.5LR)"
.LASF307:
	.string	"__GNUC_GNU_INLINE__ 1"
.LASF32:
	.string	"__GNUG__ 4"
.LASF495:
	.string	"PORTbit_from_SET(dport) (uint8_t)dport"
.LASF338:
	.string	"__BUILTIN_AVR_CLI 1"
.LASF174:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF442:
	.string	"reti() __asm__ __volatile__ (\"reti\" ::)"
.LASF671:
	.string	"_ZN3SPI9setMasterEb"
.LASF62:
	.string	"__UINT_FAST8_TYPE__ unsigned char"
.LASF249:
	.string	"__LACCUM_FBIT__ 31"
.LASF167:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF42:
	.string	"__INT8_TYPE__ signed char"
.LASF35:
	.string	"__WCHAR_TYPE__ int"
.LASF420:
	.string	"__BUILTIN_AVR_ABSFX 1"
.LASF575:
	.string	"putData"
.LASF353:
	.string	"__BUILTIN_AVR_ABSK 1"
.LASF277:
	.string	"__TQ_FBIT__ 127"
.LASF478:
	.string	"REGDECL(r) REGDECLB(r)"
.LASF262:
	.string	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-47LLK"
.LASF545:
	.string	"uint64_t"
.LASF198:
	.string	"__USFRACT_EPSILON__ 0x1P-8UHR"
.LASF120:
	.string	"__UINT_FAST64_MAX__ 18446744073709551615ULL"
.LASF291:
	.string	"__SA_FBIT__ 15"
.LASF335:
	.string	"__WITH_AVRLIBC__ 1"
.LASF530:
	.string	"SCK PB2"
.LASF92:
	.string	"__INT64_MAX__ 9223372036854775807LL"
.LASF58:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF665:
	.string	"_ZNK3SPI9delayNopsEv"
.LASF596:
	.string	"m_rx"
.LASF271:
	.string	"__HQ_FBIT__ 15"
.LASF458:
	.string	"___tiny85"
.LASF298:
	.string	"__UHA_IBIT__ 8"
.LASF497:
	.string	"__USE_CHIP_USISPI_PROTOCOL__"
.LASF190:
	.string	"__SFRACT_IBIT__ 0"
.LASF577:
	.string	"reset"
.LASF18:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF143:
	.string	"__DBL_MIN_10_EXP__ (-37)"
.LASF46:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF347:
	.string	"__BUILTIN_AVR_FLASH_SEGMENT 1"
.LASF350:
	.string	"__BUILTIN_AVR_ABSLR 1"
.LASF489:
	.string	"PB1 BV_(1)"
.LASF449:
	.string	"__AVR_Selected"
.LASF104:
	.string	"__INT64_C(c) c ## LL"
.LASF158:
	.string	"__LDBL_MAX_EXP__ 128"
.LASF333:
	.string	"__AVR_HAVE_SPH__ 1"
.LASF312:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 1"
.LASF160:
	.string	"__DECIMAL_DIG__ 9"
.LASF617:
	.string	"_ZN3SPI19enhancedGetRcvdDataERh"
.LASF616:
	.string	"_ZN3SPI19enhancedGetRcvdDataERi"
.LASF48:
	.string	"__UINT32_TYPE__ long unsigned int"
.LASF647:
	.string	"txBufferDim"
.LASF414:
	.string	"__BUILTIN_AVR_LKBITS 1"
.LASF247:
	.string	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK"
.LASF370:
	.string	"__BUILTIN_AVR_ROUNDULK 1"
.LASF562:
	.string	"_ZN14CircularBuffer8dataSizeEv"
.LASF470:
	.string	"BITS_H_ "
.LASF687:
	.string	"__in_chrg"
.LASF657:
	.string	"_ZN3SPI13_getByte2XmitERh"
.LASF81:
	.string	"__PTRDIFF_MAX__ 32767"
.LASF644:
	.string	"_ZN3SPI25masterSetActiveSlave2XmitEh"
.LASF620:
	.string	"_ZN3SPI19enhancedGetRcvdDataERy"
.LASF352:
	.string	"__BUILTIN_AVR_ABSHK 1"
.LASF566:
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
.LASF525:
	.string	"PORTUSI PORTB"
.LASF193:
	.string	"__SFRACT_EPSILON__ 0x1P-7HR"
.LASF391:
	.string	"__BUILTIN_AVR_BITSLLR 1"
.LASF280:
	.string	"__UQQ_IBIT__ 0"
.LASF429:
	.string	"CIRCBUFF_H_ "
.LASF283:
	.string	"__USQ_FBIT__ 32"
.LASF290:
	.string	"__HA_IBIT__ 8"
.LASF543:
	.string	"long unsigned int"
.LASF460:
	.string	"__INTR_ATTRS used, externally_visible"
.LASF255:
	.string	"__ULACCUM_IBIT__ 32"
.LASF550:
	.string	"NOT_WRITTEN"
.LASF267:
	.string	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-48ULLK"
.LASF654:
	.string	"_getByte2Xmit"
.LASF136:
	.string	"__FLT_DENORM_MIN__ 1.40129846e-45F"
.LASF232:
	.string	"__SACCUM_MAX__ 0X7FFFP-7HK"
.LASF512:
	.string	"USIWM1 BV_(5)"
.LASF422:
	.string	"__BUILTIN_AVR_COUNTLSFX 1"
.LASF85:
	.string	"__UINTMAX_MAX__ 18446744073709551615ULL"
.LASF559:
	.string	"~CircularBuffer"
.LASF2:
	.string	"__STDC_HOSTED__ 1"
.LASF693:
	.string	"rlen"
.LASF83:
	.string	"__INTMAX_MAX__ 9223372036854775807LL"
.LASF94:
	.string	"__UINT16_MAX__ 65535U"
.LASF387:
	.string	"__BUILTIN_AVR_COUNTLSULLK 1"
.LASF359:
	.string	"__BUILTIN_AVR_ROUNDLLR 1"
.LASF263:
	.string	"__LLACCUM_EPSILON__ 0x1P-47LLK"
.LASF116:
	.string	"__INT_FAST64_MAX__ 9223372036854775807LL"
.LASF624:
	.string	"_ZN3SPI11rxBufferDimEv"
.LASF82:
	.string	"__SIZE_MAX__ 65535U"
.LASF611:
	.string	"_ZN3SPI11getRcvdByteEv"
.LASF163:
	.string	"__LDBL_EPSILON__ 1.19209290e-7L"
.LASF423:
	.string	"__INT24_MAX__ 8388607L"
.LASF379:
	.string	"__BUILTIN_AVR_COUNTLSULLR 1"
.LASF213:
	.string	"__LFRACT_EPSILON__ 0x1P-31LR"
.LASF572:
	.string	"_ZN14CircularBuffer7getDataEPch"
.LASF564:
	.string	"overWrite"
.LASF130:
	.string	"__FLT_MAX_EXP__ 128"
.LASF492:
	.string	"PORT_from_SET(dport) PORTB"
.LASF11:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF516:
	.string	"USIWM_2W_2 (USIWM1|USIWM0)"
.LASF536:
	.string	"unsigned char"
.LASF169:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF38:
	.string	"__UINTMAX_TYPE__ long long unsigned int"
.LASF475:
	.string	"REGDECL_BPTR(r) (volatile uint8_t * volatile)((r)+((((int)r)<0x60)?0x20:0))"
.LASF455:
	.string	"TICKf_ns (CLKPS_DIV*1000000.0/CLK_KHz)"
.LASF401:
	.string	"__BUILTIN_AVR_BITSUK 1"
.LASF66:
	.string	"__INTPTR_TYPE__ int"
.LASF194:
	.string	"__USFRACT_FBIT__ 8"
.LASF529:
	.string	"MOSI PB0"
.LASF690:
	.string	"lmem"
.LASF380:
	.string	"__BUILTIN_AVR_COUNTLSHK 1"
.LASF195:
	.string	"__USFRACT_IBIT__ 0"
.LASF322:
	.string	"__SIZEOF_WCHAR_T__ 2"
.LASF341:
	.string	"__BUILTIN_AVR_SWAP 1"
.LASF573:
	.string	"putByte"
.LASF358:
	.string	"__BUILTIN_AVR_ROUNDLR 1"
.LASF633:
	.string	"setByte2Xmit"
.LASF114:
	.string	"__INT_FAST16_MAX__ 32767"
.LASF567:
	.string	"_ZN14CircularBuffer9bufferDimEv"
.LASF33:
	.string	"__SIZE_TYPE__ unsigned int"
.LASF613:
	.string	"enhancedGetRcvdData"
.LASF674:
	.string	"resetRx"
.LASF409:
	.string	"__BUILTIN_AVR_URBITS 1"
.LASF75:
	.string	"__LONG_MAX__ 2147483647L"
.LASF699:
	.string	"m_spiThis"
.LASF13:
	.string	"__OPTIMIZE_SIZE__ 1"
.LASF395:
	.string	"__BUILTIN_AVR_BITSULLR 1"
.LASF374:
	.string	"__BUILTIN_AVR_COUNTLSLR 1"
.LASF563:
	.string	"_ZN14CircularBuffer9freeSpaceEv"
.LASF129:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF590:
	.string	"__USI_PRESENCE_FLAG"
.LASF152:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF403:
	.string	"__BUILTIN_AVR_BITSULLK 1"
.LASF439:
	.string	"cli() __asm__ __volatile__ (\"cli\" ::: \"memory\")"
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
.LASF560:
	.string	"dataSize"
.LASF524:
	.string	"USITC BV_(0)"
.LASF140:
	.string	"__DBL_MANT_DIG__ 24"
.LASF71:
	.string	"__USING_SJLJ_EXCEPTIONS__ 1"
.LASF164:
	.string	"__LDBL_DENORM_MIN__ 1.40129846e-45L"
.LASF635:
	.string	"enhancedSetData2Xmit"
.LASF518:
	.string	"USICS0 BV_(2)"
.LASF695:
	.string	"__vector_14"
.LASF49:
	.string	"__UINT64_TYPE__ long long unsigned int"
.LASF343:
	.string	"__BUILTIN_AVR_FMULS 1"
.LASF315:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 1"
.LASF436:
	.string	"CIRCBUFF_SIZE_T uint8_t"
.LASF696:
	.string	"GNU C++ 4.8.1 -mmcu=attiny85 -g3 -Os -ansi -ffunction-sections -fdata-sections -fno-threadsafe-statics -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF402:
	.string	"__BUILTIN_AVR_BITSULK 1"
.LASF599:
	.string	"begin"
.LASF561:
	.string	"freeSpace"
.LASF569:
	.string	"_ZN14CircularBuffer7getByteEv"
.LASF413:
	.string	"__BUILTIN_AVR_KBITS 1"
.LASF678:
	.string	"_setSpiThis"
.LASF469:
	.string	"REGDPORT_H "
.LASF410:
	.string	"__BUILTIN_AVR_ULRBITS 1"
.LASF351:
	.string	"__BUILTIN_AVR_ABSLLR 1"
.LASF692:
	.string	"enab"
.LASF465:
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
.LASF149:
	.string	"__DBL_EPSILON__ double(1.19209290e-7L)"
.LASF289:
	.string	"__HA_FBIT__ 7"
.LASF406:
	.string	"__BUILTIN_AVR_LRBITS 1"
.LASF102:
	.string	"__INT32_C(c) c ## L"
.LASF477:
	.string	"REGDECLW(r) (*REGDECL_WPTR(r))"
.LASF308:
	.string	"__STRICT_ANSI__ 1"
.LASF457:
	.string	"TICK_TO_1_us ((unsigned long)(1000.0/TICKf_ns))"
.LASF479:
	.string	"DDR(p) (p-1)"
.LASF151:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF579:
	.string	"_ZN14CircularBuffer5resetEv"
.LASF557:
	.string	"putres_et"
.LASF340:
	.string	"__BUILTIN_AVR_SLEEP 1"
.LASF314:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 1"
.LASF630:
	.string	"_ZN3SPI12setData2XmitERKm"
.LASF269:
	.string	"__QQ_FBIT__ 7"
.LASF212:
	.string	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR"
.LASF526:
	.string	"DDRUSI DDRB"
.LASF614:
	.string	"_ZN3SPI19enhancedGetRcvdDataEPKvh"
.LASF301:
	.string	"__UDA_FBIT__ 32"
.LASF425:
	.string	"__UINT24_MAX__ 16777215UL"
.LASF210:
	.string	"__LFRACT_IBIT__ 0"
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
.LASF551:
	.string	"m_size"
.LASF321:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF221:
	.string	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)"
.LASF658:
	.string	"_output"
.LASF466:
	.string	"TIM0_OVF_VECT _VECTOR(5)"
.LASF468:
	.string	"USI_H "
.LASF228:
	.string	"__ULLFRACT_EPSILON__ 0x1P-64ULLR"
.LASF165:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF285:
	.string	"__UDQ_FBIT__ 64"
.LASF156:
	.string	"__LDBL_MIN_EXP__ (-125)"
.LASF118:
	.string	"__UINT_FAST16_MAX__ 65535U"
.LASF99:
	.string	"__INT_LEAST16_MAX__ 32767"
.LASF491:
	.string	"PORTSET(p,b) (dport_st)(PB ## b)"
.LASF175:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF137:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF672:
	.string	"resetTx"
.LASF602:
	.string	"_ZN3SPI7enabledEb"
	.ident	"GCC: (GNU) 4.8.1"
.global __do_clear_bss
