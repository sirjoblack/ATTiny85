	.file	"sblk85.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._ZN3SPI12setByte2XmitEc,"axG",@progbits,_ZN3SPI12setByte2XmitEc,comdat
	.weak	_ZN3SPI12setByte2XmitEc
	.type	_ZN3SPI12setByte2XmitEc, @function
_ZN3SPI12setByte2XmitEc:
.LFB31:
	.file 1 "../spi.h"
	.loc 1 308 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 308 0
	ldi r20,lo8(1)
	adiw r24,13
.LVL1:
	rjmp _ZN14CircularBuffer7putByteEcb
.LVL2:
	.cfi_endproc
.LFE31:
	.size	_ZN3SPI12setByte2XmitEc, .-_ZN3SPI12setByte2XmitEc
	.section	.text._Z5setupv,"ax",@progbits
.global	_Z5setupv
	.type	_Z5setupv, @function
_Z5setupv:
.LFB57:
	.file 2 "../sblk85.cpp"
	.loc 2 89 0
	.cfi_startproc
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
	push r16
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 16, -5
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
.LBB12:
	.loc 2 93 0
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	mov r14,__zero_reg__
	ldi r16,lo8(32)
	ldi r18,lo8(_ZZ5setupvE2tx)
	ldi r19,hi8(_ZZ5setupvE2tx)
	ldi r20,lo8(32)
	ldi r22,lo8(_ZZ5setupvE2rx)
	ldi r23,hi8(_ZZ5setupvE2rx)
	ldi r24,lo8(spi)
	ldi r25,hi8(spi)
	rcall _ZN3SPI5beginEPKvhS1_hbj
.LVL3:
	.loc 2 95 0
	sbi 0x17,4
	.loc 2 96 0
	cbi 0x18,4
	.loc 2 99 0
	sbi 0x17,4
	.loc 2 100 0
	cbi 0x18,4
	.loc 2 104 0
	cbi 0x17,3
	.loc 2 105 0
	sbi 0x18,3
	.loc 2 108 0
	ldi r24,lo8(timer)
	ldi r25,hi8(timer)
/* epilogue start */
.LBE12:
	.loc 2 109 0
	pop r16
	pop r14
	pop r13
	pop r12
.LBB13:
	.loc 2 108 0
	rjmp _ZN7ATTimer5beginEv
.LVL4:
.LBE13:
	.cfi_endproc
.LFE57:
	.size	_Z5setupv, .-_Z5setupv
	.section	.text._Z9toggleLedmi,"ax",@progbits
.global	_Z9toggleLedmi
	.type	_Z9toggleLedmi, @function
_Z9toggleLedmi:
.LFB59:
	.loc 2 163 0
	.cfi_startproc
.LVL5:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 2 164 0
	in r18,0x18
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	brne .L4
	ldi r20,lo8(16)
.LVL6:
.L4:
	.loc 2 164 0 is_stmt 0 discriminator 3
	eor r20,r18
	out 0x18,r20
	.loc 2 165 0 is_stmt 1 discriminator 3
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	breq .L3
	.loc 2 166 0
	rjmp _ZN7ATTimer6udelayEm
.LVL7:
.L3:
	ret
	.cfi_endproc
.LFE59:
	.size	_Z9toggleLedmi, .-_Z9toggleLedmi
	.section	.text._Z5blinkmii,"ax",@progbits
.global	_Z5blinkmii
	.type	_Z5blinkmii, @function
_Z5blinkmii:
.LFB60:
	.loc 2 170 0
	.cfi_startproc
.LVL8:
	push r12
.LCFI4:
	.cfi_def_cfa_offset 3
	.cfi_offset 12, -2
	push r13
.LCFI5:
	.cfi_def_cfa_offset 4
	.cfi_offset 13, -3
	push r14
.LCFI6:
	.cfi_def_cfa_offset 5
	.cfi_offset 14, -4
	push r15
.LCFI7:
	.cfi_def_cfa_offset 6
	.cfi_offset 15, -5
	push r16
.LCFI8:
	.cfi_def_cfa_offset 7
	.cfi_offset 16, -6
	push r17
.LCFI9:
	.cfi_def_cfa_offset 8
	.cfi_offset 17, -7
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
	movw r12,r22
	movw r14,r24
	movw r28,r20
	movw r16,r18
.LVL9:
.L9:
	.loc 2 171 0 discriminator 1
	sbiw r28,0
	breq .L11
	.loc 2 172 0 discriminator 2
	movw r20,r16
	movw r24,r14
	movw r22,r12
	rcall _Z9toggleLedmi
.LVL10:
	.loc 2 171 0 discriminator 2
	sbiw r28,1
.LVL11:
	rjmp .L9
.L11:
/* epilogue start */
	.loc 2 173 0
	pop r29
	pop r28
.LVL12:
	pop r17
	pop r16
.LVL13:
	pop r15
	pop r14
	pop r13
	pop r12
.LVL14:
	ret
	.cfi_endproc
.LFE60:
	.size	_Z5blinkmii, .-_Z5blinkmii
	.section	.text._Z7execCmdPc,"ax",@progbits
.global	_Z7execCmdPc
	.type	_Z7execCmdPc, @function
_Z7execCmdPc:
.LFB62:
	.loc 2 212 0
	.cfi_startproc
.LVL15:
	push r16
.LCFI12:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI13:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI14:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
	push r29
.LCFI15:
	.cfi_def_cfa_offset 6
	.cfi_offset 29, -5
	rcall .
	rcall .
.LCFI16:
	.cfi_def_cfa_offset 10
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI17:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 4 */
/* stack size = 8 */
.L__stack_usage = 8
	movw r16,r24
.LBB29:
	.loc 2 214 0
	movw r30,r24
	ld r24,Z
.LVL16:
	cpi r24,lo8(108)
	brne .L13
	.loc 2 215 0
	ldd r24,Z+1
	tst r24
	brne .+2
	rjmp .L16
	.loc 2 218 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(-1)
	ldi r23,lo8(-1)
	movw r24,r16
	adiw r24,1
	rcall _strntoll
.LVL17:
	sts ledtime,r18
	sts ledtime+1,r19
	sts ledtime+2,r20
	sts ledtime+3,r21
	rjmp .L21
.L13:
.LBB30:
	.loc 2 223 0
	cpi r24,lo8(98)
	brne .L15
.LBB31:
	.loc 2 224 0
	sts blk+1,__zero_reg__
	.loc 2 226 0
	movw r30,r16
	ldd r24,Z+1
	tst r24
	brne .+2
	rjmp .L17
	.loc 2 228 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(1)
	ldi r23,0
	movw r24,r16
	adiw r24,1
	rcall _strntoll
.LVL18:
	.loc 2 229 0
	ldi r24,lo8(16)
	sts blk,r24
	.loc 2 231 0
	movw r30,r16
	ldd r24,Z+4
	tst r24
	brne .+2
	rjmp .L18
	.loc 2 233 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(-1)
	ldi r23,lo8(-1)
	movw r24,r16
	adiw r24,4
	rcall _strntoll
.LVL19:
	sts blk+2,r18
	sts blk+3,r19
	.loc 2 235 0
	movw r30,r16
	ldd r24,Z+2
	tst r24
	breq .L19
	.loc 2 237 0
	ldi r20,0
	ldi r21,0
	ldi r22,lo8(2)
	ldi r23,0
	movw r24,r16
	adiw r24,2
	rcall _strntoll
.LVL20:
	sts blk+1,r18
	rjmp .L21
.L15:
.LBE31:
.LBE30:
	.loc 2 243 0
	cpi r24,lo8(116)
	brne .L20
	.loc 2 244 0
	ldi r24,lo8(113)
	ldi r25,lo8(2)
	std Y+2,r25
	std Y+1,r24
.LVL21:
.LBB33:
.LBB34:
.LBB35:
	.loc 1 282 0
	ldi r18,lo8(1)
	ldi r20,lo8(2)
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r24,lo8(spi+13)
	ldi r25,hi8(spi+13)
	rcall _ZN14CircularBuffer7putDataEPKchb
.LVL22:
.LBE35:
.LBE34:
.LBE33:
	.loc 2 245 0
	ldi r24,lo8(timer)
	ldi r25,hi8(timer)
	rcall _ZN7ATTimer5uTickEv
.LVL23:
	std Y+2,r23
	std Y+1,r22
.LVL24:
.LBB36:
.LBB37:
.LBB38:
	.loc 1 282 0
	ldi r18,lo8(1)
	ldi r20,lo8(2)
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r24,lo8(spi+13)
	ldi r25,hi8(spi+13)
	rcall _ZN14CircularBuffer7putDataEPKchb
.LVL25:
.LBE38:
.LBE37:
.LBE36:
	.loc 2 246 0
	ldi r24,lo8(timer)
	ldi r25,hi8(timer)
	rcall _ZN7ATTimer8baseTimeEv
.LVL26:
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
.LVL27:
.LBB39:
.LBB40:
.LBB41:
	.loc 1 282 0
	ldi r18,lo8(1)
	ldi r20,lo8(4)
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r24,lo8(spi+13)
	ldi r25,hi8(spi+13)
	rcall _ZN14CircularBuffer7putDataEPKchb
.LVL28:
.L21:
.LBE41:
.LBE40:
.LBE39:
	.loc 2 247 0
	ldi r24,0
	rjmp .L14
.L16:
	.loc 2 216 0
	ldi r24,lo8(84)
	rjmp .L14
.L17:
.LBB42:
.LBB32:
	.loc 2 227 0
	ldi r24,lo8(65)
	rjmp .L14
.L18:
	.loc 2 232 0
	ldi r24,lo8(66)
	rjmp .L14
.L19:
	.loc 2 236 0
	ldi r24,lo8(67)
	rjmp .L14
.L20:
.LBE32:
.LBE42:
	.loc 2 250 0
	ldi r24,lo8(-18)
.L14:
/* epilogue start */
.LBE29:
	.loc 2 251 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
.LVL29:
	ret
	.cfi_endproc
.LFE62:
	.size	_Z7execCmdPc, .-_Z7execCmdPc
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"OK"
	.section	.text._Z10spiCommSlvv,"ax",@progbits
.global	_Z10spiCommSlvv
	.type	_Z10spiCommSlvv, @function
_Z10spiCommSlvv:
.LFB61:
	.loc 2 176 0
	.cfi_startproc
	push r28
.LCFI18:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI19:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
.L24:
.LVL30:
.LBB48:
.LBB49:
.LBB50:
	.loc 1 166 0 discriminator 1
	ldi r24,lo8(spi+6)
	ldi r25,hi8(spi+6)
	rcall _ZN14CircularBuffer7getByteEv
.LVL31:
.LBE50:
.LBE49:
	.loc 2 180 0 discriminator 1
	sbrc r25,7
	rjmp .L35
	.loc 2 181 0
	cpi r24,-1
	cpc r25,__zero_reg__
	breq .L24
	.loc 2 184 0
	lds r18,_ZZ10spiCommSlvvE4cmdb
	lds r19,_ZZ10spiCommSlvvE4cmdb+1
	movw r30,r18
	subi r30,lo8(-(_ZZ10spiCommSlvvE3cmd))
	sbci r31,hi8(-(_ZZ10spiCommSlvvE3cmd))
	st Z,r24
	.loc 2 186 0
	cpi r24,lo8(35)
	brne .L26
	.loc 2 187 0
	or r18,r19
	breq .L24
	.loc 2 189 0
	st Z,__zero_reg__
	.loc 2 190 0
	lds r22,_ZZ10spiCommSlvvE3cmd
	ldi r24,lo8(spi)
	ldi r25,hi8(spi)
	rcall _ZN3SPI12setByte2XmitEc
.LVL32:
	.loc 2 191 0
	lds r28,_ZZ10spiCommSlvvE4cmdb
	lds r29,_ZZ10spiCommSlvvE4cmdb+1
	ldi r24,lo8(_ZZ10spiCommSlvvE3cmd)
	ldi r25,hi8(_ZZ10spiCommSlvvE3cmd)
	rcall _Z7execCmdPc
.LVL33:
	subi r28,lo8(-(_ZZ10spiCommSlvvE3cmd))
	sbci r29,hi8(-(_ZZ10spiCommSlvvE3cmd))
	st Y,r24
	cpse r24,__zero_reg__
	rjmp .L34
.LVL34:
.LBB51:
.LBB52:
	.loc 1 282 0
	ldi r18,lo8(1)
	ldi r20,lo8(2)
	ldi r22,lo8(.LC0)
	ldi r23,hi8(.LC0)
	ldi r24,lo8(spi+13)
	ldi r25,hi8(spi+13)
	rcall _ZN14CircularBuffer7putDataEPKchb
.LVL35:
	rjmp .L33
.LVL36:
.L26:
.LBE52:
.LBE51:
	.loc 2 200 0
	subi r18,-1
	sbci r19,-1
	sts _ZZ10spiCommSlvvE4cmdb+1,r19
	sts _ZZ10spiCommSlvvE4cmdb,r18
	.loc 2 201 0
	cpi r18,16
	cpc r19,__zero_reg__
	brne .L24
	.loc 2 202 0
	ldi r22,lo8(90)
	ldi r24,lo8(spi)
	ldi r25,hi8(spi)
	rcall _ZN3SPI12setByte2XmitEc
.LVL37:
.L34:
	.loc 2 203 0
	ldi r22,lo8(63)
	ldi r24,lo8(spi)
	ldi r25,hi8(spi)
	rcall _ZN3SPI12setByte2XmitEc
.LVL38:
	.loc 2 204 0
	lds r30,_ZZ10spiCommSlvvE4cmdb
	lds r31,_ZZ10spiCommSlvvE4cmdb+1
	subi r30,lo8(-(_ZZ10spiCommSlvvE3cmd))
	sbci r31,hi8(-(_ZZ10spiCommSlvvE3cmd))
	ld r22,Z
	ldi r24,lo8(spi)
	ldi r25,hi8(spi)
	rcall _ZN3SPI12setByte2XmitEc
.LVL39:
.L33:
	.loc 2 205 0
	sts _ZZ10spiCommSlvvE4cmdb+1,__zero_reg__
	sts _ZZ10spiCommSlvvE4cmdb,__zero_reg__
	rjmp .L24
.L35:
/* epilogue start */
.LBE48:
	.loc 2 209 0
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE61:
	.size	_Z10spiCommSlvv, .-_Z10spiCommSlvv
	.section	.text.startup.main,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFB58:
	.loc 2 112 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB67:
.LBB68:
.LBB69:
	.file 3 "../include/inithw.h"
	.loc 3 31 0
	in r25,__SREG__
.LVL40:
	.loc 3 32 0
/* #APP */
 ;  32 "../include/inithw.h" 1
	cli
 ;  0 "" 2
	.loc 3 36 0
/* #NOAPP */
	in r24,0x27
	andi r24,lo8(-7)
	out 0x27,r24
	.loc 3 37 0
/* #APP */
 ;  37 "../include/inithw.h" 1
	nop
 ;  0 "" 2
	.loc 3 41 0
/* #NOAPP */
	ldi r24,lo8(-128)
	out 0x26,r24
	.loc 3 42 0
	out 0x26,__zero_reg__
	.loc 3 43 0
/* #APP */
 ;  43 "../include/inithw.h" 1
	nop
 ;  0 "" 2
	.loc 3 45 0
/* #NOAPP */
	out __SREG__,r25
	.loc 3 48 0
	out 0x2c,__zero_reg__
	.loc 3 56 0
	out 0x39,__zero_reg__
.LBE69:
.LBE68:
	.loc 2 118 0
	rcall _Z5setupv
.LVL41:
	.loc 2 120 0
	ldi r24,lo8(timer)
	ldi r25,hi8(timer)
	rcall _ZN7ATTimer5resetEv
.LVL42:
	.loc 2 121 0
	ldi r24,lo8(timer)
	ldi r25,hi8(timer)
	rcall _ZN7ATTimer8baseTimeEv
.LVL43:
	sts _ZZ4mainE2t0,r18
	sts _ZZ4mainE2t0+1,r19
	sts _ZZ4mainE2t0+2,r20
	sts _ZZ4mainE2t0+3,r21
	sts _ZZ4mainE2t0+4,r22
	sts _ZZ4mainE2t0+5,r23
	sts _ZZ4mainE2t0+6,r24
	sts _ZZ4mainE2t0+7,r25
.LBB70:
.LBB71:
	.loc 2 164 0
	ldi r28,lo8(16)
.L47:
.LBE71:
.LBE70:
	.loc 2 125 0
	lds r20,_ZZ4mainE4tled
	lds r21,_ZZ4mainE4tled+1
	lds r22,_ZZ4mainE4tled+2
	lds r23,_ZZ4mainE4tled+3
	lds r24,cycleTime
	lds r25,cycleTime+1
	lds r26,cycleTime+2
	lds r27,cycleTime+3
	cp r24,r20
	cpc r25,r21
	cpc r26,r22
	cpc r27,r23
	brlo .L37
.LVL44:
.LBB73:
.LBB72:
	.loc 2 164 0
	in r24,0x18
	eor r24,r28
	out 0x18,r24
.LBE72:
.LBE73:
	.loc 2 127 0
	lds r24,ledtime
	lds r25,ledtime+1
	lds r26,ledtime+2
	lds r27,ledtime+3
	sts _ZZ4mainE4tled,r24
	sts _ZZ4mainE4tled+1,r25
	sts _ZZ4mainE4tled+2,r26
	sts _ZZ4mainE4tled+3,r27
	rjmp .L38
.LVL45:
.L37:
	.loc 2 129 0
	sub r20,r24
	sbc r21,r25
	sbc r22,r26
	sbc r23,r27
	sts _ZZ4mainE4tled,r20
	sts _ZZ4mainE4tled+1,r21
	sts _ZZ4mainE4tled+2,r22
	sts _ZZ4mainE4tled+3,r23
.L38:
	.loc 2 132 0
	lds r24,blk+1
	tst r24
	brne .+2
	rjmp .L39
	.loc 2 134 0
	lds r20,_ZZ4mainE5tled2
	lds r21,_ZZ4mainE5tled2+1
	lds r22,_ZZ4mainE5tled2+2
	lds r23,_ZZ4mainE5tled2+3
	lds r24,cycleTime
	lds r25,cycleTime+1
	lds r26,cycleTime+2
	lds r27,cycleTime+3
	cp r24,r20
	cpc r25,r21
	cpc r26,r22
	cpc r27,r23
	brlo .L40
	.loc 2 135 0
	lds r20,blk
	ldi r21,0
	ldi r22,0
	ldi r23,0
	movw r24,r22
	rcall _Z9toggleLedmi
.LVL46:
	.loc 2 136 0
	lds r24,blk+1
	subi r24,lo8(-(-1))
	sts blk+1,r24
	.loc 2 137 0
	tst r24
	breq .L48
	.loc 2 137 0 is_stmt 0 discriminator 1
	lds r22,blk+2
	lds r23,blk+2+1
	clr r24
	sbrc r23,7
	com r24
	mov r25,r24
	ldi r18,lo8(-24)
	ldi r19,lo8(3)
	ldi r20,0
	ldi r21,0
	rcall __umulsidi3
	mov r23,r18
	mov r22,r19
	mov r25,r20
	mov r24,r21
	movw r18,r22
	rjmp .L41
.L48:
	.loc 2 137 0
	ldi r19,0
	ldi r18,0
	ldi r25,0
	ldi r24,0
.L41:
	.loc 2 137 0 discriminator 1
	sts _ZZ4mainE5tled2,r19
	sts _ZZ4mainE5tled2+1,r18
	sts _ZZ4mainE5tled2+2,r25
	sts _ZZ4mainE5tled2+3,r24
	rjmp .L39
.L40:
	.loc 2 139 0 is_stmt 1
	sub r20,r24
	sbc r21,r25
	sbc r22,r26
	sbc r23,r27
	sts _ZZ4mainE5tled2,r20
	sts _ZZ4mainE5tled2+1,r21
	sts _ZZ4mainE5tled2+2,r22
	sts _ZZ4mainE5tled2+3,r23
.L39:
	.loc 2 144 0
	in r24,0x16
	andi r24,lo8(8)
	sts _ZZ4mainE8csStatus,r24
	.loc 2 145 0
	lds r25,_ZZ4mainE2k1
	cp r24,r25
	breq .L42
	.loc 2 146 0
	sts _ZZ4mainE2k1,r24
	.loc 2 147 0
	ldi r22,lo8(1)
	cpse r24,__zero_reg__
	ldi r22,0
.L43:
	ldi r24,lo8(spi)
	ldi r25,hi8(spi)
	rcall _ZN3SPI7enabledEb
.LVL47:
.L42:
	.loc 2 150 0
	lds r24,_ZZ4mainE8csStatus
	cpse r24,__zero_reg__
	rjmp .L44
.LVL48:
.LBB74:
.LBB75:
.LBB76:
	.file 4 "../circbuff.h"
	.loc 4 75 0
	lds r25,spi+11
	lds r24,spi+6
	cpse r25,__zero_reg__
	rjmp .L46
	lds r25,spi+8
	lds r18,spi+7
.LVL49:
	subi r24,lo8(-(-1))
	sub r25,r18
	and r24,r25
.LVL50:
.L46:
.LBE76:
.LBE75:
.LBE74:
	.loc 2 151 0
	cpse r24,__zero_reg__
	.loc 2 152 0
	rcall _Z10spiCommSlvv
.LVL51:
.L44:
	.loc 2 156 0
	lds r24,_ZZ4mainE2t0
	lds r25,_ZZ4mainE2t0+1
	lds r26,_ZZ4mainE2t0+2
	lds r27,_ZZ4mainE2t0+3
	com r27
	com r26
	com r25
	neg r24
	sbci r25,lo8(-1)
	sbci r26,lo8(-1)
	sbci r27,lo8(-1)
	sts cycleTime,r24
	sts cycleTime+1,r25
	sts cycleTime+2,r26
	sts cycleTime+3,r27
	ldi r24,lo8(timer)
	ldi r25,hi8(timer)
	rcall _ZN7ATTimer8baseTimeEv
.LVL52:
	movw r8,r18
	movw r10,r20
	movw r12,r22
	movw r14,r24
	sts _ZZ4mainE2t0,r18
	sts _ZZ4mainE2t0+1,r9
	sts _ZZ4mainE2t0+2,r20
	sts _ZZ4mainE2t0+3,r11
	sts _ZZ4mainE2t0+4,r22
	sts _ZZ4mainE2t0+5,r13
	sts _ZZ4mainE2t0+6,r24
	sts _ZZ4mainE2t0+7,r15
	lds r24,cycleTime
	lds r25,cycleTime+1
	lds r26,cycleTime+2
	lds r27,cycleTime+3
	add r24,r8
	adc r25,r9
	adc r26,r10
	adc r27,r11
	sts cycleTime,r24
	sts cycleTime+1,r25
	sts cycleTime+2,r26
	sts cycleTime+3,r27
	.loc 2 159 0
	rjmp .L47
.LBE67:
	.cfi_endproc
.LFE58:
	.size	main, .-main
	.section	.text.startup._GLOBAL__sub_I_timer,"ax",@progbits
	.type	_GLOBAL__sub_I_timer, @function
_GLOBAL__sub_I_timer:
.LFB64:
	.loc 2 251 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL53:
.LBB81:
.LBB82:
	.loc 2 68 0
	ldi r24,lo8(timer)
	ldi r25,hi8(timer)
	rcall _ZN7ATTimerC1Ev
.LVL54:
	.loc 2 80 0
	ldi r24,lo8(spi)
	ldi r25,hi8(spi)
	rjmp _ZN3SPIC1Ev
.LVL55:
.LBE82:
.LBE81:
	.cfi_endproc
.LFE64:
	.size	_GLOBAL__sub_I_timer, .-_GLOBAL__sub_I_timer
	.global __do_global_ctors
	.section .ctors,"a",@progbits
	.p2align	1
	.word	gs(_GLOBAL__sub_I_timer)
	.section	.text.exit._GLOBAL__sub_D_timer,"ax",@progbits
	.type	_GLOBAL__sub_D_timer, @function
_GLOBAL__sub_D_timer:
.LFB65:
	.loc 2 251 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL56:
.LBB87:
.LBB88:
.LBB89:
	.loc 2 80 0
	ldi r24,lo8(spi)
	ldi r25,hi8(spi)
	rcall _ZN3SPID1Ev
.LVL57:
	.loc 2 68 0
	ldi r24,lo8(timer)
	ldi r25,hi8(timer)
	rjmp _ZN7ATTimerD1Ev
.LVL58:
.LBE89:
.LBE88:
.LBE87:
	.cfi_endproc
.LFE65:
	.size	_GLOBAL__sub_D_timer, .-_GLOBAL__sub_D_timer
	.global __do_global_dtors
	.section .dtors,"a",@progbits
	.p2align	1
	.word	gs(_GLOBAL__sub_D_timer)
	.section	.bss._ZZ10spiCommSlvvE3cmd,"aw",@nobits
	.type	_ZZ10spiCommSlvvE3cmd, @object
	.size	_ZZ10spiCommSlvvE3cmd, 16
_ZZ10spiCommSlvvE3cmd:
	.zero	16
	.section	.bss._ZZ10spiCommSlvvE4cmdb,"aw",@nobits
	.type	_ZZ10spiCommSlvvE4cmdb, @object
	.size	_ZZ10spiCommSlvvE4cmdb, 2
_ZZ10spiCommSlvvE4cmdb:
	.zero	2
	.section	.data._ZZ4mainE2k1,"aw",@progbits
	.type	_ZZ4mainE2k1, @object
	.size	_ZZ4mainE2k1, 1
_ZZ4mainE2k1:
	.byte	-1
	.section	.bss._ZZ4mainE8csStatus,"aw",@nobits
	.type	_ZZ4mainE8csStatus, @object
	.size	_ZZ4mainE8csStatus, 1
_ZZ4mainE8csStatus:
	.zero	1
	.section	.bss._ZZ4mainE5tled2,"aw",@nobits
	.type	_ZZ4mainE5tled2, @object
	.size	_ZZ4mainE5tled2, 4
_ZZ4mainE5tled2:
	.zero	4
	.section	.bss._ZZ4mainE4tled,"aw",@nobits
	.type	_ZZ4mainE4tled, @object
	.size	_ZZ4mainE4tled, 4
_ZZ4mainE4tled:
	.zero	4
	.section	.bss._ZZ4mainE2t0,"aw",@nobits
	.type	_ZZ4mainE2t0, @object
	.size	_ZZ4mainE2t0, 8
_ZZ4mainE2t0:
	.zero	8
	.section	.bss._ZZ5setupvE2tx,"aw",@nobits
	.type	_ZZ5setupvE2tx, @object
	.size	_ZZ5setupvE2tx, 32
_ZZ5setupvE2tx:
	.zero	32
	.section	.bss._ZZ5setupvE2rx,"aw",@nobits
	.type	_ZZ5setupvE2rx, @object
	.size	_ZZ5setupvE2rx, 32
_ZZ5setupvE2rx:
	.zero	32
.global	spi
	.section	.bss.spi,"aw",@nobits
	.type	spi, @object
	.size	spi, 20
spi:
	.zero	20
.global	blk
	.section	.data.blk,"aw",@progbits
	.type	blk, @object
	.size	blk, 4
blk:
	.byte	16
	.byte	10
	.word	100
.global	cycleTime
	.section	.bss.cycleTime,"aw",@nobits
	.type	cycleTime, @object
	.size	cycleTime, 4
cycleTime:
	.zero	4
.global	ledtime
	.section	.data.ledtime,"aw",@progbits
	.type	ledtime, @object
	.size	ledtime, 4
ledtime:
	.byte	-128
	.byte	-124
	.byte	30
	.byte	0
.global	timer
	.section	.bss.timer,"aw",@nobits
	.type	timer, @object
	.size	timer, 9
timer:
	.zero	9
	.text
.Letext0:
	.file 5 "../include/h_types.h"
	.file 6 "../attimer.h"
	.file 7 "../fnclib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1812
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF820
	.byte	0x4
	.long	.LASF821
	.long	.LASF822
	.long	.Ldebug_ranges0+0x48
	.long	0
	.long	0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF627
	.uleb128 0x3
	.long	.LASF629
	.byte	0x5
	.byte	0x1d
	.long	0x3f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF628
	.uleb128 0x3
	.long	.LASF630
	.byte	0x5
	.byte	0x1e
	.long	0x51
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF631
	.byte	0x5
	.byte	0x1f
	.long	0x63
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF632
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF633
	.uleb128 0x3
	.long	.LASF634
	.byte	0x5
	.byte	0x21
	.long	0x7c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF635
	.uleb128 0x3
	.long	.LASF636
	.byte	0x5
	.byte	0x22
	.long	0x8e
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF637
	.uleb128 0x3
	.long	.LASF638
	.byte	0x5
	.byte	0x23
	.long	0xa0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF639
	.uleb128 0x3
	.long	.LASF640
	.byte	0x5
	.byte	0x29
	.long	0x46
	.uleb128 0x5
	.long	.LASF651
	.byte	0x7
	.byte	0x4
	.byte	0x29
	.long	0x33b
	.uleb128 0x6
	.long	.LASF823
	.byte	0x2
	.byte	0x4
	.byte	0x32
	.long	0xdd
	.uleb128 0x7
	.long	.LASF641
	.sleb128 0
	.uleb128 0x7
	.long	.LASF642
	.sleb128 -1
	.uleb128 0x7
	.long	.LASF643
	.sleb128 -2
	.byte	0
	.uleb128 0x3
	.long	.LASF644
	.byte	0x4
	.byte	0x2d
	.long	0x34
	.uleb128 0x8
	.long	.LASF645
	.byte	0x4
	.byte	0xc7
	.long	0xdd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x8
	.long	.LASF646
	.byte	0x4
	.byte	0xc8
	.long	0x106
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x3
	.uleb128 0x9
	.long	0xdd
	.uleb128 0x8
	.long	.LASF647
	.byte	0x4
	.byte	0xc9
	.long	0x106
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x3
	.uleb128 0xa
	.string	"mem"
	.byte	0x4
	.byte	0xca
	.long	0x33b
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x3
	.uleb128 0x8
	.long	.LASF648
	.byte	0x4
	.byte	0xcd
	.long	0x348
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0x3
	.uleb128 0x8
	.long	.LASF649
	.byte	0x4
	.byte	0xce
	.long	0x348
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0x3
	.uleb128 0x3
	.long	.LASF650
	.byte	0x4
	.byte	0x36
	.long	0xbe
	.uleb128 0xb
	.byte	0x1
	.long	.LASF651
	.byte	0x4
	.byte	0x38
	.byte	0x1
	.long	0x163
	.long	0x174
	.uleb128 0xc
	.long	0x354
	.byte	0x1
	.uleb128 0xd
	.long	0x33b
	.uleb128 0xd
	.long	0xdd
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF652
	.byte	0x4
	.byte	0x3e
	.byte	0x1
	.long	0x185
	.long	0x192
	.uleb128 0xc
	.long	0x354
	.byte	0x1
	.uleb128 0xc
	.long	0x51
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF653
	.byte	0x4
	.byte	0x4a
	.long	.LASF655
	.long	0xdd
	.byte	0x1
	.long	0x1ab
	.long	0x1b2
	.uleb128 0xc
	.long	0x354
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF654
	.byte	0x4
	.byte	0x52
	.long	.LASF656
	.long	0xdd
	.byte	0x1
	.long	0x1cb
	.long	0x1d2
	.uleb128 0xc
	.long	0x354
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF657
	.byte	0x4
	.byte	0x53
	.long	.LASF658
	.long	0x34d
	.byte	0x1
	.long	0x1eb
	.long	0x1f2
	.uleb128 0xc
	.long	0x354
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF659
	.byte	0x4
	.byte	0x54
	.long	.LASF660
	.long	0xdd
	.byte	0x1
	.long	0x20b
	.long	0x212
	.uleb128 0xc
	.long	0x354
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF661
	.byte	0x4
	.byte	0x5f
	.long	.LASF662
	.long	0x51
	.byte	0x1
	.long	0x22b
	.long	0x232
	.uleb128 0xc
	.long	0x354
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF661
	.byte	0x4
	.byte	0x60
	.long	.LASF663
	.long	0x51
	.byte	0x1
	.long	0x24b
	.long	0x257
	.uleb128 0xc
	.long	0x354
	.byte	0x1
	.uleb128 0xd
	.long	0x35a
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF664
	.byte	0x4
	.byte	0x71
	.long	.LASF665
	.long	0xdd
	.byte	0x1
	.long	0x270
	.long	0x281
	.uleb128 0xc
	.long	0x354
	.byte	0x1
	.uleb128 0xd
	.long	0x33b
	.uleb128 0xd
	.long	0xdd
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF666
	.byte	0x4
	.byte	0x86
	.long	.LASF667
	.long	0x147
	.byte	0x1
	.long	0x29a
	.long	0x2ab
	.uleb128 0xc
	.long	0x354
	.byte	0x1
	.uleb128 0xd
	.long	0x341
	.uleb128 0xd
	.long	0x34d
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF668
	.byte	0x4
	.byte	0x9d
	.long	.LASF669
	.long	0xdd
	.byte	0x1
	.long	0x2c4
	.long	0x2da
	.uleb128 0xc
	.long	0x354
	.byte	0x1
	.uleb128 0xd
	.long	0x360
	.uleb128 0xd
	.long	0xdd
	.uleb128 0xd
	.long	0x34d
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF670
	.byte	0x4
	.byte	0xa4
	.long	.LASF672
	.byte	0x1
	.long	0x2ef
	.long	0x2f6
	.uleb128 0xc
	.long	0x354
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF671
	.byte	0x4
	.byte	0xb2
	.long	.LASF673
	.byte	0x1
	.long	0x30b
	.long	0x31c
	.uleb128 0xc
	.long	0x354
	.byte	0x1
	.uleb128 0xd
	.long	0x360
	.uleb128 0xd
	.long	0xdd
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF674
	.byte	0x4
	.byte	0xba
	.long	.LASF675
	.byte	0x3
	.byte	0x1
	.long	0x32e
	.uleb128 0xc
	.long	0x354
	.byte	0x1
	.uleb128 0xd
	.long	0xdd
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x2
	.long	0x341
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF676
	.uleb128 0x9
	.long	0x34d
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF677
	.uleb128 0x11
	.byte	0x2
	.long	0xb2
	.uleb128 0x12
	.byte	0x2
	.long	0x341
	.uleb128 0x11
	.byte	0x2
	.long	0x366
	.uleb128 0x13
	.long	0x341
	.uleb128 0x5
	.long	.LASF678
	.byte	0x9
	.byte	0x6
	.byte	0x1b
	.long	0x4d6
	.uleb128 0x8
	.long	.LASF679
	.byte	0x6
	.byte	0x75
	.long	0x95
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x8
	.long	.LASF680
	.byte	0x6
	.byte	0x77
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x14
	.long	.LASF681
	.byte	0x6
	.byte	0x78
	.long	0x34
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x14
	.long	.LASF682
	.byte	0x6
	.byte	0x79
	.long	0x348
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x14
	.long	.LASF683
	.byte	0x6
	.byte	0x7a
	.long	0x4ed
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0xb
	.byte	0x1
	.long	.LASF678
	.byte	0x6
	.byte	0x1e
	.byte	0x1
	.long	0x3d0
	.long	0x3d7
	.uleb128 0xc
	.long	0x4f2
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF684
	.byte	0x6
	.byte	0x1f
	.byte	0x1
	.long	0x3e8
	.long	0x3f5
	.uleb128 0xc
	.long	0x4f2
	.byte	0x1
	.uleb128 0xc
	.long	0x51
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF685
	.byte	0x6
	.byte	0x2c
	.long	.LASF686
	.byte	0x1
	.long	0x40a
	.long	0x411
	.uleb128 0xc
	.long	0x4f2
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF687
	.byte	0x6
	.byte	0x34
	.long	.LASF688
	.long	0x51
	.byte	0x1
	.long	0x42a
	.long	0x431
	.uleb128 0xc
	.long	0x4f2
	.byte	0x1
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF689
	.byte	0x6
	.byte	0x48
	.long	.LASF690
	.long	0x58
	.byte	0x1
	.long	0x44c
	.uleb128 0xd
	.long	0x71
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF691
	.byte	0x6
	.byte	0x50
	.long	.LASF692
	.long	0x95
	.byte	0x1
	.long	0x465
	.long	0x46c
	.uleb128 0xc
	.long	0x4f2
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF693
	.byte	0x6
	.byte	0x59
	.long	.LASF694
	.long	0x95
	.byte	0x1
	.long	0x485
	.long	0x48c
	.uleb128 0xc
	.long	0x4f2
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF695
	.byte	0x6
	.byte	0x60
	.long	.LASF696
	.long	0x71
	.byte	0x1
	.long	0x4a5
	.long	0x4ac
	.uleb128 0xc
	.long	0x4f2
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF670
	.byte	0x6
	.byte	0x6b
	.long	.LASF697
	.byte	0x1
	.long	0x4c1
	.long	0x4c8
	.uleb128 0xc
	.long	0x4f2
	.byte	0x1
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF761
	.byte	0x6
	.byte	0x72
	.long	.LASF824
	.byte	0x1
	.byte	0
	.uleb128 0x17
	.long	0xa0
	.long	0x4e6
	.uleb128 0x18
	.long	0x4e6
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF698
	.uleb128 0x9
	.long	0x4d6
	.uleb128 0x11
	.byte	0x2
	.long	0x36b
	.uleb128 0x19
	.string	"SPI"
	.byte	0x14
	.byte	0x1
	.byte	0x1b
	.long	0xd4c
	.uleb128 0x1a
	.long	.LASF699
	.byte	0x1
	.word	0x200
	.long	0x34d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0x3
	.uleb128 0x1a
	.long	.LASF700
	.byte	0x1
	.word	0x201
	.long	0x34d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x3
	.uleb128 0x1a
	.long	.LASF701
	.byte	0x1
	.word	0x202
	.long	0x34d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x3
	.uleb128 0x1a
	.long	.LASF702
	.byte	0x1
	.word	0x204
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x3
	.uleb128 0x1a
	.long	.LASF703
	.byte	0x1
	.word	0x205
	.long	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x1a
	.long	.LASF704
	.byte	0x1
	.word	0x207
	.long	0xb2
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0x3
	.uleb128 0x1a
	.long	.LASF705
	.byte	0x1
	.word	0x208
	.long	0xb2
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0x3
	.uleb128 0x1b
	.long	.LASF706
	.byte	0x1
	.word	0x20a
	.long	0xd4c
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.uleb128 0x3
	.long	.LASF644
	.byte	0x1
	.byte	0x1e
	.long	0xdd
	.uleb128 0x1c
	.byte	0x1
	.string	"SPI"
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.long	0x59f
	.long	0x5a6
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.long	.LASF707
	.byte	0x1
	.byte	0x28
	.byte	0x1
	.long	0x5b7
	.long	0x5c4
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.uleb128 0xc
	.long	0x51
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF685
	.byte	0x1
	.byte	0x48
	.long	.LASF708
	.byte	0x1
	.long	0x5d9
	.long	0x5fe
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.uleb128 0xd
	.long	0xd52
	.uleb128 0xd
	.long	0x583
	.uleb128 0xd
	.long	0xd52
	.uleb128 0xd
	.long	0x583
	.uleb128 0xd
	.long	0x34d
	.uleb128 0xd
	.long	0x58
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF709
	.byte	0x1
	.byte	0x65
	.long	.LASF710
	.byte	0x1
	.long	0x613
	.long	0x61f
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.uleb128 0xd
	.long	0x34d
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF711
	.byte	0x1
	.byte	0x72
	.long	.LASF712
	.byte	0x1
	.long	0x634
	.long	0x640
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.uleb128 0xd
	.long	0x34d
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF713
	.byte	0x1
	.byte	0x85
	.long	.LASF714
	.byte	0x1
	.long	0x655
	.long	0x666
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.uleb128 0xd
	.long	0xd52
	.uleb128 0xd
	.long	0x583
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF715
	.byte	0x1
	.byte	0x9a
	.long	.LASF716
	.long	0x583
	.byte	0x1
	.long	0x67f
	.long	0x690
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.uleb128 0xd
	.long	0xd52
	.uleb128 0xd
	.long	0x583
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF715
	.byte	0x1
	.byte	0x9b
	.long	.LASF717
	.long	0x583
	.byte	0x1
	.long	0x6a9
	.long	0x6b5
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.uleb128 0xd
	.long	0x35a
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF718
	.byte	0x1
	.byte	0xa6
	.long	.LASF719
	.long	0x51
	.byte	0x1
	.long	0x6ce
	.long	0x6d5
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF718
	.byte	0x1
	.byte	0xa7
	.long	.LASF720
	.long	0x51
	.byte	0x1
	.long	0x6ee
	.long	0x6fa
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.uleb128 0xd
	.long	0x35a
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF721
	.byte	0x1
	.byte	0xbd
	.long	.LASF722
	.long	0x583
	.byte	0x1
	.long	0x713
	.long	0x724
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.uleb128 0xd
	.long	0xd52
	.uleb128 0xd
	.long	0x583
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF721
	.byte	0x1
	.byte	0xca
	.long	.LASF723
	.long	0x583
	.byte	0x1
	.long	0x73d
	.long	0x749
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.uleb128 0xd
	.long	0x35a
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF721
	.byte	0x1
	.byte	0xd5
	.long	.LASF724
	.long	0x583
	.byte	0x1
	.long	0x762
	.long	0x76e
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.uleb128 0xd
	.long	0xd59
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF721
	.byte	0x1
	.byte	0xd7
	.long	.LASF725
	.long	0x583
	.byte	0x1
	.long	0x787
	.long	0x793
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.uleb128 0xd
	.long	0xd5f
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF721
	.byte	0x1
	.byte	0xd9
	.long	.LASF726
	.long	0x583
	.byte	0x1
	.long	0x7ac
	.long	0x7b8
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.uleb128 0xd
	.long	0xd65
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF721
	.byte	0x1
	.byte	0xdb
	.long	.LASF727
	.long	0x583
	.byte	0x1
	.long	0x7d1
	.long	0x7dd
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.uleb128 0xd
	.long	0xd6b
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF721
	.byte	0x1
	.byte	0xdd
	.long	.LASF728
	.long	0x583
	.byte	0x1
	.long	0x7f6
	.long	0x802
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.uleb128 0xd
	.long	0xd71
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF729
	.byte	0x1
	.byte	0xe8
	.long	.LASF730
	.long	0x583
	.byte	0x1
	.long	0x81b
	.long	0x822
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF731
	.byte	0x1
	.byte	0xef
	.long	.LASF732
	.long	0x583
	.byte	0x1
	.long	0x83b
	.long	0x842
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF733
	.byte	0x1
	.word	0x107
	.long	.LASF788
	.byte	0x1
	.long	0x858
	.long	0x869
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.uleb128 0xd
	.long	0xd52
	.uleb128 0xd
	.long	0x583
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF734
	.byte	0x1
	.word	0x119
	.long	.LASF735
	.long	0x583
	.byte	0x1
	.long	0x883
	.long	0x894
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.uleb128 0xd
	.long	0xd52
	.uleb128 0xd
	.long	0x583
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF734
	.byte	0x1
	.word	0x11b
	.long	.LASF736
	.long	0x583
	.byte	0x1
	.long	0x8ae
	.long	0x8ba
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.uleb128 0xd
	.long	0xd77
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF734
	.byte	0x1
	.word	0x11d
	.long	.LASF737
	.long	0x583
	.byte	0x1
	.long	0x8d4
	.long	0x8e0
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.uleb128 0xd
	.long	0xd82
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF734
	.byte	0x1
	.word	0x11f
	.long	.LASF738
	.long	0x583
	.byte	0x1
	.long	0x8fa
	.long	0x906
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.uleb128 0xd
	.long	0xd8d
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF734
	.byte	0x1
	.word	0x121
	.long	.LASF739
	.long	0x583
	.byte	0x1
	.long	0x920
	.long	0x92c
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.uleb128 0xd
	.long	0xd98
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF734
	.byte	0x1
	.word	0x123
	.long	.LASF740
	.long	0x583
	.byte	0x1
	.long	0x946
	.long	0x952
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.uleb128 0xd
	.long	0xda3
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF741
	.byte	0x1
	.word	0x134
	.long	.LASF742
	.long	0x147
	.byte	0x1
	.long	0x96c
	.long	0x978
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.uleb128 0xd
	.long	0x341
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF743
	.byte	0x1
	.word	0x150
	.long	.LASF744
	.long	0x583
	.byte	0x1
	.long	0x992
	.long	0x9a3
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.uleb128 0xd
	.long	0xd52
	.uleb128 0xd
	.long	0x583
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF743
	.byte	0x1
	.word	0x151
	.long	.LASF745
	.long	0x583
	.byte	0x1
	.long	0x9bd
	.long	0x9c9
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.uleb128 0xd
	.long	0xda3
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF743
	.byte	0x1
	.word	0x153
	.long	.LASF746
	.long	0x583
	.byte	0x1
	.long	0x9e3
	.long	0x9ef
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.uleb128 0xd
	.long	0xda9
	.byte	0
	.uleb128 0x13
	.long	0x583
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF743
	.byte	0x1
	.word	0x155
	.long	.LASF747
	.long	0x583
	.byte	0x1
	.long	0xa0e
	.long	0xa1a
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.uleb128 0xd
	.long	0xdaf
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF743
	.byte	0x1
	.word	0x157
	.long	.LASF748
	.long	0x583
	.byte	0x1
	.long	0xa34
	.long	0xa40
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.uleb128 0xd
	.long	0xd82
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF743
	.byte	0x1
	.word	0x159
	.long	.LASF749
	.long	0x583
	.byte	0x1
	.long	0xa5a
	.long	0xa66
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.uleb128 0xd
	.long	0xd8d
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF743
	.byte	0x1
	.word	0x15b
	.long	.LASF750
	.long	0x583
	.byte	0x1
	.long	0xa80
	.long	0xa8c
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.uleb128 0xd
	.long	0xd98
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF751
	.byte	0x1
	.word	0x16a
	.long	.LASF752
	.long	0x583
	.byte	0x1
	.long	0xaa6
	.long	0xab2
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.uleb128 0xd
	.long	0x34
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF753
	.byte	0x1
	.word	0x178
	.long	.LASF754
	.long	0x583
	.byte	0x1
	.long	0xacc
	.long	0xad3
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF755
	.byte	0x1
	.word	0x180
	.long	.LASF756
	.long	0x583
	.byte	0x1
	.long	0xaed
	.long	0xaf4
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF757
	.byte	0x1
	.word	0x194
	.long	.LASF758
	.long	0x583
	.byte	0x1
	.long	0xb0e
	.long	0xb1a
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.uleb128 0xd
	.long	0x583
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF759
	.byte	0x1
	.word	0x19b
	.long	.LASF760
	.long	0x34
	.byte	0x1
	.long	0xb34
	.long	0xb3b
	.uleb128 0xc
	.long	0xdba
	.byte	0x1
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"isr"
	.byte	0x1
	.word	0x19f
	.long	.LASF825
	.byte	0x1
	.uleb128 0x20
	.byte	0x1
	.long	.LASF762
	.byte	0x1
	.word	0x1a7
	.long	.LASF764
	.long	0x51
	.byte	0x3
	.byte	0x1
	.long	0xb64
	.long	0xb70
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.uleb128 0xd
	.long	0x34
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF763
	.byte	0x1
	.word	0x1ae
	.long	.LASF765
	.long	0x51
	.byte	0x3
	.byte	0x1
	.long	0xb8b
	.long	0xb92
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF763
	.byte	0x1
	.word	0x1af
	.long	.LASF766
	.long	0x51
	.byte	0x3
	.byte	0x1
	.long	0xbad
	.long	0xbb9
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.uleb128 0xd
	.long	0xd5f
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.long	.LASF826
	.byte	0x1
	.word	0x1b5
	.long	.LASF827
	.long	0xd4c
	.byte	0x3
	.byte	0x1
	.uleb128 0x20
	.byte	0x1
	.long	.LASF767
	.byte	0x1
	.word	0x1bb
	.long	.LASF768
	.long	0x34d
	.byte	0x3
	.byte	0x1
	.long	0xbe7
	.long	0xbee
	.uleb128 0xc
	.long	0xdba
	.byte	0x1
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF769
	.byte	0x1
	.word	0x1c5
	.long	.LASF770
	.byte	0x3
	.byte	0x1
	.long	0xc05
	.long	0xc11
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.uleb128 0xd
	.long	0xdc5
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF771
	.byte	0x1
	.word	0x1cb
	.long	.LASF772
	.byte	0x3
	.byte	0x1
	.long	0xc28
	.long	0xc34
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.uleb128 0xd
	.long	0x34d
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF773
	.byte	0x1
	.word	0x1d1
	.long	.LASF774
	.long	0x58
	.byte	0x3
	.byte	0x1
	.long	0xc4f
	.long	0xc56
	.uleb128 0xc
	.long	0xdba
	.byte	0x1
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF775
	.byte	0x1
	.word	0x1d7
	.long	.LASF776
	.byte	0x3
	.byte	0x1
	.long	0xc6d
	.long	0xc79
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.uleb128 0xd
	.long	0xd82
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF777
	.byte	0x1
	.word	0x1dd
	.long	.LASF778
	.long	0x34d
	.byte	0x3
	.byte	0x1
	.long	0xc94
	.long	0xc9b
	.uleb128 0xc
	.long	0xdba
	.byte	0x1
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF779
	.byte	0x1
	.word	0x1e3
	.long	.LASF780
	.byte	0x3
	.byte	0x1
	.long	0xcb2
	.long	0xcbe
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.uleb128 0xd
	.long	0x34d
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF781
	.byte	0x1
	.word	0x1e8
	.long	.LASF782
	.byte	0x3
	.byte	0x1
	.long	0xcd5
	.long	0xcdc
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF783
	.byte	0x1
	.word	0x1ed
	.long	.LASF784
	.byte	0x3
	.byte	0x1
	.long	0xcf3
	.long	0xcfa
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF785
	.byte	0x1
	.word	0x1f2
	.long	.LASF786
	.byte	0x3
	.byte	0x1
	.long	0xd11
	.long	0xd18
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF787
	.byte	0x1
	.word	0x1f8
	.long	.LASF789
	.byte	0x3
	.byte	0x1
	.long	0xd31
	.uleb128 0xd
	.long	0xd4c
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF790
	.byte	0x1
	.word	0x1fe
	.long	.LASF791
	.byte	0x3
	.byte	0x1
	.long	0xd44
	.uleb128 0xc
	.long	0xd4c
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x2
	.long	0x4f8
	.uleb128 0x11
	.byte	0x2
	.long	0xd58
	.uleb128 0x25
	.uleb128 0x12
	.byte	0x2
	.long	0x51
	.uleb128 0x12
	.byte	0x2
	.long	0x34
	.uleb128 0x12
	.byte	0x2
	.long	0x58
	.uleb128 0x12
	.byte	0x2
	.long	0x71
	.uleb128 0x12
	.byte	0x2
	.long	0x95
	.uleb128 0x12
	.byte	0x2
	.long	0xd7d
	.uleb128 0x13
	.long	0x46
	.uleb128 0x12
	.byte	0x2
	.long	0xd88
	.uleb128 0x13
	.long	0x58
	.uleb128 0x12
	.byte	0x2
	.long	0xd93
	.uleb128 0x13
	.long	0x71
	.uleb128 0x12
	.byte	0x2
	.long	0xd9e
	.uleb128 0x13
	.long	0x95
	.uleb128 0x12
	.byte	0x2
	.long	0x366
	.uleb128 0x12
	.byte	0x2
	.long	0x9ef
	.uleb128 0x12
	.byte	0x2
	.long	0xdb5
	.uleb128 0x13
	.long	0x51
	.uleb128 0x11
	.byte	0x2
	.long	0xdc0
	.uleb128 0x13
	.long	0x4f8
	.uleb128 0x12
	.byte	0x2
	.long	0xdcb
	.uleb128 0x13
	.long	0x34
	.uleb128 0x26
	.long	.LASF828
	.byte	0x4
	.byte	0x2
	.byte	0x48
	.long	0xe07
	.uleb128 0x27
	.long	.LASF792
	.byte	0x2
	.byte	0x49
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x27
	.long	.LASF793
	.byte	0x2
	.byte	0x4a
	.long	0x341
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x27
	.long	.LASF794
	.byte	0x2
	.byte	0x4b
	.long	0x51
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF795
	.byte	0x2
	.byte	0x4c
	.long	0xdd0
	.uleb128 0x28
	.long	.LASF829
	.byte	0x1
	.byte	0x1
	.long	0xe34
	.uleb128 0x29
	.long	.LASF796
	.byte	0x2
	.byte	0xfb
	.long	0x51
	.uleb128 0x29
	.long	.LASF797
	.byte	0x2
	.byte	0xfb
	.long	0x51
	.byte	0
	.uleb128 0x2a
	.long	0x1f2
	.byte	0x3
	.long	0xe42
	.long	0xe4d
	.uleb128 0x2b
	.long	.LASF798
	.long	0xe4d
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.long	0x354
	.uleb128 0x2a
	.long	0x6b5
	.byte	0x3
	.long	0xe60
	.long	0xe6b
	.uleb128 0x2b
	.long	.LASF798
	.long	0xe6b
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.long	0xd4c
	.uleb128 0x2a
	.long	0x802
	.byte	0x3
	.long	0xe7e
	.long	0xe89
	.uleb128 0x2b
	.long	.LASF798
	.long	0xe6b
	.byte	0x1
	.byte	0
	.uleb128 0x2c
	.long	0x952
	.long	.LFB31
	.long	.LFE31
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0xea3
	.byte	0x1
	.long	0xee6
	.uleb128 0x2d
	.long	.LASF798
	.long	0xe6b
	.byte	0x1
	.long	.LLST0
	.uleb128 0x2e
	.string	"ch"
	.byte	0x1
	.word	0x134
	.long	0x366
	.long	.LLST1
	.uleb128 0x2f
	.long	.LVL2
	.byte	0x1
	.long	0x281
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
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.long	.LASF799
	.byte	0x2
	.byte	0x58
	.long	.LASF802
	.long	.LFB57
	.long	.LFE57
	.long	.LLST2
	.byte	0x1
	.long	0xf98
	.uleb128 0x32
	.long	.Ldebug_ranges0+0
	.uleb128 0x33
	.string	"rx"
	.byte	0x2
	.byte	0x5a
	.long	0xf98
	.byte	0x5
	.byte	0x3
	.long	_ZZ5setupvE2rx
	.uleb128 0x33
	.string	"tx"
	.byte	0x2
	.byte	0x5b
	.long	0xf98
	.byte	0x5
	.byte	0x3
	.long	_ZZ5setupvE2tx
	.uleb128 0x34
	.long	.LVL3
	.long	0x5c4
	.long	0xf7d
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	spi
	.uleb128 0x30
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZZ5setupvE2rx
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x30
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZZ5setupvE2tx
	.uleb128 0x30
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.uleb128 0x30
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x30
	.byte	0x6
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.long	.LVL4
	.byte	0x1
	.long	0x3f5
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	timer
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	0x341
	.long	0xfa8
	.uleb128 0x18
	.long	0x4e6
	.byte	0x1f
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.long	.LASF808
	.byte	0x2
	.byte	0xa2
	.byte	0x1
	.long	0xfcc
	.uleb128 0x29
	.long	.LASF800
	.byte	0x2
	.byte	0xa2
	.long	0x71
	.uleb128 0x36
	.string	"led"
	.byte	0x2
	.byte	0xa2
	.long	0x51
	.byte	0
	.uleb128 0x37
	.long	0xfa8
	.long	.LASF830
	.long	.LFB59
	.long	.LFE59
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1003
	.uleb128 0x38
	.long	0xfb5
	.long	.LLST3
	.uleb128 0x38
	.long	0xfc0
	.long	.LLST4
	.uleb128 0x39
	.long	.LVL7
	.byte	0x1
	.long	0x431
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.long	.LASF801
	.byte	0x2
	.byte	0xa9
	.long	.LASF803
	.long	.LFB60
	.long	.LFE60
	.long	.LLST5
	.byte	0x1
	.long	0x1072
	.uleb128 0x3a
	.long	.LASF804
	.byte	0x2
	.byte	0xa9
	.long	0x71
	.long	.LLST6
	.uleb128 0x3b
	.string	"i"
	.byte	0x2
	.byte	0xa9
	.long	0x51
	.long	.LLST7
	.uleb128 0x3b
	.string	"led"
	.byte	0x2
	.byte	0xa9
	.long	0x51
	.long	.LLST8
	.uleb128 0x3c
	.long	.LVL10
	.long	0xfa8
	.uleb128 0x30
	.byte	0xc
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
	.byte	0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x30
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x8ba
	.byte	0x3
	.long	0x1080
	.long	0x1096
	.uleb128 0x2b
	.long	.LASF798
	.long	0xe6b
	.byte	0x1
	.uleb128 0x3d
	.string	"tx"
	.byte	0x1
	.word	0x11d
	.long	0x1096
	.byte	0
	.uleb128 0x13
	.long	0xd82
	.uleb128 0x2a
	.long	0x869
	.byte	0x3
	.long	0x10a9
	.long	0x10cb
	.uleb128 0x2b
	.long	.LASF798
	.long	0xe6b
	.byte	0x1
	.uleb128 0x3d
	.string	"tx"
	.byte	0x1
	.word	0x119
	.long	0xd52
	.uleb128 0x3d
	.string	"len"
	.byte	0x1
	.word	0x119
	.long	0x583
	.byte	0
	.uleb128 0x2a
	.long	0x8e0
	.byte	0x3
	.long	0x10d9
	.long	0x10ef
	.uleb128 0x2b
	.long	.LASF798
	.long	0xe6b
	.byte	0x1
	.uleb128 0x3d
	.string	"tx"
	.byte	0x1
	.word	0x11f
	.long	0x10ef
	.byte	0
	.uleb128 0x13
	.long	0xd8d
	.uleb128 0x3e
	.byte	0x1
	.long	.LASF831
	.byte	0x2
	.byte	0xd3
	.long	.LASF832
	.long	0x341
	.long	.LFB62
	.long	.LFE62
	.long	.LLST9
	.byte	0x1
	.long	0x137b
	.uleb128 0x3b
	.string	"cmd"
	.byte	0x2
	.byte	0xd3
	.long	0x33b
	.long	.LLST10
	.uleb128 0x3f
	.long	.Ldebug_ranges0+0x18
	.long	0x11bb
	.uleb128 0x40
	.string	"x"
	.byte	0x2
	.byte	0xe4
	.long	0x34
	.uleb128 0x34
	.long	.LVL18
	.long	0x17f8
	.long	0x1163
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 1
	.uleb128 0x30
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x31
	.uleb128 0x30
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x34
	.long	.LVL19
	.long	0x17f8
	.long	0x1191
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 4
	.uleb128 0x30
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x30
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3c
	.long	.LVL20
	.long	0x17f8
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 2
	.uleb128 0x30
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x32
	.uleb128 0x30
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x41
	.long	0x1072
	.long	.LBB33
	.long	.LBE33
	.byte	0x2
	.byte	0xf4
	.long	0x1232
	.uleb128 0x38
	.long	0x108a
	.long	.LLST11
	.uleb128 0x42
	.long	0x1080
	.uleb128 0x43
	.long	0x109b
	.long	.LBB34
	.long	.LBE34
	.byte	0x1
	.word	0x11e
	.uleb128 0x38
	.long	0x10be
	.long	.LLST12
	.uleb128 0x38
	.long	0x10b3
	.long	.LLST11
	.uleb128 0x42
	.long	0x10a9
	.uleb128 0x3c
	.long	.LVL22
	.long	0x2ab
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	spi+13
	.uleb128 0x30
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x32
	.uleb128 0x30
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x41
	.long	0x1072
	.long	.LBB36
	.long	.LBE36
	.byte	0x2
	.byte	0xf5
	.long	0x12a9
	.uleb128 0x38
	.long	0x108a
	.long	.LLST14
	.uleb128 0x42
	.long	0x1080
	.uleb128 0x43
	.long	0x109b
	.long	.LBB37
	.long	.LBE37
	.byte	0x1
	.word	0x11e
	.uleb128 0x38
	.long	0x10be
	.long	.LLST15
	.uleb128 0x38
	.long	0x10b3
	.long	.LLST14
	.uleb128 0x42
	.long	0x10a9
	.uleb128 0x3c
	.long	.LVL25
	.long	0x2ab
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	spi+13
	.uleb128 0x30
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x32
	.uleb128 0x30
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x41
	.long	0x10cb
	.long	.LBB39
	.long	.LBE39
	.byte	0x2
	.byte	0xf6
	.long	0x1318
	.uleb128 0x42
	.long	0x10e3
	.uleb128 0x42
	.long	0x10d9
	.uleb128 0x43
	.long	0x109b
	.long	.LBB40
	.long	.LBE40
	.byte	0x1
	.word	0x120
	.uleb128 0x38
	.long	0x10be
	.long	.LLST17
	.uleb128 0x42
	.long	0x10b3
	.uleb128 0x42
	.long	0x10a9
	.uleb128 0x3c
	.long	.LVL28
	.long	0x2ab
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	spi+13
	.uleb128 0x30
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x34
	.uleb128 0x30
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LVL17
	.long	0x17f8
	.long	0x1346
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x80
	.sleb128 1
	.uleb128 0x30
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x30
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x34
	.long	.LVL23
	.long	0x48c
	.long	0x1362
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	timer
	.byte	0
	.uleb128 0x3c
	.long	.LVL26
	.long	0x44c
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	timer
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.long	.LASF805
	.byte	0x2
	.byte	0xaf
	.long	.LASF806
	.long	.LFB61
	.long	.LFE61
	.long	.LLST18
	.byte	0x1
	.long	0x14f1
	.uleb128 0x44
	.long	.LBB48
	.long	.LBE48
	.uleb128 0x45
	.long	.LASF807
	.byte	0x2
	.byte	0xb1
	.long	0x51
	.byte	0x5
	.byte	0x3
	.long	_ZZ10spiCommSlvvE4cmdb
	.uleb128 0x33
	.string	"cmd"
	.byte	0x2
	.byte	0xb2
	.long	0x14f1
	.byte	0x5
	.byte	0x3
	.long	_ZZ10spiCommSlvvE3cmd
	.uleb128 0x40
	.string	"j"
	.byte	0x2
	.byte	0xb3
	.long	0x51
	.uleb128 0x41
	.long	0xe52
	.long	.LBB49
	.long	.LBE49
	.byte	0x2
	.byte	0xb4
	.long	0x1404
	.uleb128 0x46
	.long	0xe60
	.byte	0x6
	.byte	0x3
	.long	spi
	.byte	0x9f
	.uleb128 0x3c
	.long	.LVL31
	.long	0x212
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	spi+6
	.byte	0
	.byte	0
	.uleb128 0x41
	.long	0x109b
	.long	.LBB51
	.long	.LBE51
	.byte	0x2
	.byte	0xc3
	.long	0x145b
	.uleb128 0x38
	.long	0x10be
	.long	.LLST19
	.uleb128 0x42
	.long	0x10b3
	.uleb128 0x42
	.long	0x10a9
	.uleb128 0x3c
	.long	.LVL35
	.long	0x2ab
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	spi+13
	.uleb128 0x30
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	.LC0
	.uleb128 0x30
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x32
	.uleb128 0x30
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LVL32
	.long	0xe89
	.long	0x1477
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	spi
	.byte	0
	.uleb128 0x34
	.long	.LVL33
	.long	0x10f4
	.long	0x1493
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	_ZZ10spiCommSlvvE3cmd
	.byte	0
	.uleb128 0x34
	.long	.LVL37
	.long	0xe89
	.long	0x14b5
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	spi
	.uleb128 0x30
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8
	.byte	0x5a
	.byte	0
	.uleb128 0x34
	.long	.LVL38
	.long	0xe89
	.long	0x14d7
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	spi
	.uleb128 0x30
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8
	.byte	0x3f
	.byte	0
	.uleb128 0x3c
	.long	.LVL39
	.long	0xe89
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	spi
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	0x341
	.long	0x1501
	.uleb128 0x18
	.long	0x4e6
	.byte	0xf
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.long	.LASF809
	.byte	0x3
	.byte	0x1d
	.byte	0x3
	.long	0x151b
	.uleb128 0x47
	.uleb128 0x40
	.string	"sr"
	.byte	0x3
	.byte	0x1f
	.long	0x34
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	0x192
	.byte	0x3
	.long	0x1529
	.long	0x1534
	.uleb128 0x2b
	.long	.LASF798
	.long	0xe4d
	.byte	0x1
	.byte	0
	.uleb128 0x48
	.byte	0x1
	.long	.LASF810
	.byte	0x2
	.byte	0x6f
	.long	0x51
	.long	.LFB58
	.long	.LFE58
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x16c6
	.uleb128 0x44
	.long	.LBB67
	.long	.LBE67
	.uleb128 0x45
	.long	.LASF811
	.byte	0x2
	.byte	0x71
	.long	0x71
	.byte	0x5
	.byte	0x3
	.long	_ZZ4mainE4tled
	.uleb128 0x45
	.long	.LASF812
	.byte	0x2
	.byte	0x71
	.long	0x71
	.byte	0x5
	.byte	0x3
	.long	_ZZ4mainE5tled2
	.uleb128 0x33
	.string	"t0"
	.byte	0x2
	.byte	0x72
	.long	0x95
	.byte	0x5
	.byte	0x3
	.long	_ZZ4mainE2t0
	.uleb128 0x45
	.long	.LASF813
	.byte	0x2
	.byte	0x73
	.long	0x34
	.byte	0x5
	.byte	0x3
	.long	_ZZ4mainE8csStatus
	.uleb128 0x33
	.string	"k1"
	.byte	0x2
	.byte	0x73
	.long	0x34
	.byte	0x5
	.byte	0x3
	.long	_ZZ4mainE2k1
	.uleb128 0x41
	.long	0x1501
	.long	.LBB68
	.long	.LBE68
	.byte	0x2
	.byte	0x75
	.long	0x15d4
	.uleb128 0x44
	.long	.LBB69
	.long	.LBE69
	.uleb128 0x49
	.long	0x150f
	.long	.LLST20
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	0xfa8
	.long	.LBB70
	.long	.Ldebug_ranges0+0x30
	.byte	0x2
	.byte	0x7e
	.long	0x15fa
	.uleb128 0x38
	.long	0xfc0
	.long	.LLST21
	.uleb128 0x38
	.long	0xfb5
	.long	.LLST21
	.byte	0
	.uleb128 0x41
	.long	0xe70
	.long	.LBB74
	.long	.LBE74
	.byte	0x2
	.byte	0x97
	.long	0x1628
	.uleb128 0x42
	.long	0xe7e
	.uleb128 0x4b
	.long	0x151b
	.long	.LBB75
	.long	.LBE75
	.byte	0x1
	.byte	0xe8
	.uleb128 0x42
	.long	0x1529
	.byte	0
	.byte	0
	.uleb128 0x4c
	.long	.LVL41
	.long	0xee6
	.uleb128 0x34
	.long	.LVL42
	.long	0x4ac
	.long	0x164d
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	timer
	.byte	0
	.uleb128 0x34
	.long	.LVL43
	.long	0x44c
	.long	0x1669
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	timer
	.byte	0
	.uleb128 0x34
	.long	.LVL46
	.long	0xfa8
	.long	0x1687
	.uleb128 0x30
	.byte	0xc
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
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x34
	.long	.LVL47
	.long	0x5fe
	.long	0x16a3
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	spi
	.byte	0
	.uleb128 0x4c
	.long	.LVL51
	.long	0x137b
	.uleb128 0x3c
	.long	.LVL52
	.long	0x44c
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	timer
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4d
	.long	.LASF814
	.byte	0x1
	.long	.LFB64
	.long	.LFE64
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x1727
	.uleb128 0x4b
	.long	0xe12
	.long	.LBB81
	.long	.LBE81
	.byte	0x2
	.byte	0xfb
	.uleb128 0x4e
	.long	0xe28
	.sleb128 -1
	.uleb128 0x4f
	.long	0xe1d
	.byte	0x1
	.uleb128 0x50
	.long	.LVL54
	.long	0x1710
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	timer
	.byte	0
	.uleb128 0x51
	.long	.LVL55
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
	.byte	0x3
	.long	spi
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4d
	.long	.LASF815
	.byte	0x1
	.long	.LFB65
	.long	.LFE65
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x179e
	.uleb128 0x4b
	.long	0xe12
	.long	.LBB87
	.long	.LBE87
	.byte	0x2
	.byte	0xfb
	.uleb128 0x4e
	.long	0xe28
	.sleb128 -1
	.uleb128 0x4f
	.long	0xe1d
	.byte	0
	.uleb128 0x44
	.long	.LBB88
	.long	.LBE88
	.uleb128 0x4f
	.long	0xe1d
	.byte	0
	.uleb128 0x4e
	.long	0xe28
	.sleb128 -1
	.uleb128 0x50
	.long	.LVL57
	.long	0x1786
	.uleb128 0x30
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	spi
	.byte	0
	.uleb128 0x51
	.long	.LVL58
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
	.byte	0x3
	.long	timer
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x52
	.long	.LASF816
	.byte	0x2
	.byte	0x44
	.long	0x36b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	timer
	.uleb128 0x52
	.long	.LASF817
	.byte	0x2
	.byte	0x45
	.long	0x71
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ledtime
	.uleb128 0x52
	.long	.LASF818
	.byte	0x2
	.byte	0x46
	.long	0x71
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	cycleTime
	.uleb128 0x53
	.string	"blk"
	.byte	0x2
	.byte	0x4e
	.long	0xe07
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	blk
	.uleb128 0x53
	.string	"spi"
	.byte	0x2
	.byte	0x50
	.long	0x4f8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	spi
	.uleb128 0x54
	.byte	0x1
	.long	.LASF819
	.byte	0x7
	.byte	0x90
	.long	0x83
	.byte	0x1
	.uleb128 0xd
	.long	0x33b
	.uleb128 0xd
	.long	0xa7
	.uleb128 0xd
	.long	0x63
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x13
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
	.uleb128 0x27
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
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x43
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
	.uleb128 0x44
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x49
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x34
	.uleb128 0xc
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
	.uleb128 0x4e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x4f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x50
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x51
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x52
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x53
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x54
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
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
	.long	.LVL2-1
	.word	0x3
	.byte	0x88
	.sleb128 -13
	.byte	0x9f
	.long	.LVL2-1
	.long	.LFE31
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL2-1
	.word	0x1
	.byte	0x66
	.long	.LVL2-1
	.long	.LFE31
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LFB57
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
	.long	.LFE57
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
.LLST3:
	.long	.LVL5
	.long	.LVL7-1
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
	.long	.LVL7-1
	.long	.LVL7
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	.LVL7
	.long	.LFE59
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
	.long	0
	.long	0
.LLST4:
	.long	.LVL5
	.long	.LVL6
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL6
	.long	.LFE59
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
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
	.long	.LVL8
	.long	.LVL9
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
	.long	.LVL9
	.long	.LVL14
	.word	0xc
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
	.long	.LVL14
	.long	.LFE60
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x66
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL8
	.long	.LVL9
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL9
	.long	.LVL12
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST8:
	.long	.LVL8
	.long	.LVL9
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL9
	.long	.LVL13
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL13
	.long	.LFE60
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x62
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LFB62
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
	.sleb128 10
	.long	.LCFI17
	.long	.LFE62
	.word	0x2
	.byte	0x8c
	.sleb128 10
	.long	0
	.long	0
.LLST10:
	.long	.LVL15
	.long	.LVL16
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL16
	.long	.LVL29
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL29
	.long	.LFE62
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL21
	.long	.LVL28
	.word	0x3
	.byte	0x8c
	.sleb128 1
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL21
	.long	.LVL28
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL24
	.long	.LVL28
	.word	0x3
	.byte	0x8c
	.sleb128 1
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL24
	.long	.LVL28
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL27
	.long	.LVL28
	.word	0x2
	.byte	0x34
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LFB61
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI19
	.long	.LFE61
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST19:
	.long	.LVL34
	.long	.LVL36
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LVL40
	.long	.LVL41-1
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST21:
	.long	.LVL44
	.long	.LVL45
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x5c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.long	.LFB57
	.long	.LFE57-.LFB57
	.long	.LFB59
	.long	.LFE59-.LFB59
	.long	.LFB60
	.long	.LFE60-.LFB60
	.long	.LFB62
	.long	.LFE62-.LFB62
	.long	.LFB61
	.long	.LFE61-.LFB61
	.long	.LFB58
	.long	.LFE58-.LFB58
	.long	.LFB64
	.long	.LFE64-.LFB64
	.long	.LFB65
	.long	.LFE65-.LFB65
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB12
	.long	.LBE12
	.long	.LBB13
	.long	.LBE13
	.long	0
	.long	0
	.long	.LBB31
	.long	.LBE31
	.long	.LBB32
	.long	.LBE32
	.long	0
	.long	0
	.long	.LBB70
	.long	.LBE70
	.long	.LBB73
	.long	.LBE73
	.long	0
	.long	0
	.long	.LFB31
	.long	.LFE31
	.long	.LFB57
	.long	.LFE57
	.long	.LFB59
	.long	.LFE59
	.long	.LFB60
	.long	.LFE60
	.long	.LFB62
	.long	.LFE62
	.long	.LFB61
	.long	.LFE61
	.long	.LFB58
	.long	.LFE58
	.long	.LFB64
	.long	.LFE64
	.long	.LFB65
	.long	.LFE65
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
	.uleb128 0x1a
	.uleb128 0x3
	.byte	0x5
	.uleb128 0x17
	.long	.LASF428
	.file 8 "../include/reg/reggeneral.h"
	.byte	0x3
	.uleb128 0x18
	.uleb128 0x8
	.byte	0x5
	.uleb128 0x16
	.long	.LASF429
	.file 9 "../include/reg/regmacros.h"
	.byte	0x3
	.uleb128 0x18
	.uleb128 0x9
	.byte	0x7
	.long	.Ldebug_macro2
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.file 10 "../include/reg/regtimer.h"
	.byte	0x3
	.uleb128 0x19
	.uleb128 0xa
	.byte	0x5
	.uleb128 0x17
	.long	.LASF445
	.byte	0x3
	.uleb128 0x19
	.uleb128 0x5
	.byte	0x7
	.long	.Ldebug_macro4
	.byte	0x4
	.file 11 "../include/bits.h"
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x7
	.long	.Ldebug_macro5
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro6
	.file 12 "../include/reg/regtim85.h"
	.byte	0x3
	.uleb128 0x43
	.uleb128 0xc
	.byte	0x7
	.long	.Ldebug_macro7
	.byte	0x4
	.byte	0x6
	.uleb128 0x4a
	.long	.LASF535
	.byte	0x4
	.file 13 "../include/reg/timing.h"
	.byte	0x3
	.uleb128 0x1a
	.uleb128 0xd
	.byte	0x7
	.long	.Ldebug_macro8
	.byte	0x4
	.file 14 "../include/fnasm.h"
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0xe
	.byte	0x7
	.long	.Ldebug_macro9
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x4
	.byte	0x7
	.long	.Ldebug_macro10
	.byte	0x4
	.byte	0x3
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0x5
	.uleb128 0x17
	.long	.LASF556
	.byte	0x4
	.byte	0x3
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x5
	.uleb128 0x17
	.long	.LASF557
	.byte	0x4
	.file 15 "../include/reg/regdport.h"
	.byte	0x3
	.uleb128 0x1e
	.uleb128 0xf
	.byte	0x7
	.long	.Ldebug_macro11
	.byte	0x4
	.file 16 "../include/reg/regusi.h"
	.byte	0x3
	.uleb128 0x1f
	.uleb128 0x10
	.byte	0x5
	.uleb128 0x17
	.long	.LASF576
	.byte	0x3
	.uleb128 0x19
	.uleb128 0xf
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro12
	.byte	0x4
	.byte	0x3
	.uleb128 0x20
	.uleb128 0x7
	.byte	0x7
	.long	.Ldebug_macro13
	.byte	0x4
	.byte	0x5
	.uleb128 0x36
	.long	.LASF617
	.byte	0x5
	.uleb128 0x37
	.long	.LASF618
	.byte	0x5
	.uleb128 0x38
	.long	.LASF619
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF620
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF621
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF622
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF623
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF624
	.byte	0x5
	.uleb128 0x40
	.long	.LASF625
	.byte	0x5
	.uleb128 0x41
	.long	.LASF626
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
	.section	.debug_macro,"G",@progbits,wm4.regmacros.h.22.49a8bb8630f59ea577dfc3b79d20f031,comdat
.Ldebug_macro2:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x16
	.long	.LASF430
	.byte	0x5
	.uleb128 0x19
	.long	.LASF431
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF432
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF433
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF434
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF435
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.reggeneral.h.26.c33d086d44a503502bff992172cabae6,comdat
.Ldebug_macro3:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF436
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF437
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF438
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF439
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF440
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF441
	.byte	0x5
	.uleb128 0x20
	.long	.LASF442
	.byte	0x5
	.uleb128 0x21
	.long	.LASF443
	.byte	0x5
	.uleb128 0x22
	.long	.LASF444
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.h_types.h.23.fce948e91e6dacafc019a221ca87f341,comdat
.Ldebug_macro4:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.long	.LASF446
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF447
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF448
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF449
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF450
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF451
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.bits.h.23.4b916c607563962d63c8c197b9cd0074,comdat
.Ldebug_macro5:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.long	.LASF452
	.byte	0x5
	.uleb128 0x19
	.long	.LASF453
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF454
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.regtimer.h.34.288a48dbfeb64cea5fd76a8d86075262,comdat
.Ldebug_macro6:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x22
	.long	.LASF455
	.byte	0x5
	.uleb128 0x23
	.long	.LASF456
	.byte	0x6
	.uleb128 0x2c
	.long	.LASF457
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF458
	.byte	0x5
	.uleb128 0x30
	.long	.LASF459
	.byte	0x5
	.uleb128 0x31
	.long	.LASF460
	.byte	0x5
	.uleb128 0x34
	.long	.LASF461
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF462
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.regtim85.h.23.e63cda77193236f29c7b8bada24ee3a1,comdat
.Ldebug_macro7:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.long	.LASF463
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF464
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF465
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF466
	.byte	0x5
	.uleb128 0x20
	.long	.LASF467
	.byte	0x5
	.uleb128 0x21
	.long	.LASF468
	.byte	0x5
	.uleb128 0x22
	.long	.LASF469
	.byte	0x5
	.uleb128 0x23
	.long	.LASF470
	.byte	0x5
	.uleb128 0x24
	.long	.LASF471
	.byte	0x5
	.uleb128 0x25
	.long	.LASF472
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF473
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF474
	.byte	0x5
	.uleb128 0x32
	.long	.LASF475
	.byte	0x5
	.uleb128 0x33
	.long	.LASF476
	.byte	0x5
	.uleb128 0x34
	.long	.LASF477
	.byte	0x5
	.uleb128 0x39
	.long	.LASF478
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF479
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF480
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF481
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF482
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF483
	.byte	0x5
	.uleb128 0x40
	.long	.LASF484
	.byte	0x5
	.uleb128 0x41
	.long	.LASF485
	.byte	0x5
	.uleb128 0x42
	.long	.LASF486
	.byte	0x5
	.uleb128 0x43
	.long	.LASF487
	.byte	0x5
	.uleb128 0x44
	.long	.LASF488
	.byte	0x5
	.uleb128 0x45
	.long	.LASF489
	.byte	0x5
	.uleb128 0x46
	.long	.LASF490
	.byte	0x5
	.uleb128 0x47
	.long	.LASF491
	.byte	0x5
	.uleb128 0x48
	.long	.LASF492
	.byte	0x5
	.uleb128 0x49
	.long	.LASF493
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF494
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF495
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF496
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF497
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF498
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF499
	.byte	0x5
	.uleb128 0x50
	.long	.LASF500
	.byte	0x5
	.uleb128 0x53
	.long	.LASF501
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF502
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF503
	.byte	0x5
	.uleb128 0x60
	.long	.LASF504
	.byte	0x5
	.uleb128 0x61
	.long	.LASF505
	.byte	0x5
	.uleb128 0x62
	.long	.LASF506
	.byte	0x5
	.uleb128 0x63
	.long	.LASF507
	.byte	0x5
	.uleb128 0x64
	.long	.LASF508
	.byte	0x5
	.uleb128 0x65
	.long	.LASF509
	.byte	0x5
	.uleb128 0x66
	.long	.LASF510
	.byte	0x5
	.uleb128 0x67
	.long	.LASF511
	.byte	0x5
	.uleb128 0x68
	.long	.LASF512
	.byte	0x5
	.uleb128 0x69
	.long	.LASF513
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF514
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF515
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF516
	.byte	0x5
	.uleb128 0x70
	.long	.LASF517
	.byte	0x5
	.uleb128 0x71
	.long	.LASF518
	.byte	0x5
	.uleb128 0x72
	.long	.LASF519
	.byte	0x5
	.uleb128 0x73
	.long	.LASF520
	.byte	0x5
	.uleb128 0x74
	.long	.LASF521
	.byte	0x5
	.uleb128 0x75
	.long	.LASF522
	.byte	0x5
	.uleb128 0x76
	.long	.LASF523
	.byte	0x5
	.uleb128 0x77
	.long	.LASF524
	.byte	0x5
	.uleb128 0x78
	.long	.LASF525
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF526
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF527
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF528
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF529
	.byte	0x5
	.uleb128 0x80
	.long	.LASF530
	.byte	0x5
	.uleb128 0x82
	.long	.LASF531
	.byte	0x5
	.uleb128 0x84
	.long	.LASF532
	.byte	0x5
	.uleb128 0x85
	.long	.LASF533
	.byte	0x5
	.uleb128 0x86
	.long	.LASF534
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.timing.h.22.67928da58428f8f56a8f06df487b592a,comdat
.Ldebug_macro8:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x16
	.long	.LASF536
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF455
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF456
	.byte	0x6
	.uleb128 0x27
	.long	.LASF457
	.byte	0x5
	.uleb128 0x34
	.long	.LASF537
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF538
	.byte	0x5
	.uleb128 0x47
	.long	.LASF539
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF540
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF541
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF542
	.byte	0x5
	.uleb128 0x50
	.long	.LASF543
	.byte	0x5
	.uleb128 0x53
	.long	.LASF544
	.byte	0x6
	.uleb128 0x5a
	.long	.LASF535
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.fnasm.h.23.7eceab03832af77a7f7ccd5b8c0ab920,comdat
.Ldebug_macro9:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.long	.LASF545
	.byte	0x5
	.uleb128 0x19
	.long	.LASF546
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF547
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF548
	.byte	0x5
	.uleb128 0x1c
	.long	.LASF549
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF550
	.byte	0x5
	.uleb128 0x21
	.long	.LASF551
	.byte	0x5
	.uleb128 0x24
	.long	.LASF552
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.circbuff.h.23.76f2726e9b12dd9af6b90e5cd064cf10,comdat
.Ldebug_macro10:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.long	.LASF553
	.byte	0x5
	.uleb128 0x20
	.long	.LASF554
	.byte	0x5
	.uleb128 0x41
	.long	.LASF555
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.regdport.h.22.6044fad5f173bc4823e36038bf26a60c,comdat
.Ldebug_macro11:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x16
	.long	.LASF558
	.byte	0x5
	.uleb128 0x21
	.long	.LASF455
	.byte	0x5
	.uleb128 0x22
	.long	.LASF456
	.byte	0x6
	.uleb128 0x2a
	.long	.LASF457
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF559
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF560
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF561
	.byte	0x5
	.uleb128 0x40
	.long	.LASF562
	.byte	0x5
	.uleb128 0x41
	.long	.LASF563
	.byte	0x5
	.uleb128 0x42
	.long	.LASF564
	.byte	0x5
	.uleb128 0x45
	.long	.LASF565
	.byte	0x5
	.uleb128 0x46
	.long	.LASF566
	.byte	0x5
	.uleb128 0x48
	.long	.LASF567
	.byte	0x5
	.uleb128 0x49
	.long	.LASF568
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF569
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF570
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF571
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF572
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF573
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF574
	.byte	0x5
	.uleb128 0x60
	.long	.LASF575
	.byte	0x6
	.uleb128 0x67
	.long	.LASF535
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.regusi.h.32.514a92ebbb4b229622a309d059ac36c8,comdat
.Ldebug_macro12:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x20
	.long	.LASF455
	.byte	0x5
	.uleb128 0x21
	.long	.LASF456
	.byte	0x6
	.uleb128 0x2a
	.long	.LASF457
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF577
	.byte	0x6
	.uleb128 0x2e
	.long	.LASF578
	.byte	0x5
	.uleb128 0x33
	.long	.LASF579
	.byte	0x5
	.uleb128 0x38
	.long	.LASF580
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF581
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF582
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF583
	.byte	0x5
	.uleb128 0x40
	.long	.LASF584
	.byte	0x5
	.uleb128 0x41
	.long	.LASF585
	.byte	0x5
	.uleb128 0x43
	.long	.LASF586
	.byte	0x5
	.uleb128 0x44
	.long	.LASF587
	.byte	0x5
	.uleb128 0x45
	.long	.LASF588
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF589
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF590
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF591
	.byte	0x5
	.uleb128 0x75
	.long	.LASF592
	.byte	0x5
	.uleb128 0x76
	.long	.LASF593
	.byte	0x5
	.uleb128 0x77
	.long	.LASF594
	.byte	0x5
	.uleb128 0x78
	.long	.LASF595
	.byte	0x5
	.uleb128 0x79
	.long	.LASF596
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF597
	.byte	0x5
	.uleb128 0x84
	.long	.LASF598
	.byte	0x5
	.uleb128 0x85
	.long	.LASF599
	.byte	0x5
	.uleb128 0x86
	.long	.LASF600
	.byte	0x5
	.uleb128 0x87
	.long	.LASF601
	.byte	0x5
	.uleb128 0x88
	.long	.LASF602
	.byte	0x5
	.uleb128 0x89
	.long	.LASF603
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF604
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF605
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF606
	.byte	0x5
	.uleb128 0x90
	.long	.LASF607
	.byte	0x5
	.uleb128 0x91
	.long	.LASF608
	.byte	0x5
	.uleb128 0x92
	.long	.LASF609
	.byte	0x5
	.uleb128 0x93
	.long	.LASF610
	.byte	0x5
	.uleb128 0x94
	.long	.LASF611
	.byte	0x6
	.uleb128 0xa5
	.long	.LASF535
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.fnclib.h.23.bf0db8c830a826f3736c1d4ab4a3f194,comdat
.Ldebug_macro13:
	.word	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.long	.LASF612
	.byte	0x5
	.uleb128 0x22
	.long	.LASF613
	.byte	0x5
	.uleb128 0x24
	.long	.LASF614
	.byte	0x5
	.uleb128 0x39
	.long	.LASF615
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF616
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF544:
	.string	"TICK_TO_1_us ((unsigned long)(1000.0/TICKf_ns))"
.LASF675:
	.string	"_ZN14CircularBuffer11evalBuffDimEh"
.LASF451:
	.string	"_Sec(n) ((n)*1000000UL)"
.LASF517:
	.string	"TIMSK0 TIMSK"
.LASF550:
	.string	"sts(mem,in) __asm__ __volatile__ (\"sts %0,%1\" : : \"i\" (&mem), \"r\" (in) : \"memory\" );"
.LASF665:
	.string	"_ZN14CircularBuffer7getDataEPch"
.LASF313:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 1"
.LASF622:
	.string	"PDEB PB4"
.LASF729:
	.string	"getRcvdDataSize"
.LASF51:
	.string	"__INT_LEAST16_TYPE__ int"
.LASF76:
	.string	"__LONG_LONG_MAX__ 9223372036854775807LL"
.LASF806:
	.string	"_Z10spiCommSlvv"
.LASF253:
	.string	"__LACCUM_EPSILON__ 0x1P-31LK"
.LASF133:
	.string	"__FLT_MAX__ 3.40282347e+38F"
.LASF186:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF84:
	.string	"__INTMAX_C(c) c ## LL"
.LASF108:
	.string	"__UINT16_C(c) c ## U"
.LASF465:
	.string	"TSM BV_(7)"
.LASF174:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF278:
	.string	"__TQ_IBIT__ 0"
.LASF408:
	.string	"__BUILTIN_AVR_UHRBITS 1"
.LASF365:
	.string	"__BUILTIN_AVR_ROUNDK 1"
.LASF12:
	.string	"__ATOMIC_CONSUME 1"
.LASF254:
	.string	"__ULACCUM_FBIT__ 32"
.LASF818:
	.string	"cycleTime"
.LASF682:
	.string	"btIdx"
.LASF492:
	.string	"CS1_CLK_DIV64 CS1_0_3(7)"
.LASF620:
	.string	"PORTDEB PORTB"
.LASF623:
	.string	"PCS PB3"
.LASF18:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF541:
	.string	"CLK_CYCLE_FREQ_KHz (CLK_KHz/CLKPS_DIV)"
.LASF180:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF201:
	.string	"__FRACT_MIN__ (-0.5R-0.5R)"
.LASF518:
	.string	"OCIE(c,n) BV_(3+(c)*2+(1-(n)))"
.LASF368:
	.string	"__BUILTIN_AVR_ROUNDUHK 1"
.LASF160:
	.string	"__DECIMAL_DIG__ 9"
.LASF237:
	.string	"__USACCUM_MAX__ 0XFFFFP-8UHK"
.LASF189:
	.string	"__SFRACT_FBIT__ 7"
.LASF584:
	.string	"USIPF BV_(5)"
.LASF274:
	.string	"__SQ_IBIT__ 0"
.LASF507:
	.string	"OCF1B OCF(1,1)"
.LASF33:
	.string	"__SIZE_TYPE__ unsigned int"
.LASF177:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF571:
	.string	"PORTSET(p,b) (dport_st)(PB ## b)"
.LASF137:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF42:
	.string	"__INT8_TYPE__ signed char"
.LASF148:
	.string	"__DBL_MIN__ double(1.17549435e-38L)"
.LASF236:
	.string	"__USACCUM_MIN__ 0.0UHK"
.LASF769:
	.string	"setActiveSlave"
.LASF681:
	.string	"instance"
.LASF361:
	.string	"__BUILTIN_AVR_ROUNDUR 1"
.LASF654:
	.string	"freeSpace"
.LASF692:
	.string	"_ZN7ATTimer8baseTimeEv"
.LASF106:
	.string	"__UINT8_C(c) c"
.LASF700:
	.string	"m_enhFlag"
.LASF447:
	.string	"NULL __null"
.LASF428:
	.string	"INITHW_H "
.LASF337:
	.string	"__BUILTIN_AVR_SEI 1"
.LASF718:
	.string	"getRcvdByte"
.LASF523:
	.string	"TOIE(n) BV_((n)+1)"
.LASF503:
	.string	"TIFR1 TIFR"
.LASF752:
	.string	"_ZN3SPI25masterSetActiveSlave2XmitEh"
.LASF2:
	.string	"__STDC_HOSTED__ 1"
.LASF224:
	.string	"__ULLFRACT_FBIT__ 64"
.LASF732:
	.string	"_ZN3SPI11rxBufferDimEv"
.LASF364:
	.string	"__BUILTIN_AVR_ROUNDHK 1"
.LASF61:
	.string	"__INT_FAST64_TYPE__ long long int"
.LASF787:
	.string	"_setSpiThis"
.LASF372:
	.string	"__BUILTIN_AVR_COUNTLSHR 1"
.LASF338:
	.string	"__BUILTIN_AVR_CLI 1"
.LASF595:
	.string	"USIWM_3W (USIWM0)"
.LASF261:
	.string	"__LLACCUM_MIN__ (-0X1P15LLK-0X1P15LLK)"
.LASF96:
	.string	"__UINT64_MAX__ 18446744073709551615ULL"
.LASF452:
	.string	"BITS_H_ "
.LASF619:
	.string	"DDRLED DDRB"
.LASF118:
	.string	"__UINT_FAST16_MAX__ 65535U"
.LASF197:
	.string	"__USFRACT_MAX__ 0XFFP-8UHR"
.LASF688:
	.string	"_ZN7ATTimer11getInstanceEv"
.LASF352:
	.string	"__BUILTIN_AVR_ABSHK 1"
.LASF147:
	.string	"__DBL_MAX__ double(3.40282347e+38L)"
.LASF263:
	.string	"__LLACCUM_EPSILON__ 0x1P-47LLK"
.LASF71:
	.string	"__USING_SJLJ_EXCEPTIONS__ 1"
.LASF294:
	.string	"__DA_IBIT__ 32"
.LASF214:
	.string	"__ULFRACT_FBIT__ 32"
.LASF366:
	.string	"__BUILTIN_AVR_ROUNDLK 1"
.LASF74:
	.string	"__INT_MAX__ 32767"
.LASF703:
	.string	"m_delayNops"
.LASF490:
	.string	"CS1_CLK_DIV16 CS1_0_3(5)"
.LASF374:
	.string	"__BUILTIN_AVR_COUNTLSLR 1"
.LASF340:
	.string	"__BUILTIN_AVR_SLEEP 1"
.LASF559:
	.string	"DDR(p) (p-1)"
.LASF375:
	.string	"__BUILTIN_AVR_COUNTLSLLR 1"
.LASF36:
	.string	"__WINT_TYPE__ int"
.LASF617:
	.string	"PLED PB4"
.LASF75:
	.string	"__LONG_MAX__ 2147483647L"
.LASF102:
	.string	"__INT32_C(c) c ## L"
.LASF414:
	.string	"__BUILTIN_AVR_LKBITS 1"
.LASF27:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF354:
	.string	"__BUILTIN_AVR_ABSLK 1"
.LASF273:
	.string	"__SQ_FBIT__ 31"
.LASF640:
	.string	"ssize_t"
.LASF558:
	.string	"REGDPORT_H "
.LASF471:
	.string	"PSR1 BV_(1)"
.LASF514:
	.string	"TOV1_AT 256UL"
.LASF281:
	.string	"__UHQ_FBIT__ 16"
.LASF488:
	.string	"CS1_CLK_DIV4 CS1_0_3(3)"
.LASF72:
	.string	"__SCHAR_MAX__ 127"
.LASF173:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF351:
	.string	"__BUILTIN_AVR_ABSLLR 1"
.LASF250:
	.string	"__LACCUM_IBIT__ 32"
.LASF90:
	.string	"__INT16_MAX__ 32767"
.LASF155:
	.string	"__LDBL_DIG__ 6"
.LASF113:
	.string	"__INT_FAST8_MAX__ 127"
.LASF83:
	.string	"__INTMAX_MAX__ 9223372036854775807LL"
.LASF515:
	.string	"TIMSK REGDECL(0x39)"
.LASF413:
	.string	"__BUILTIN_AVR_KBITS 1"
.LASF235:
	.string	"__USACCUM_IBIT__ 8"
.LASF705:
	.string	"m_tx"
.LASF812:
	.string	"tled2"
.LASF653:
	.string	"dataSize"
.LASF434:
	.string	"REGDECLW(r) (*REGDECL_WPTR(r))"
.LASF602:
	.string	"USICS_POSEDGE (USICS1)"
.LASF303:
	.string	"__UTA_FBIT__ 48"
.LASF172:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF206:
	.string	"__UFRACT_MIN__ 0.0UR"
.LASF721:
	.string	"enhancedGetRcvdData"
.LASF167:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF771:
	.string	"setOutput"
.LASF191:
	.string	"__SFRACT_MIN__ (-0.5HR-0.5HR)"
.LASF54:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF785:
	.string	"resetBuffers"
.LASF239:
	.string	"__ACCUM_FBIT__ 15"
.LASF362:
	.string	"__BUILTIN_AVR_ROUNDULR 1"
.LASF245:
	.string	"__UACCUM_IBIT__ 16"
.LASF633:
	.string	"long int"
.LASF120:
	.string	"__UINT_FAST64_MAX__ 18446744073709551615ULL"
.LASF673:
	.string	"_ZN14CircularBuffer13setBufferSpecEPKch"
.LASF183:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF547:
	.string	"sei() __asm__ __volatile__ (\"sei\" ::: \"memory\")"
.LASF695:
	.string	"uTick"
.LASF301:
	.string	"__UDA_FBIT__ 32"
.LASF696:
	.string	"_ZN7ATTimer5uTickEv"
.LASF86:
	.string	"__UINTMAX_C(c) c ## ULL"
.LASF436:
	.string	"SREG REGDECL(0x3F)"
.LASF50:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF309:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 1"
.LASF664:
	.string	"getData"
.LASF129:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF810:
	.string	"main"
.LASF38:
	.string	"__UINTMAX_TYPE__ long long unsigned int"
.LASF227:
	.string	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR"
.LASF64:
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
.LASF89:
	.string	"__INT8_MAX__ 127"
.LASF555:
	.string	"__CIRCBUFFDIM() ((wPtr-rPtr)&(bufferDim()-1))"
.LASF740:
	.string	"_ZN3SPI12setData2XmitERKc"
.LASF40:
	.string	"__CHAR32_TYPE__ long unsigned int"
.LASF742:
	.string	"_ZN3SPI12setByte2XmitEc"
.LASF615:
	.string	"__FNC_INLINE_MEMSET "
.LASF736:
	.string	"_ZN3SPI12setData2XmitERKi"
.LASF737:
	.string	"_ZN3SPI12setData2XmitERKj"
.LASF464:
	.string	"GTCCR REGDECL(0x2C)"
.LASF724:
	.string	"_ZN3SPI19enhancedGetRcvdDataERi"
.LASF130:
	.string	"__FLT_MAX_EXP__ 128"
.LASF17:
	.string	"__SIZEOF_LONG__ 4"
.LASF626:
	.string	"PINCS PINB"
.LASF114:
	.string	"__INT_FAST16_MAX__ 32767"
.LASF701:
	.string	"m_output"
.LASF39:
	.string	"__CHAR16_TYPE__ unsigned int"
.LASF21:
	.string	"__SIZEOF_DOUBLE__ 4"
.LASF739:
	.string	"_ZN3SPI12setData2XmitERKy"
.LASF406:
	.string	"__BUILTIN_AVR_LRBITS 1"
.LASF764:
	.string	"_ZN3SPI12_setRcvdByteEh"
.LASF557:
	.string	"SPI_H_ "
.LASF506:
	.string	"OCF1A OCF(1,0)"
.LASF642:
	.string	"OVERWRITTEN"
.LASF694:
	.string	"_ZN7ATTimer4timeEv"
.LASF179:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF566:
	.string	"PB4 BV_(4)"
.LASF784:
	.string	"_ZN3SPI7resetRxEv"
.LASF81:
	.string	"__PTRDIFF_MAX__ 32767"
.LASF453:
	.string	"BV_(b) (1<<(b))"
.LASF711:
	.string	"outputEnable"
.LASF497:
	.string	"CS1_CLK_DIV2048 CS1_0_3(0xC)"
.LASF423:
	.string	"__INT24_MAX__ 8388607L"
.LASF49:
	.string	"__UINT64_TYPE__ long long unsigned int"
.LASF629:
	.string	"uint8_t"
.LASF782:
	.string	"_ZN3SPI7resetTxEv"
.LASF330:
	.string	"__AVR_HAVE_LPMX__ 1"
.LASF484:
	.string	"CS1_0_3(n) (n)"
.LASF199:
	.string	"__FRACT_FBIT__ 15"
.LASF139:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF765:
	.string	"_ZN3SPI13_getByte2XmitEv"
.LASF5:
	.string	"__GNUC_PATCHLEVEL__ 1"
.LASF509:
	.string	"OCF0B OCF(0,1)"
.LASF828:
	.string	"blk_s"
.LASF143:
	.string	"__DBL_MIN_10_EXP__ (-37)"
.LASF468:
	.string	"COM1B0 BV_(4)"
.LASF487:
	.string	"CS1_CLK_DIV2 CS1_0_3(2)"
.LASF202:
	.string	"__FRACT_MAX__ 0X7FFFP-15R"
.LASF418:
	.string	"__BUILTIN_AVR_ULKBITS 1"
.LASF389:
	.string	"__BUILTIN_AVR_BITSR 1"
.LASF628:
	.string	"unsigned char"
.LASF230:
	.string	"__SACCUM_IBIT__ 8"
.LASF131:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF581:
	.string	"USISR REGDECL(0x0E)"
.LASF184:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF385:
	.string	"__BUILTIN_AVR_COUNTLSUK 1"
.LASF415:
	.string	"__BUILTIN_AVR_LLKBITS 1"
.LASF92:
	.string	"__INT64_MAX__ 9223372036854775807LL"
.LASF470:
	.string	"FOC1A BV_(2)"
.LASF486:
	.string	"CS1_CLK_DIV1 CS1_0_3(1)"
.LASF8:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF409:
	.string	"__BUILTIN_AVR_URBITS 1"
.LASF658:
	.string	"_ZN14CircularBuffer9overWriteEv"
.LASF463:
	.string	"REGTIM85_H_ "
.LASF755:
	.string	"txBufferDim"
.LASF80:
	.string	"__WINT_MIN__ (-__WINT_MAX__ - 1)"
.LASF55:
	.string	"__UINT_LEAST16_TYPE__ unsigned int"
.LASF277:
	.string	"__TQ_FBIT__ 127"
.LASF722:
	.string	"_ZN3SPI19enhancedGetRcvdDataEPKvh"
.LASF577:
	.string	"__USE_CHIP_USISPI_PROTOCOL__ "
.LASF283:
	.string	"__USQ_FBIT__ 32"
.LASF461:
	.string	"SELCLKPS(d) ((d<=1)?CLKPS(0):(d<=2)?CLKPS(1): (d<=4+1)?CLKPS(2):(d<=8+3)?CLKPS(3): (d<=16+7)?CLKPS(4):(d<=32+15)?CLKPS(5): (d<=64+31)?CLKPS(6):(d<=128+63)?CLKPS(7): (d<=256+127)?CLKPS(8):CLKPS(8))"
.LASF609:
	.string	"MISO PB1"
.LASF19:
	.string	"__SIZEOF_SHORT__ 2"
.LASF594:
	.string	"USIWM_DISABLED 0"
.LASF262:
	.string	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-47LLK"
.LASF308:
	.string	"__STRICT_ANSI__ 1"
.LASF510:
	.string	"TOV(n) BV_((n)+1)"
.LASF22:
	.string	"__SIZEOF_LONG_DOUBLE__ 4"
.LASF746:
	.string	"_ZN3SPI20enhancedSetData2XmitERKh"
.LASF747:
	.string	"_ZN3SPI20enhancedSetData2XmitERKi"
.LASF748:
	.string	"_ZN3SPI20enhancedSetData2XmitERKj"
.LASF321:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF749:
	.string	"_ZN3SPI20enhancedSetData2XmitERKm"
.LASF676:
	.string	"char"
.LASF300:
	.string	"__USA_IBIT__ 16"
.LASF537:
	.ascii	"RCLK_DIV(d) ((d<=1)?1UL:(d<=2)?2UL"
	.string	": (d<=4+1)?4UL:(d<=8+3)?8UL: (d<=16+7)?16UL:(d<=32+15)?32UL: (d<=64+31)?64UL:(d<=128+63)?128UL: (d<=256+127)?256UL:(d<=512+255)?512UL: (d<=1024+511)?1024UL:(d<=2048+1023)?2048UL: (d<=4096+2047)?4096UL:(d<=8192+4095)?8192UL: (d<=16384+8191)?16384UL:16384UL)"
.LASF70:
	.string	"__GXX_ABI_VERSION 1002"
.LASF750:
	.string	"_ZN3SPI20enhancedSetData2XmitERKy"
.LASF456:
	.string	"___tiny85 "
.LASF384:
	.string	"__BUILTIN_AVR_COUNTLSUHK 1"
.LASF738:
	.string	"_ZN3SPI12setData2XmitERKm"
.LASF422:
	.string	"__BUILTIN_AVR_COUNTLSFX 1"
.LASF576:
	.string	"USI_H "
.LASF289:
	.string	"__HA_FBIT__ 7"
.LASF759:
	.string	"activeSlave"
.LASF731:
	.string	"rxBufferDim"
.LASF295:
	.string	"__TA_FBIT__ 47"
.LASF574:
	.string	"PIN_from_SET(dport) PINB"
.LASF779:
	.string	"setMaster"
.LASF195:
	.string	"__USFRACT_IBIT__ 0"
.LASF446:
	.string	"H_TYPES_H_ "
.LASF196:
	.string	"__USFRACT_MIN__ 0.0UHR"
.LASF735:
	.string	"_ZN3SPI12setData2XmitEPKvh"
.LASF531:
	.string	"TCNT1 REGDECL(0x2F)"
.LASF513:
	.string	"TOV0_AT 256UL"
.LASF815:
	.string	"_GLOBAL__sub_D_timer"
.LASF386:
	.string	"__BUILTIN_AVR_COUNTLSULK 1"
.LASF793:
	.string	"times"
.LASF753:
	.string	"get2XmitDataSize"
.LASF336:
	.string	"__BUILTIN_AVR_NOP 1"
.LASF539:
	.string	"CLK_KHz 16000UL"
.LASF540:
	.string	"CLKPS_DIV RCLKPS(1UL)"
.LASF744:
	.string	"_ZN3SPI20enhancedSetData2XmitEPKvh"
.LASF778:
	.string	"_ZNK3SPI6masterEv"
.LASF637:
	.string	"long long int"
.LASF146:
	.string	"__DBL_DECIMAL_DIG__ 9"
.LASF562:
	.string	"PORTB REGDECL(__PORTADDRB)"
.LASF455:
	.string	"__AVR_Selected "
.LASF679:
	.string	"m_startTime"
.LASF99:
	.string	"__INT_LEAST16_MAX__ 32767"
.LASF616:
	.string	"__FNC_MEMSET() __FNC_INLINE_MEMSET void * _memset(void *d,char s,size_t q) { do { --q; *((uint8_t *)d+q)=s; } while(q); return d; }"
.LASF178:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF814:
	.string	"_GLOBAL__sub_I_timer"
.LASF768:
	.string	"_ZNK3SPI7_outputEv"
.LASF669:
	.string	"_ZN14CircularBuffer7putDataEPKchb"
.LASF110:
	.string	"__UINT32_C(c) c ## UL"
.LASF327:
	.string	"__AVR_ARCH__ 25"
.LASF589:
	.string	"USICR REGDECL(0x0D)"
.LASF404:
	.string	"__BUILTIN_AVR_HRBITS 1"
.LASF473:
	.string	"TCCR0A REGDECL(0x2A)"
.LASF823:
	.string	"putres_e"
.LASF475:
	.string	"TCNT0 REGDECL(0x32)"
.LASF651:
	.string	"CircularBuffer"
.LASF532:
	.string	"OCR1A REGDECL(0x2E)"
.LASF136:
	.string	"__FLT_DENORM_MIN__ 1.40129846e-45F"
.LASF776:
	.string	"_ZN3SPI12setDelayNopsERKj"
.LASF795:
	.string	"blk_st"
.LASF570:
	.string	"PB0 BV_(0)"
.LASF314:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 1"
.LASF551:
	.string	"lds(out,mem) __asm__ __volatile__ (\"lds %0,%1\" : \"=d\" (out) : \"i\" (&mem));"
.LASF272:
	.string	"__HQ_IBIT__ 0"
.LASF460:
	.string	"CLKPS(n) (n)"
.LASF318:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF499:
	.string	"CS1_CLK_DIV8192 CS1_0_3(0xE)"
.LASF426:
	.string	"__ELF__ 1"
.LASF567:
	.string	"PB3 BV_(3)"
.LASF78:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF166:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF586:
	.string	"USICNT_0_3 (0xF)"
.LASF442:
	.string	"SREG_H BV_(5)"
.LASF427:
	.string	"CIRCBUFF_POW2DIM 1"
.LASF580:
	.string	"USIBR REGDECL(0x10)"
.LASF505:
	.string	"OCF(c,n) BV_(3+(c)*2+(1-(n)))"
.LASF813:
	.string	"csStatus"
.LASF159:
	.string	"__LDBL_MAX_10_EXP__ 38"
.LASF672:
	.string	"_ZN14CircularBuffer5resetEv"
.LASF714:
	.string	"_ZN3SPI15setRxBufferSpecEPKvh"
.LASF88:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF466:
	.string	"PWM1B BV_(6)"
.LASF246:
	.string	"__UACCUM_MIN__ 0.0UK"
.LASF597:
	.string	"USIWM_2W_2 (USIWM1|USIWM0)"
.LASF403:
	.string	"__BUILTIN_AVR_BITSULLK 1"
.LASF662:
	.string	"_ZN14CircularBuffer7getByteEv"
.LASF398:
	.string	"__BUILTIN_AVR_BITSLK 1"
.LASF424:
	.string	"__INT24_MIN__ (-__INT24_MAX__-1)"
.LASF799:
	.string	"setup"
.LASF501:
	.ascii	"SELCS1(d) ((d<=1)?CS1_CLK_DIV1:(d<=2)?CS1_CLK_DIV2: (d<=4+1)"
	.ascii	"?CS1_CLK_DIV4:(d<=8+3)?CS1_CLK_DIV8: (d<=16+7)?CS1_CLK_DIV16"
	.ascii	":(d<=32+15)?CS1_CLK_DIV32: (d<=64+31)?CS1_CLK_DIV64:(d<="
	.string	"128+63)?CS1_CLK_DIV128: (d<=256+127)?CS1_CLK_DIV256:(d<=512+255)?CS1_CLK_DIV512: (d<=1024+511)?CS1_CLK_DIV1024:(d<=2048+1023)?CS1_CLK_DIV2048: (d<=4096+2047)?CS1_CLK_DIV4096:(d<=8192+4095)?CS1_CLK_DIV8192: (d<=16384+8191)?CS1_CLK_DIV16384:CS1_CLK_DIV16384)"
.LASF807:
	.string	"cmdb"
.LASF260:
	.string	"__LLACCUM_IBIT__ 16"
.LASF151:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF644:
	.string	"m_size"
.LASF697:
	.string	"_ZN7ATTimer5resetEv"
.LASF117:
	.string	"__UINT_FAST8_MAX__ 255"
.LASF47:
	.string	"__UINT16_TYPE__ unsigned int"
.LASF1:
	.string	"__cplusplus 199711L"
.LASF181:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF198:
	.string	"__USFRACT_EPSILON__ 0x1P-8UHR"
.LASF116:
	.string	"__INT_FAST64_MAX__ 9223372036854775807LL"
.LASF13:
	.string	"__OPTIMIZE_SIZE__ 1"
.LASF194:
	.string	"__USFRACT_FBIT__ 8"
.LASF162:
	.string	"__LDBL_MIN__ 1.17549435e-38L"
.LASF268:
	.string	"__ULLACCUM_EPSILON__ 0x1P-48ULLK"
.LASF655:
	.string	"_ZN14CircularBuffer8dataSizeEv"
.LASF706:
	.string	"m_spiThis"
.LASF306:
	.string	"__USER_LABEL_PREFIX__ "
.LASF335:
	.string	"__WITH_AVRLIBC__ 1"
.LASF543:
	.string	"TICK_ns_10th ((unsigned long)(TICKf_ns*10))"
.LASF674:
	.string	"evalBuffDim"
.LASF683:
	.string	"m_baseTime"
.LASF493:
	.string	"CS1_CLK_DIV128 CS1_0_3(8)"
.LASF9:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF132:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF525:
	.string	"TOIE0 TOIE(0)"
.LASF575:
	.string	"PORTbit_from_SET(dport) (uint8_t)dport"
.LASF440:
	.string	"SREG_V BV_(3)"
.LASF709:
	.string	"enabled"
.LASF569:
	.string	"PB1 BV_(1)"
.LASF31:
	.string	"__SIZEOF_POINTER__ 2"
.LASF792:
	.string	"timeled"
.LASF652:
	.string	"~CircularBuffer"
.LASF211:
	.string	"__LFRACT_MIN__ (-0.5LR-0.5LR)"
.LASF668:
	.string	"putData"
.LASF326:
	.string	"__AVR__ 1"
.LASF138:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF242:
	.string	"__ACCUM_MAX__ 0X7FFFFFFFP-15K"
.LASF797:
	.string	"__priority"
.LASF758:
	.string	"_ZN3SPI10sendMasterEh"
.LASF320:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF831:
	.string	"execCmd"
.LASF635:
	.string	"long unsigned int"
.LASF292:
	.string	"__SA_IBIT__ 16"
.LASF707:
	.string	"~SPI"
.LASF3:
	.string	"__GNUC__ 4"
.LASF170:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF611:
	.string	"SCK PB2"
.LASF163:
	.string	"__LDBL_EPSILON__ 1.19209290e-7L"
.LASF329:
	.string	"__AVR_HAVE_MOVW__ 1"
.LASF448:
	.string	"UNUSED(x) (void)(x)"
.LASF536:
	.string	"TIMING_H "
.LASF203:
	.string	"__FRACT_EPSILON__ 0x1P-15R"
.LASF400:
	.string	"__BUILTIN_AVR_BITSUHK 1"
.LASF104:
	.string	"__INT64_C(c) c ## LL"
.LASF612:
	.string	"FNCLIB_H "
.LASF357:
	.string	"__BUILTIN_AVR_ROUNDR 1"
.LASF565:
	.string	"PB5 BV_(5)"
.LASF798:
	.string	"this"
.LASF333:
	.string	"__AVR_HAVE_SPH__ 1"
.LASF472:
	.string	"PSR0 BV_(0)"
.LASF347:
	.string	"__BUILTIN_AVR_FLASH_SEGMENT 1"
.LASF545:
	.string	"FNASM_H_ "
.LASF733:
	.string	"setTxBufferSpec"
.LASF112:
	.string	"__UINT64_C(c) c ## ULL"
.LASF57:
	.string	"__UINT_LEAST64_TYPE__ long long unsigned int"
.LASF187:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF311:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 1"
.LASF360:
	.string	"__BUILTIN_AVR_ROUNDUHR 1"
.LASF504:
	.string	"TIFR0 TIFR"
.LASF10:
	.string	"__ATOMIC_RELEASE 3"
.LASF402:
	.string	"__BUILTIN_AVR_BITSULK 1"
.LASF119:
	.string	"__UINT_FAST32_MAX__ 4294967295UL"
.LASF126:
	.string	"__FLT_MANT_DIG__ 24"
.LASF367:
	.string	"__BUILTIN_AVR_ROUNDLLK 1"
.LASF249:
	.string	"__LACCUM_FBIT__ 31"
.LASF450:
	.string	"_mSec(n) ((n)*1000UL)"
.LASF14:
	.string	"__OPTIMIZE__ 1"
.LASF660:
	.string	"_ZN14CircularBuffer9bufferDimEv"
.LASF454:
	.string	"SETBITS(s,bv,m) (((s) & ~(m)) | ((bv) & (m)))"
.LASF527:
	.string	"LSM BV_(7)"
.LASF819:
	.string	"_strntoll"
.LASF66:
	.string	"__INTPTR_TYPE__ int"
.LASF225:
	.string	"__ULLFRACT_IBIT__ 0"
.LASF371:
	.string	"__BUILTIN_AVR_ROUNDULLK 1"
.LASF713:
	.string	"setRxBufferSpec"
.LASF656:
	.string	"_ZN14CircularBuffer9freeSpaceEv"
.LASF613:
	.string	"__FNC_INLINE_MEMCPY "
.LASF647:
	.string	"wPtr"
.LASF621:
	.string	"DDRDEB DDRB"
.LASF405:
	.string	"__BUILTIN_AVR_RBITS 1"
.LASF494:
	.string	"CS1_CLK_DIV256 CS1_0_3(9)"
.LASF796:
	.string	"__initialize_p"
.LASF244:
	.string	"__UACCUM_FBIT__ 16"
.LASF356:
	.string	"__BUILTIN_AVR_ROUNDHR 1"
.LASF208:
	.string	"__UFRACT_EPSILON__ 0x1P-16UR"
.LASF95:
	.string	"__UINT32_MAX__ 4294967295UL"
.LASF542:
	.string	"TICKf_ns (CLKPS_DIV*1000000.0/CLK_KHz)"
.LASF280:
	.string	"__UQQ_IBIT__ 0"
.LASF663:
	.string	"_ZN14CircularBuffer7getByteERc"
.LASF316:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 1"
.LASF256:
	.string	"__ULACCUM_MIN__ 0.0ULK"
.LASF381:
	.string	"__BUILTIN_AVR_COUNTLSK 1"
.LASF334:
	.string	"__AVR_SFR_OFFSET__ 0x20"
.LASF803:
	.string	"_Z5blinkmii"
.LASF824:
	.string	"_ZN7ATTimer8timerISREv"
.LASF125:
	.string	"__FLT_RADIX__ 2"
.LASF348:
	.string	"__BUILTIN_AVR_ABSHR 1"
.LASF156:
	.string	"__LDBL_MIN_EXP__ (-125)"
.LASF528:
	.string	"PCKE BV_(2)"
.LASF763:
	.string	"_getByte2Xmit"
.LASF109:
	.string	"__UINT_LEAST32_MAX__ 4294967295UL"
.LASF591:
	.string	"USIOIE BV_(6)"
.LASF82:
	.string	"__SIZE_MAX__ 65535U"
.LASF430:
	.string	"REGMACROS_H "
.LASF741:
	.string	"setByte2Xmit"
.LASF358:
	.string	"__BUILTIN_AVR_ROUNDLR 1"
.LASF393:
	.string	"__BUILTIN_AVR_BITSUR 1"
.LASF458:
	.string	"CLKPR REGDECL(0x26)"
.LASF6:
	.string	"__VERSION__ \"4.8.1\""
.LASF476:
	.string	"OCR0A REGDECL(0x29)"
.LASF290:
	.string	"__HA_IBIT__ 8"
.LASF317:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 1"
.LASF648:
	.string	"overflow"
.LASF624:
	.string	"PORTCS PORTB"
.LASF328:
	.string	"__AVR_ATtiny85__ 1"
.LASF350:
	.string	"__BUILTIN_AVR_ABSLR 1"
.LASF157:
	.string	"__LDBL_MIN_10_EXP__ (-37)"
.LASF45:
	.string	"__INT64_TYPE__ long long int"
.LASF209:
	.string	"__LFRACT_FBIT__ 31"
.LASF24:
	.string	"__CHAR_BIT__ 8"
.LASF429:
	.string	"REGGENERAL_H "
.LASF441:
	.string	"SREG_S BV_(4)"
.LASF443:
	.string	"SREG_T BV_(6)"
.LASF817:
	.string	"ledtime"
.LASF627:
	.string	"signed char"
.LASF396:
	.string	"__BUILTIN_AVR_BITSHK 1"
.LASF816:
	.string	"timer"
.LASF708:
	.string	"_ZN3SPI5beginEPKvhS1_hbj"
.LASF207:
	.string	"__UFRACT_MAX__ 0XFFFFP-16UR"
.LASF604:
	.string	"USICLK BV_(1)"
.LASF48:
	.string	"__UINT32_TYPE__ long unsigned int"
.LASF297:
	.string	"__UHA_FBIT__ 8"
.LASF689:
	.string	"udelay"
.LASF29:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF680:
	.string	"myinstance"
.LASF35:
	.string	"__WCHAR_TYPE__ int"
.LASF723:
	.string	"_ZN3SPI19enhancedGetRcvdDataERc"
.LASF87:
	.string	"__SIG_ATOMIC_MAX__ 127"
.LASF725:
	.string	"_ZN3SPI19enhancedGetRcvdDataERh"
.LASF519:
	.string	"OCIE1A OCIE(1,0)"
.LASF726:
	.string	"_ZN3SPI19enhancedGetRcvdDataERj"
.LASF590:
	.string	"USISIE BV_(7)"
.LASF204:
	.string	"__UFRACT_FBIT__ 16"
.LASF727:
	.string	"_ZN3SPI19enhancedGetRcvdDataERm"
.LASF285:
	.string	"__UDQ_FBIT__ 64"
.LASF821:
	.string	"../sblk85.cpp"
.LASF489:
	.string	"CS1_CLK_DIV8 CS1_0_3(4)"
.LASF728:
	.string	"_ZN3SPI19enhancedGetRcvdDataERy"
.LASF592:
	.string	"USIWM0 BV_(4)"
.LASF670:
	.string	"reset"
.LASF607:
	.string	"DDRUSI DDRB"
.LASF548:
	.string	"nop() __asm__ __volatile__ (\"nop\" ::)"
.LASF632:
	.string	"unsigned int"
.LASF60:
	.string	"__INT_FAST32_TYPE__ long int"
.LASF520:
	.string	"OCIE1B OCIE(1,1)"
.LASF491:
	.string	"CS1_CLK_DIV32 CS1_0_3(6)"
.LASF128:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF124:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF437:
	.string	"SREG_C BV_(0)"
.LASF417:
	.string	"__BUILTIN_AVR_UKBITS 1"
.LASF667:
	.string	"_ZN14CircularBuffer7putByteEcb"
.LASF479:
	.string	"TCCR1B TCCR1"
.LASF127:
	.string	"__FLT_DIG__ 6"
.LASF248:
	.string	"__UACCUM_EPSILON__ 0x1P-16UK"
.LASF379:
	.string	"__BUILTIN_AVR_COUNTLSULLR 1"
.LASF772:
	.string	"_ZN3SPI9setOutputEb"
.LASF123:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF474:
	.string	"TCCR0B REGDECL(0x33)"
.LASF805:
	.string	"spiCommSlv"
.LASF826:
	.string	"_spiThis"
.LASF767:
	.string	"_output"
.LASF564:
	.string	"PINB REGDECL(PIN(__PORTADDRB))"
.LASF279:
	.string	"__UQQ_FBIT__ 8"
.LASF176:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF247:
	.string	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK"
.LASF783:
	.string	"resetRx"
.LASF324:
	.string	"__SIZEOF_PTRDIFF_T__ 2"
.LASF212:
	.string	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR"
.LASF346:
	.string	"__BUILTIN_AVR_INSERT_BITS 1"
.LASF0:
	.string	"__STDC__ 1"
.LASF134:
	.string	"__FLT_MIN__ 1.17549435e-38F"
.LASF30:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF777:
	.string	"master"
.LASF46:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF788:
	.string	"_ZN3SPI15setTxBufferSpecEPKvh"
.LASF79:
	.string	"__WINT_MAX__ 32767"
.LASF28:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF182:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF299:
	.string	"__USA_FBIT__ 16"
.LASF462:
	.string	"OSCCAL REGDECL(0x31)"
.LASF69:
	.string	"__DEPRECATED 1"
.LASF121:
	.string	"__INTPTR_MAX__ 32767"
.LASF457:
	.string	"__AVR_Selected"
.LASF391:
	.string	"__BUILTIN_AVR_BITSLLR 1"
.LASF720:
	.string	"_ZN3SPI11getRcvdByteERc"
.LASF310:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 1"
.LASF521:
	.string	"OCIE0A OCIE(0,0)"
.LASF213:
	.string	"__LFRACT_EPSILON__ 0x1P-31LR"
.LASF325:
	.string	"__AVR 1"
.LASF342:
	.string	"__BUILTIN_AVR_FMUL 1"
.LASF444:
	.string	"SREG_I BV_(7)"
.LASF419:
	.string	"__BUILTIN_AVR_ULLKBITS 1"
.LASF482:
	.string	"COM1A1 BV_(5)"
.LASF144:
	.string	"__DBL_MAX_EXP__ 128"
.LASF97:
	.string	"__INT_LEAST8_MAX__ 127"
.LASF716:
	.string	"_ZN3SPI11getRcvdDataEPKvh"
.LASF598:
	.string	"USICS1 BV_(3)"
.LASF343:
	.string	"__BUILTIN_AVR_FMULS 1"
.LASF522:
	.string	"OCIE0B OCIE(0,1)"
.LASF516:
	.string	"TIMSK1 TIMSK"
.LASF25:
	.string	"__BIGGEST_ALIGNMENT__ 1"
.LASF168:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF702:
	.string	"m_activeSlave"
.LASF293:
	.string	"__DA_FBIT__ 31"
.LASF582:
	.string	"USISIF BV_(7)"
.LASF677:
	.string	"bool"
.LASF825:
	.string	"_ZN3SPI3isrEv"
.LASF811:
	.string	"tled"
.LASF730:
	.string	"_ZN3SPI15getRcvdDataSizeEv"
.LASF762:
	.string	"_setRcvdByte"
.LASF369:
	.string	"__BUILTIN_AVR_ROUNDUK 1"
.LASF775:
	.string	"setDelayNops"
.LASF659:
	.string	"bufferDim"
.LASF377:
	.string	"__BUILTIN_AVR_COUNTLSUR 1"
.LASF111:
	.string	"__UINT_LEAST64_MAX__ 18446744073709551615ULL"
.LASF717:
	.string	"_ZN3SPI11getRcvdDataERc"
.LASF445:
	.string	"REGTIMER_H_ "
.LASF603:
	.string	"USICS_NEGEDGE (USICS1|USICS0)"
.LASF578:
	.string	"__USE_CHIP_USISPI_PROTOCOL__"
.LASF205:
	.string	"__UFRACT_IBIT__ 0"
.LASF781:
	.string	"resetTx"
.LASF16:
	.string	"__SIZEOF_INT__ 2"
.LASF524:
	.string	"TOIE1 TOIE(1)"
.LASF98:
	.string	"__INT8_C(c) c"
.LASF210:
	.string	"__LFRACT_IBIT__ 0"
.LASF77:
	.string	"__WCHAR_MAX__ 32767"
.LASF193:
	.string	"__SFRACT_EPSILON__ 0x1P-7HR"
.LASF319:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 1"
.LASF690:
	.string	"_ZN7ATTimer6udelayEm"
.LASF804:
	.string	"usec"
.LASF312:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 1"
.LASF794:
	.string	"msec"
.LASF91:
	.string	"__INT32_MAX__ 2147483647L"
.LASF685:
	.string	"begin"
.LASF704:
	.string	"m_rx"
.LASF549:
	.string	"reti() __asm__ __volatile__ (\"reti\" ::)"
.LASF760:
	.string	"_ZNK3SPI11activeSlaveEv"
.LASF380:
	.string	"__BUILTIN_AVR_COUNTLSHK 1"
.LASF477:
	.string	"OCR0B REGDECL(0x28)"
.LASF579:
	.string	"USIDR REGDECL(0xF)"
.LASF790:
	.string	"_enableOvfInterrupt"
.LASF122:
	.string	"__UINTPTR_MAX__ 65535U"
.LASF568:
	.string	"PB2 BV_(2)"
.LASF560:
	.string	"PIN(p) (p-2)"
.LASF165:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF359:
	.string	"__BUILTIN_AVR_ROUNDLLR 1"
.LASF265:
	.string	"__ULLACCUM_IBIT__ 16"
.LASF322:
	.string	"__SIZEOF_WCHAR_T__ 2"
.LASF241:
	.string	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)"
.LASF416:
	.string	"__BUILTIN_AVR_UHKBITS 1"
.LASF52:
	.string	"__INT_LEAST32_TYPE__ long int"
.LASF649:
	.string	"overwritten"
.LASF135:
	.string	"__FLT_EPSILON__ 1.19209290e-7F"
.LASF158:
	.string	"__LDBL_MAX_EXP__ 128"
.LASF200:
	.string	"__FRACT_IBIT__ 0"
.LASF421:
	.string	"__BUILTIN_AVR_ROUNDFX 1"
.LASF376:
	.string	"__BUILTIN_AVR_COUNTLSUHR 1"
.LASF382:
	.string	"__BUILTIN_AVR_COUNTLSLK 1"
.LASF26:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF383:
	.string	"__BUILTIN_AVR_COUNTLSLLK 1"
.LASF175:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF639:
	.string	"long long unsigned int"
.LASF596:
	.string	"USIWM_2W_1 (USIWM1)"
.LASF485:
	.string	"CS1_STOP CS1_0_3(0)"
.LASF770:
	.string	"_ZN3SPI14setActiveSlaveERKh"
.LASF255:
	.string	"__ULACCUM_IBIT__ 32"
.LASF754:
	.string	"_ZN3SPI16get2XmitDataSizeEv"
.LASF34:
	.string	"__PTRDIFF_TYPE__ int"
.LASF822:
	.string	"/home/sergio/workspace-a/mblk84/sblk85"
.LASF553:
	.string	"CIRCBUFF_H_ "
.LASF275:
	.string	"__DQ_FBIT__ 63"
.LASF712:
	.string	"_ZN3SPI12outputEnableEb"
.LASF600:
	.string	"USICS_NOCLK 0"
.LASF631:
	.string	"uint16_t"
.LASF304:
	.string	"__UTA_IBIT__ 16"
.LASF282:
	.string	"__UHQ_IBIT__ 0"
.LASF761:
	.string	"timerISR"
.LASF59:
	.string	"__INT_FAST16_TYPE__ int"
.LASF378:
	.string	"__BUILTIN_AVR_COUNTLSULR 1"
.LASF601:
	.string	"USICS_T0CMP (USICS0)"
.LASF231:
	.string	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)"
.LASF217:
	.string	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR"
.LASF508:
	.string	"OCF0A OCF(0,0)"
.LASF252:
	.string	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK"
.LASF355:
	.string	"__BUILTIN_AVR_ABSLLK 1"
.LASF467:
	.string	"COM1B1 BV_(5)"
.LASF164:
	.string	"__LDBL_DENORM_MIN__ 1.40129846e-45L"
.LASF643:
	.string	"NOT_WRITTEN"
.LASF287:
	.string	"__UTQ_FBIT__ 128"
.LASF684:
	.string	"~ATTimer"
.LASF15:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF481:
	.string	"PWM1A BV_(6)"
.LASF341:
	.string	"__BUILTIN_AVR_SWAP 1"
.LASF345:
	.string	"__BUILTIN_AVR_DELAY_CYCLES 1"
.LASF496:
	.string	"CS1_CLK_DIV1024 CS1_0_3(0xB)"
.LASF666:
	.string	"putByte"
.LASF141:
	.string	"__DBL_DIG__ 6"
.LASF257:
	.string	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK"
.LASF267:
	.string	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-48ULLK"
.LASF743:
	.string	"enhancedSetData2Xmit"
.LASF691:
	.string	"baseTime"
.LASF216:
	.string	"__ULFRACT_MIN__ 0.0ULR"
.LASF161:
	.string	"__LDBL_MAX__ 3.40282347e+38L"
.LASF276:
	.string	"__DQ_IBIT__ 0"
.LASF387:
	.string	"__BUILTIN_AVR_COUNTLSULLK 1"
.LASF44:
	.string	"__INT32_TYPE__ long int"
.LASF606:
	.string	"PORTUSI PORTB"
.LASF827:
	.string	"_ZN3SPI8_spiThisEv"
.LASF533:
	.string	"OCR1B REGDECL(0x2B)"
.LASF53:
	.string	"__INT_LEAST64_TYPE__ long long int"
.LASF103:
	.string	"__INT_LEAST64_MAX__ 9223372036854775807LL"
.LASF529:
	.string	"PLLE BV_(1)"
.LASF671:
	.string	"setBufferSpec"
.LASF288:
	.string	"__UTQ_IBIT__ 0"
.LASF339:
	.string	"__BUILTIN_AVR_WDR 1"
.LASF291:
	.string	"__SA_FBIT__ 15"
.LASF420:
	.string	"__BUILTIN_AVR_ABSFX 1"
.LASF757:
	.string	"sendMaster"
.LASF608:
	.string	"PINUSI PINB"
.LASF401:
	.string	"__BUILTIN_AVR_BITSUK 1"
.LASF800:
	.string	"wait_usec"
.LASF530:
	.string	"PLOCK BV_(0)"
.LASF270:
	.string	"__QQ_IBIT__ 0"
.LASF820:
	.string	"GNU C++ 4.8.1 -mmcu=attiny85 -g3 -Os -ansi -ffunction-sections -fdata-sections -fno-threadsafe-statics -fno-rtti -fno-enforce-eh-specs -fno-exceptions"
.LASF801:
	.string	"blink"
.LASF693:
	.string	"time"
.LASF85:
	.string	"__UINTMAX_MAX__ 18446744073709551615ULL"
.LASF773:
	.string	"delayNops"
.LASF284:
	.string	"__USQ_IBIT__ 0"
.LASF395:
	.string	"__BUILTIN_AVR_BITSULLR 1"
.LASF56:
	.string	"__UINT_LEAST32_TYPE__ long unsigned int"
.LASF657:
	.string	"overWrite"
.LASF4:
	.string	"__GNUC_MINOR__ 8"
.LASF37:
	.string	"__INTMAX_TYPE__ long long int"
.LASF315:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 1"
.LASF101:
	.string	"__INT_LEAST32_MAX__ 2147483647L"
.LASF478:
	.string	"TCCR1 REGDECL(0x30)"
.LASF710:
	.string	"_ZN3SPI7enabledEb"
.LASF687:
	.string	"getInstance"
.LASF480:
	.string	"CTC1 BV_(7)"
.LASF238:
	.string	"__USACCUM_EPSILON__ 0x1P-8UHK"
.LASF153:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF222:
	.string	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR"
.LASF232:
	.string	"__SACCUM_MAX__ 0X7FFFP-7HK"
.LASF349:
	.string	"__BUILTIN_AVR_ABSR 1"
.LASF67:
	.string	"__UINTPTR_TYPE__ unsigned int"
.LASF599:
	.string	"USICS0 BV_(2)"
.LASF305:
	.string	"__REGISTER_PREFIX__ "
.LASF188:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF32:
	.string	"__GNUG__ 4"
.LASF218:
	.string	"__ULFRACT_EPSILON__ 0x1P-32ULR"
.LASF774:
	.string	"_ZNK3SPI9delayNopsEv"
.LASF678:
	.string	"ATTimer"
.LASF23:
	.string	"__SIZEOF_SIZE_T__ 2"
.LASF698:
	.string	"sizetype"
.LASF185:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF259:
	.string	"__LLACCUM_FBIT__ 47"
.LASF751:
	.string	"masterSetActiveSlave2Xmit"
.LASF756:
	.string	"_ZN3SPI11txBufferDimEv"
.LASF789:
	.string	"_ZN3SPI11_setSpiThisEPS_"
.LASF240:
	.string	"__ACCUM_IBIT__ 16"
.LASF62:
	.string	"__UINT_FAST8_TYPE__ unsigned char"
.LASF397:
	.string	"__BUILTIN_AVR_BITSK 1"
.LASF719:
	.string	"_ZN3SPI11getRcvdByteEv"
.LASF483:
	.string	"COM1A0 BV_(4)"
.LASF638:
	.string	"uint64_t"
.LASF302:
	.string	"__UDA_IBIT__ 32"
.LASF745:
	.string	"_ZN3SPI20enhancedSetData2XmitERKc"
.LASF699:
	.string	"m_master"
.LASF332:
	.string	"__AVR_HAVE_16BIT_SP__ 1"
.LASF7:
	.string	"__ATOMIC_RELAXED 0"
.LASF435:
	.string	"REGDECL(r) REGDECLB(r)"
.LASF630:
	.string	"int16_t"
.LASF802:
	.string	"_Z5setupv"
.LASF832:
	.string	"_Z7execCmdPc"
.LASF498:
	.string	"CS1_CLK_DIV4096 CS1_0_3(0xD)"
.LASF107:
	.string	"__UINT_LEAST16_MAX__ 65535U"
.LASF20:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF73:
	.string	"__SHRT_MAX__ 32767"
.LASF809:
	.string	"inithw"
.LASF431:
	.string	"REGDECL_WPTR(r) (volatile uint16_t * volatile)((r)+((((int)r)<0x60)?0x20:0))"
.LASF511:
	.string	"TOV1 TOV(1)"
.LASF392:
	.string	"__BUILTIN_AVR_BITSUHR 1"
.LASF572:
	.string	"PORT_from_SET(dport) PORTB"
.LASF353:
	.string	"__BUILTIN_AVR_ABSK 1"
.LASF296:
	.string	"__TA_IBIT__ 16"
.LASF502:
	.string	"TIFR REGDECL(0x38)"
.LASF399:
	.string	"__BUILTIN_AVR_BITSLLK 1"
.LASF605:
	.string	"USITC BV_(0)"
.LASF512:
	.string	"TOV0 TOV(0)"
.LASF68:
	.string	"__GXX_WEAK__ 1"
.LASF269:
	.string	"__QQ_FBIT__ 7"
.LASF228:
	.string	"__ULLFRACT_EPSILON__ 0x1P-64ULLR"
.LASF150:
	.string	"__DBL_DENORM_MIN__ double(1.40129846e-45L)"
.LASF171:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF394:
	.string	"__BUILTIN_AVR_BITSULR 1"
.LASF323:
	.string	"__SIZEOF_WINT_T__ 2"
.LASF41:
	.string	"__SIG_ATOMIC_TYPE__ char"
.LASF344:
	.string	"__BUILTIN_AVR_FMULSU 1"
.LASF221:
	.string	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)"
.LASF251:
	.string	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)"
.LASF583:
	.string	"USIOIF BV_(6)"
.LASF234:
	.string	"__USACCUM_FBIT__ 8"
.LASF169:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF266:
	.string	"__ULLACCUM_MIN__ 0.0ULLK"
.LASF459:
	.string	"CLKPCE BV_(7)"
.LASF808:
	.string	"toggleLed"
.LASF438:
	.string	"SREG_Z BV_(1)"
.LASF363:
	.string	"__BUILTIN_AVR_ROUNDULLR 1"
.LASF65:
	.string	"__UINT_FAST64_TYPE__ long long unsigned int"
.LASF625:
	.string	"DDRCS DDRB"
.LASF786:
	.string	"_ZN3SPI12resetBuffersEv"
.LASF140:
	.string	"__DBL_MANT_DIG__ 24"
.LASF449:
	.string	"_uSec(n) (n)"
.LASF145:
	.string	"__DBL_MAX_10_EXP__ 38"
.LASF410:
	.string	"__BUILTIN_AVR_ULRBITS 1"
.LASF715:
	.string	"getRcvdData"
.LASF226:
	.string	"__ULLFRACT_MIN__ 0.0ULLR"
.LASF286:
	.string	"__UDQ_IBIT__ 0"
.LASF220:
	.string	"__LLFRACT_IBIT__ 0"
.LASF546:
	.string	"cli() __asm__ __volatile__ (\"cli\" ::: \"memory\")"
.LASF373:
	.string	"__BUILTIN_AVR_COUNTLSR 1"
.LASF634:
	.string	"uint32_t"
.LASF500:
	.string	"CS1_CLK_DIV16384 CS1_0_3(0xF)"
.LASF407:
	.string	"__BUILTIN_AVR_LLRBITS 1"
.LASF469:
	.string	"FOC1B BV_(3)"
.LASF43:
	.string	"__INT16_TYPE__ int"
.LASF618:
	.string	"PORTLED PORTB"
.LASF233:
	.string	"__SACCUM_EPSILON__ 0x1P-7HK"
.LASF425:
	.string	"__UINT24_MAX__ 16777215UL"
.LASF149:
	.string	"__DBL_EPSILON__ double(1.19209290e-7L)"
.LASF63:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF432:
	.string	"REGDECL_BPTR(r) (volatile uint8_t * volatile)((r)+((((int)r)<0x60)?0x20:0))"
.LASF298:
	.string	"__UHA_IBIT__ 8"
.LASF243:
	.string	"__ACCUM_EPSILON__ 0x1P-15K"
.LASF258:
	.string	"__ULACCUM_EPSILON__ 0x1P-32ULK"
.LASF563:
	.string	"DDRB REGDECL(DDR(__PORTADDRB))"
.LASF734:
	.string	"setData2Xmit"
.LASF561:
	.string	"__PORTADDRB 0x18"
.LASF686:
	.string	"_ZN7ATTimer5beginEv"
.LASF791:
	.string	"_ZN3SPI19_enableOvfInterruptEv"
.LASF614:
	.string	"__FNC_MEMCPY() __FNC_INLINE_MEMCPY void * _memcpy(void *d,void *s,size_t q) { do { --q; *((uint8_t *)d+q)=*((uint8_t *)s+q); } while(q); return d; }"
.LASF573:
	.string	"DDR_from_SET(dport) DDRB"
.LASF219:
	.string	"__LLFRACT_FBIT__ 63"
.LASF433:
	.string	"REGDECLB(r) (*REGDECL_BPTR(r))"
.LASF58:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF780:
	.string	"_ZN3SPI9setMasterEb"
.LASF556:
	.string	"ATTIMER_H_ "
.LASF538:
	.string	"RCLKPS(d) ((d<=1)?1UL:(d<=2)?2UL: (d<=4+1)?4UL:(d<=8+3)?8UL: (d<=16+7)?16UL:(d<=32+15)?32UL: (d<=64+31)?64UL:(d<=128+63)?128UL: (d<=256+127)?256UL:256UL)"
.LASF115:
	.string	"__INT_FAST32_MAX__ 2147483647L"
.LASF271:
	.string	"__HQ_FBIT__ 15"
.LASF388:
	.string	"__BUILTIN_AVR_BITSHR 1"
.LASF650:
	.string	"putres_et"
.LASF307:
	.string	"__GNUC_GNU_INLINE__ 1"
.LASF264:
	.string	"__ULLACCUM_FBIT__ 48"
.LASF588:
	.string	"SETUSICNT(n) USISR=SETBITS(USISR,n,USICNT_0_3)"
.LASF554:
	.string	"CIRCBUFF_SIZE_T uint8_t"
.LASF331:
	.string	"__AVR_2_BYTE_PC__ 1"
.LASF587:
	.string	"USICNT() (USISR&USICNT_0_3)"
.LASF495:
	.string	"CS1_CLK_DIV512 CS1_0_3(0xA)"
.LASF766:
	.string	"_ZN3SPI13_getByte2XmitERh"
.LASF830:
	.string	"_Z9toggleLedmi"
.LASF190:
	.string	"__SFRACT_IBIT__ 0"
.LASF152:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF593:
	.string	"USIWM1 BV_(5)"
.LASF829:
	.string	"__static_initialization_and_destruction_0"
.LASF646:
	.string	"rPtr"
.LASF636:
	.string	"int64_t"
.LASF439:
	.string	"SREG_N BV_(2)"
.LASF610:
	.string	"MOSI PB0"
.LASF154:
	.string	"__LDBL_MANT_DIG__ 24"
.LASF390:
	.string	"__BUILTIN_AVR_BITSLR 1"
.LASF223:
	.string	"__LLFRACT_EPSILON__ 0x1P-63LLR"
.LASF192:
	.string	"__SFRACT_MAX__ 0X7FP-7HR"
.LASF411:
	.string	"__BUILTIN_AVR_ULLRBITS 1"
.LASF552:
	.string	"NOPLOOPDELAY(n) {for(register unsigned int i___=0;i___<(n);i___++) __asm__ __volatile__ (\"nop\");}"
.LASF100:
	.string	"__INT16_C(c) c"
.LASF645:
	.string	"m_bufferDim"
.LASF412:
	.string	"__BUILTIN_AVR_HKBITS 1"
.LASF585:
	.string	"USIDC BV_(4)"
.LASF370:
	.string	"__BUILTIN_AVR_ROUNDULK 1"
.LASF526:
	.string	"PLLSCR REGDECL(0x27)"
.LASF11:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF641:
	.string	"WRITTEN"
.LASF535:
	.string	"___tiny85"
.LASF93:
	.string	"__UINT8_MAX__ 255"
.LASF142:
	.string	"__DBL_MIN_EXP__ (-125)"
.LASF105:
	.string	"__UINT_LEAST8_MAX__ 255"
.LASF215:
	.string	"__ULFRACT_IBIT__ 0"
.LASF661:
	.string	"getByte"
.LASF534:
	.string	"OCR1C REGDECL(0x2D)"
.LASF94:
	.string	"__UINT16_MAX__ 65535U"
.LASF229:
	.string	"__SACCUM_FBIT__ 7"
	.ident	"GCC: (GNU) 4.8.1"
.global __do_copy_data
.global __do_clear_bss
