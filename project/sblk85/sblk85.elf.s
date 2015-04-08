
sblk85.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	10 c0       	rjmp	.+32     	; 0x22 <__dtors_end>
   2:	34 c0       	rjmp	.+104    	; 0x6c <__bad_interrupt>
   4:	33 c0       	rjmp	.+102    	; 0x6c <__bad_interrupt>
   6:	32 c0       	rjmp	.+100    	; 0x6c <__bad_interrupt>
   8:	13 c1       	rjmp	.+550    	; 0x230 <__vector_4>
   a:	30 c0       	rjmp	.+96     	; 0x6c <__bad_interrupt>
   c:	2f c0       	rjmp	.+94     	; 0x6c <__bad_interrupt>
   e:	2e c0       	rjmp	.+92     	; 0x6c <__bad_interrupt>
  10:	2d c0       	rjmp	.+90     	; 0x6c <__bad_interrupt>
  12:	2c c0       	rjmp	.+88     	; 0x6c <__bad_interrupt>
  14:	2b c0       	rjmp	.+86     	; 0x6c <__bad_interrupt>
  16:	2a c0       	rjmp	.+84     	; 0x6c <__bad_interrupt>
  18:	29 c0       	rjmp	.+82     	; 0x6c <__bad_interrupt>
  1a:	28 c0       	rjmp	.+80     	; 0x6c <__bad_interrupt>
  1c:	02 c6       	rjmp	.+3076   	; 0xc22 <__vector_14>

0000001e <__ctors_start>:
  1e:	84 05       	cpc	r24, r4

00000020 <__ctors_end>:
  20:	8a 05       	cpc	r24, r10

00000022 <__dtors_end>:
  22:	11 24       	eor	r1, r1
  24:	1f be       	out	0x3f, r1	; 63
  26:	cf e5       	ldi	r28, 0x5F	; 95
  28:	d2 e0       	ldi	r29, 0x02	; 2
  2a:	de bf       	out	0x3e, r29	; 62
  2c:	cd bf       	out	0x3d, r28	; 61

0000002e <__do_copy_data>:
  2e:	10 e0       	ldi	r17, 0x00	; 0
  30:	a0 e6       	ldi	r26, 0x60	; 96
  32:	b0 e0       	ldi	r27, 0x00	; 0
  34:	e0 e1       	ldi	r30, 0x10	; 16
  36:	fe e0       	ldi	r31, 0x0E	; 14
  38:	02 c0       	rjmp	.+4      	; 0x3e <__SP_H__>
  3a:	05 90       	lpm	r0, Z+
  3c:	0d 92       	st	X+, r0
  3e:	ac 36       	cpi	r26, 0x6C	; 108
  40:	b1 07       	cpc	r27, r17
  42:	d9 f7       	brne	.-10     	; 0x3a <__do_copy_data+0xc>

00000044 <__do_clear_bss>:
  44:	21 e0       	ldi	r18, 0x01	; 1
  46:	ac e6       	ldi	r26, 0x6C	; 108
  48:	b0 e0       	ldi	r27, 0x00	; 0
  4a:	01 c0       	rjmp	.+2      	; 0x4e <.do_clear_bss_start>

0000004c <.do_clear_bss_loop>:
  4c:	1d 92       	st	X+, r1

0000004e <.do_clear_bss_start>:
  4e:	a4 30       	cpi	r26, 0x04	; 4
  50:	b2 07       	cpc	r27, r18
  52:	e1 f7       	brne	.-8      	; 0x4c <.do_clear_bss_loop>

00000054 <__do_global_ctors>:
  54:	10 e0       	ldi	r17, 0x00	; 0
  56:	c0 e2       	ldi	r28, 0x20	; 32
  58:	d0 e0       	ldi	r29, 0x00	; 0
  5a:	03 c0       	rjmp	.+6      	; 0x62 <__do_global_ctors+0xe>
  5c:	22 97       	sbiw	r28, 0x02	; 2
  5e:	fe 01       	movw	r30, r28
  60:	c7 d6       	rcall	.+3470   	; 0xdf0 <__tablejump__>
  62:	ce 31       	cpi	r28, 0x1E	; 30
  64:	d1 07       	cpc	r29, r17
  66:	d1 f7       	brne	.-12     	; 0x5c <__do_global_ctors+0x8>
  68:	3b d4       	rcall	.+2166   	; 0x8e0 <main>
  6a:	c6 c6       	rjmp	.+3468   	; 0xdf8 <__do_global_dtors>

0000006c <__bad_interrupt>:
  6c:	c9 cf       	rjmp	.-110    	; 0x0 <__vectors>

0000006e <_ZN7ATTimerC1Ev>:
//Static values
uint8_t ATTimer::instance=0;
bool volatile ATTimer::btIdx=false;
uint64_t volatile ATTimer::m_baseTime[2]={0,0};

ATTimer::ATTimer()
  6e:	fc 01       	movw	r30, r24
{
    instance++;
  70:	80 91 7d 00 	lds	r24, 0x007D
  74:	8f 5f       	subi	r24, 0xFF	; 255
  76:	80 93 7d 00 	sts	0x007D, r24
    myinstance=instance;
  7a:	80 87       	std	Z+8, r24	; 0x08

    m_startTime=0;
  7c:	10 82       	st	Z, r1
  7e:	11 82       	std	Z+1, r1	; 0x01
  80:	12 82       	std	Z+2, r1	; 0x02
  82:	13 82       	std	Z+3, r1	; 0x03
  84:	14 82       	std	Z+4, r1	; 0x04
  86:	15 82       	std	Z+5, r1	; 0x05
  88:	16 82       	std	Z+6, r1	; 0x06
  8a:	17 82       	std	Z+7, r1	; 0x07
  8c:	08 95       	ret

0000008e <_ZN7ATTimerD1Ev>:
}

ATTimer::~ATTimer()
  8e:	08 95       	ret

00000090 <_ZN7ATTimer6udelayEm>:

uint16_t ATTimer::udelay(uint32_t usec)
{
#define CNT_ (W_TOV_AT - 0x10UL)
    timer1_t t0;
    uint16_t remainder=usec%TTICK_us;
  90:	9b 01       	movw	r18, r22
  92:	27 70       	andi	r18, 0x07	; 7
  94:	33 27       	eor	r19, r19

    //usec becomes the number of ticks!
    usec=usec/TTICK_us;
  96:	ab 01       	movw	r20, r22
  98:	bc 01       	movw	r22, r24
  9a:	83 e0       	ldi	r24, 0x03	; 3
  9c:	76 95       	lsr	r23
  9e:	67 95       	ror	r22
  a0:	57 95       	ror	r21
  a2:	47 95       	ror	r20
  a4:	8a 95       	dec	r24
  a6:	d1 f7       	brne	.-12     	; 0x9c <_ZN7ATTimer6udelayEm+0xc>

    // is ">" so the "if" below is always executed!!! :)
    while(usec > (uint32_t)CNT_) {
  a8:	41 3f       	cpi	r20, 0xF1	; 241
  aa:	51 05       	cpc	r21, r1
  ac:	61 05       	cpc	r22, r1
  ae:	71 05       	cpc	r23, r1
  b0:	60 f0       	brcs	.+24     	; 0xca <_ZN7ATTimer6udelayEm+0x3a>
        t0=W_TCNT;
  b2:	9f b5       	in	r25, 0x2f	; 47
        while ((timer1_t)(W_TCNT-t0) < (timer1_t)CNT_);
  b4:	8f b5       	in	r24, 0x2f	; 47
  b6:	89 1b       	sub	r24, r25
  b8:	80 3f       	cpi	r24, 0xF0	; 240
  ba:	e0 f3       	brcs	.-8      	; 0xb4 <_ZN7ATTimer6udelayEm+0x24>
        usec-=(timer1_t)(W_TCNT-t0);
  bc:	8f b5       	in	r24, 0x2f	; 47
  be:	89 1b       	sub	r24, r25
  c0:	48 1b       	sub	r20, r24
  c2:	51 09       	sbc	r21, r1
  c4:	61 09       	sbc	r22, r1
  c6:	71 09       	sbc	r23, r1
  c8:	ef cf       	rjmp	.-34     	; 0xa8 <_ZN7ATTimer6udelayEm+0x18>
    }

    if ((timer1_t)usec) {
  ca:	44 23       	and	r20, r20
  cc:	29 f0       	breq	.+10     	; 0xd8 <_ZN7ATTimer6udelayEm+0x48>
        t0=W_TCNT;
  ce:	9f b5       	in	r25, 0x2f	; 47
        while ((timer1_t)(W_TCNT-t0)<(timer1_t)usec);
  d0:	8f b5       	in	r24, 0x2f	; 47
  d2:	89 1b       	sub	r24, r25
  d4:	84 17       	cp	r24, r20
  d6:	e0 f3       	brcs	.-8      	; 0xd0 <_ZN7ATTimer6udelayEm+0x40>
    }
#undef CNT_

    return remainder;
}
  d8:	c9 01       	movw	r24, r18
  da:	08 95       	ret

000000dc <_ZN7ATTimer8baseTimeEv>:

uint64_t ATTimer::baseTime()
{
  dc:	af 92       	push	r10
  de:	bf 92       	push	r11
  e0:	cf 92       	push	r12
  e2:	df 92       	push	r13
  e4:	ef 92       	push	r14
  e6:	ff 92       	push	r15
  e8:	0f 93       	push	r16
  ea:	1f 93       	push	r17
  ec:	cf 93       	push	r28
  ee:	df 93       	push	r29
    uint32_t x=W_TCNT*TTICK_us;
  f0:	8f b5       	in	r24, 0x2f	; 47
    uint64_t y=m_baseTime[btIdx];
  f2:	e0 91 7c 00 	lds	r30, 0x007C
  f6:	f0 e0       	ldi	r31, 0x00	; 0
  f8:	93 e0       	ldi	r25, 0x03	; 3
  fa:	ee 0f       	add	r30, r30
  fc:	ff 1f       	adc	r31, r31
  fe:	9a 95       	dec	r25
 100:	e1 f7       	brne	.-8      	; 0xfa <_ZN7ATTimer8baseTimeEv+0x1e>
 102:	e4 59       	subi	r30, 0x94	; 148
 104:	ff 4f       	sbci	r31, 0xFF	; 255
 106:	a0 80       	ld	r10, Z
 108:	b1 80       	ldd	r11, Z+1	; 0x01
 10a:	c2 80       	ldd	r12, Z+2	; 0x02
 10c:	d3 80       	ldd	r13, Z+3	; 0x03
 10e:	e4 80       	ldd	r14, Z+4	; 0x04
 110:	f5 80       	ldd	r15, Z+5	; 0x05
 112:	06 81       	ldd	r16, Z+6	; 0x06
 114:	17 81       	ldd	r17, Z+7	; 0x07
    return remainder;
}

uint64_t ATTimer::baseTime()
{
    uint32_t x=W_TCNT*TTICK_us;
 116:	90 e0       	ldi	r25, 0x00	; 0
 118:	a0 e0       	ldi	r26, 0x00	; 0
 11a:	b0 e0       	ldi	r27, 0x00	; 0
 11c:	23 e0       	ldi	r18, 0x03	; 3
 11e:	88 0f       	add	r24, r24
 120:	99 1f       	adc	r25, r25
 122:	aa 1f       	adc	r26, r26
 124:	bb 1f       	adc	r27, r27
 126:	2a 95       	dec	r18
 128:	d1 f7       	brne	.-12     	; 0x11e <_ZN7ATTimer8baseTimeEv+0x42>
    uint64_t y=m_baseTime[btIdx];
    uint64_t z=y+x;
 12a:	9c 01       	movw	r18, r24
 12c:	ad 01       	movw	r20, r26
 12e:	60 e0       	ldi	r22, 0x00	; 0
 130:	70 e0       	ldi	r23, 0x00	; 0
 132:	80 e0       	ldi	r24, 0x00	; 0
 134:	90 e0       	ldi	r25, 0x00	; 0
 136:	30 d6       	rcall	.+3168   	; 0xd98 <__adddi3>
    return z;
}
 138:	df 91       	pop	r29
 13a:	cf 91       	pop	r28
 13c:	1f 91       	pop	r17
 13e:	0f 91       	pop	r16
 140:	ff 90       	pop	r15
 142:	ef 90       	pop	r14
 144:	df 90       	pop	r13
 146:	cf 90       	pop	r12
 148:	bf 90       	pop	r11
 14a:	af 90       	pop	r10
 14c:	08 95       	ret

0000014e <_ZN7ATTimer5resetEv>:
    SREG=sr;
    //Debug while(!(TIMSK&TOIE1));
}

void ATTimer::reset()
{
 14e:	cf 93       	push	r28
 150:	df 93       	push	r29
 152:	ec 01       	movw	r28, r24
    if (myinstance!=1) {
 154:	88 85       	ldd	r24, Y+8	; 0x08
 156:	81 30       	cpi	r24, 0x01	; 1
 158:	59 f0       	breq	.+22     	; 0x170 <_ZN7ATTimer5resetEv+0x22>
        m_startTime=baseTime();
 15a:	ce 01       	movw	r24, r28
 15c:	bf df       	rcall	.-130    	; 0xdc <_ZN7ATTimer8baseTimeEv>
 15e:	28 83       	st	Y, r18
 160:	39 83       	std	Y+1, r19	; 0x01
 162:	4a 83       	std	Y+2, r20	; 0x02
 164:	5b 83       	std	Y+3, r21	; 0x03
 166:	6c 83       	std	Y+4, r22	; 0x04
 168:	7d 83       	std	Y+5, r23	; 0x05
 16a:	8e 83       	std	Y+6, r24	; 0x06
 16c:	9f 83       	std	Y+7, r25	; 0x07
        return;
 16e:	32 c0       	rjmp	.+100    	; 0x1d4 <_ZN7ATTimer5resetEv+0x86>
    }

    m_startTime=0;
 170:	18 82       	st	Y, r1
 172:	19 82       	std	Y+1, r1	; 0x01
 174:	1a 82       	std	Y+2, r1	; 0x02
 176:	1b 82       	std	Y+3, r1	; 0x03
 178:	1c 82       	std	Y+4, r1	; 0x04
 17a:	1d 82       	std	Y+5, r1	; 0x05
 17c:	1e 82       	std	Y+6, r1	; 0x06
 17e:	1f 82       	std	Y+7, r1	; 0x07

    uint8_t sr=SREG;
 180:	9f b7       	in	r25, 0x3f	; 63
    cli();
 182:	f8 94       	cli

    m_baseTime[0]=0;
 184:	10 92 6c 00 	sts	0x006C, r1
 188:	10 92 6d 00 	sts	0x006D, r1
 18c:	10 92 6e 00 	sts	0x006E, r1
 190:	10 92 6f 00 	sts	0x006F, r1
 194:	10 92 70 00 	sts	0x0070, r1
 198:	10 92 71 00 	sts	0x0071, r1
 19c:	10 92 72 00 	sts	0x0072, r1
 1a0:	10 92 73 00 	sts	0x0073, r1
    m_baseTime[1]=0;
 1a4:	10 92 74 00 	sts	0x0074, r1
 1a8:	10 92 75 00 	sts	0x0075, r1
 1ac:	10 92 76 00 	sts	0x0076, r1
 1b0:	10 92 77 00 	sts	0x0077, r1
 1b4:	10 92 78 00 	sts	0x0078, r1
 1b8:	10 92 79 00 	sts	0x0079, r1
 1bc:	10 92 7a 00 	sts	0x007A, r1
 1c0:	10 92 7b 00 	sts	0x007B, r1

    W_TCNT=0;
 1c4:	1f bc       	out	0x2f, r1	; 47
    //Clear timer interrupt flags
    if (W_TIFR & W_TOV)
 1c6:	08 b6       	in	r0, 0x38	; 56
 1c8:	02 fe       	sbrs	r0, 2
 1ca:	03 c0       	rjmp	.+6      	; 0x1d2 <_ZN7ATTimer5resetEv+0x84>
        W_TIFR &= W_TOV;
 1cc:	88 b7       	in	r24, 0x38	; 56
 1ce:	84 70       	andi	r24, 0x04	; 4
 1d0:	88 bf       	out	0x38, r24	; 56

    SREG=sr;
 1d2:	9f bf       	out	0x3f, r25	; 63
}
 1d4:	df 91       	pop	r29
 1d6:	cf 91       	pop	r28
 1d8:	08 95       	ret

000001da <_ZN7ATTimer5beginEv>:
ATTimer::~ATTimer()
{
}

void ATTimer::begin()
{
 1da:	1f 93       	push	r17
 1dc:	cf 93       	push	r28
 1de:	df 93       	push	r29
 1e0:	ec 01       	movw	r28, r24
    if (myinstance!= 1) {
 1e2:	88 85       	ldd	r24, Y+8	; 0x08
 1e4:	81 30       	cpi	r24, 0x01	; 1
 1e6:	59 f0       	breq	.+22     	; 0x1fe <_ZN7ATTimer5beginEv+0x24>
        m_startTime=baseTime();
 1e8:	ce 01       	movw	r24, r28
 1ea:	78 df       	rcall	.-272    	; 0xdc <_ZN7ATTimer8baseTimeEv>
 1ec:	28 83       	st	Y, r18
 1ee:	39 83       	std	Y+1, r19	; 0x01
 1f0:	4a 83       	std	Y+2, r20	; 0x02
 1f2:	5b 83       	std	Y+3, r21	; 0x03
 1f4:	6c 83       	std	Y+4, r22	; 0x04
 1f6:	7d 83       	std	Y+5, r23	; 0x05
 1f8:	8e 83       	std	Y+6, r24	; 0x06
 1fa:	9f 83       	std	Y+7, r25	; 0x07
        return;
 1fc:	10 c0       	rjmp	.+32     	; 0x21e <_ZN7ATTimer5beginEv+0x44>
    }

    uint8_t sr;

    sei();
 1fe:	78 94       	sei

    sr=SREG;
 200:	1f b7       	in	r17, 0x3f	; 63
    cli();
 202:	f8 94       	cli

    //Disables timer OVF interrupts
    W_TIMSK &= ~W_TOIE;
 204:	89 b7       	in	r24, 0x39	; 57
 206:	8b 7f       	andi	r24, 0xFB	; 251
 208:	89 bf       	out	0x39, r24	; 57

    W_TCCR = W_SELCS(TCLK_DIV); // [ (*2) - register.h ]
 20a:	88 e0       	ldi	r24, 0x08	; 8
 20c:	80 bf       	out	0x30, r24	; 48
    nop();
 20e:	00 00       	nop

    W_TIMSK |= W_TOIE;
 210:	89 b7       	in	r24, 0x39	; 57
 212:	84 60       	ori	r24, 0x04	; 4
 214:	89 bf       	out	0x39, r24	; 57
    nop();
 216:	00 00       	nop

    reset();
 218:	ce 01       	movw	r24, r28
 21a:	99 df       	rcall	.-206    	; 0x14e <_ZN7ATTimer5resetEv>

    SREG=sr;
 21c:	1f bf       	out	0x3f, r17	; 63
    //Debug while(!(TIMSK&TOIE1));
}
 21e:	df 91       	pop	r29
 220:	cf 91       	pop	r28
 222:	1f 91       	pop	r17
 224:	08 95       	ret

00000226 <_ZN7ATTimer5uTickEv>:
    uint64_t y=m_baseTime[btIdx];
    uint64_t z=y+x;
    return z;
}

uint32_t ATTimer::uTick() {return TTICK_us;}
 226:	68 e0       	ldi	r22, 0x08	; 8
 228:	70 e0       	ldi	r23, 0x00	; 0
 22a:	80 e0       	ldi	r24, 0x00	; 0
 22c:	90 e0       	ldi	r25, 0x00	; 0
 22e:	08 95       	ret

00000230 <__vector_4>:
    m_baseTime[!btIdx]=z;
    btIdx=!btIdx;
}

ISR(W_ISR) // TOV of cntX
{
 230:	1f 92       	push	r1
 232:	0f 92       	push	r0
 234:	0f b6       	in	r0, 0x3f	; 63
 236:	0f 92       	push	r0
 238:	11 24       	eor	r1, r1
 23a:	2f 93       	push	r18
 23c:	3f 93       	push	r19
 23e:	4f 93       	push	r20
 240:	5f 93       	push	r21
 242:	6f 93       	push	r22
 244:	7f 93       	push	r23
 246:	8f 93       	push	r24
 248:	9f 93       	push	r25
 24a:	af 93       	push	r26
 24c:	ef 93       	push	r30
 24e:	ff 93       	push	r31
uint32_t ATTimer::uTick() {return TTICK_us;}

void ATTimer::timerISR(void)
{
    uint32_t x=(TTICK_us*W_TOV_AT);
    uint64_t y=m_baseTime[btIdx];
 250:	e0 91 7c 00 	lds	r30, 0x007C
 254:	f0 e0       	ldi	r31, 0x00	; 0
 256:	33 e0       	ldi	r19, 0x03	; 3
 258:	ee 0f       	add	r30, r30
 25a:	ff 1f       	adc	r31, r31
 25c:	3a 95       	dec	r19
 25e:	e1 f7       	brne	.-8      	; 0x258 <__vector_4+0x28>
 260:	e4 59       	subi	r30, 0x94	; 148
 262:	ff 4f       	sbci	r31, 0xFF	; 255
 264:	20 81       	ld	r18, Z
 266:	31 81       	ldd	r19, Z+1	; 0x01
 268:	42 81       	ldd	r20, Z+2	; 0x02
 26a:	53 81       	ldd	r21, Z+3	; 0x03
 26c:	64 81       	ldd	r22, Z+4	; 0x04
 26e:	75 81       	ldd	r23, Z+5	; 0x05
 270:	86 81       	ldd	r24, Z+6	; 0x06
 272:	97 81       	ldd	r25, Z+7	; 0x07
    uint64_t z=y+x;
 274:	38 5f       	subi	r19, 0xF8	; 248
 276:	4f 4f       	sbci	r20, 0xFF	; 255
 278:	5f 4f       	sbci	r21, 0xFF	; 255
 27a:	6f 4f       	sbci	r22, 0xFF	; 255
 27c:	7f 4f       	sbci	r23, 0xFF	; 255
 27e:	8f 4f       	sbci	r24, 0xFF	; 255
 280:	9f 4f       	sbci	r25, 0xFF	; 255
    m_baseTime[!btIdx]=z;
 282:	e0 91 7c 00 	lds	r30, 0x007C
 286:	a1 e0       	ldi	r26, 0x01	; 1
 288:	ea 27       	eor	r30, r26
 28a:	f0 e0       	ldi	r31, 0x00	; 0
 28c:	ee 0f       	add	r30, r30
 28e:	ff 1f       	adc	r31, r31
 290:	ee 0f       	add	r30, r30
 292:	ff 1f       	adc	r31, r31
 294:	ee 0f       	add	r30, r30
 296:	ff 1f       	adc	r31, r31
 298:	e4 59       	subi	r30, 0x94	; 148
 29a:	ff 4f       	sbci	r31, 0xFF	; 255
 29c:	20 83       	st	Z, r18
 29e:	31 83       	std	Z+1, r19	; 0x01
 2a0:	42 83       	std	Z+2, r20	; 0x02
 2a2:	53 83       	std	Z+3, r21	; 0x03
 2a4:	64 83       	std	Z+4, r22	; 0x04
 2a6:	75 83       	std	Z+5, r23	; 0x05
 2a8:	86 83       	std	Z+6, r24	; 0x06
 2aa:	97 83       	std	Z+7, r25	; 0x07
    btIdx=!btIdx;
 2ac:	80 91 7c 00 	lds	r24, 0x007C
 2b0:	8a 27       	eor	r24, r26
 2b2:	80 93 7c 00 	sts	0x007C, r24
}

ISR(W_ISR) // TOV of cntX
{
    ATTimer::timerISR();
}
 2b6:	ff 91       	pop	r31
 2b8:	ef 91       	pop	r30
 2ba:	af 91       	pop	r26
 2bc:	9f 91       	pop	r25
 2be:	8f 91       	pop	r24
 2c0:	7f 91       	pop	r23
 2c2:	6f 91       	pop	r22
 2c4:	5f 91       	pop	r21
 2c6:	4f 91       	pop	r20
 2c8:	3f 91       	pop	r19
 2ca:	2f 91       	pop	r18
 2cc:	0f 90       	pop	r0
 2ce:	0f be       	out	0x3f, r0	; 63
 2d0:	0f 90       	pop	r0
 2d2:	1f 90       	pop	r1
 2d4:	18 95       	reti

000002d6 <_ZN14CircularBufferC1EPch>:
        m_intalloc=true;
    }
}
#endif

CircularBuffer::CircularBuffer(char *bmem, CircularBuffer::m_size lmem):
 2d6:	fc 01       	movw	r30, r24
        _INIT_(bmem)
 2d8:	11 82       	std	Z+1, r1	; 0x01
 2da:	12 82       	std	Z+2, r1	; 0x02
 2dc:	74 83       	std	Z+4, r23	; 0x04
 2de:	63 83       	std	Z+3, r22	; 0x03
 2e0:	15 82       	std	Z+5, r1	; 0x05
 2e2:	16 82       	std	Z+6, r1	; 0x06

#ifdef CIRCBUFF_POW2DIM
    inline void evalBuffDim(m_size lmem) {
        m_bufferDim=-1;
        m_bufferDim>>=1;
        m_bufferDim+=1;
 2e4:	80 e8       	ldi	r24, 0x80	; 128
        while(m_bufferDim && !(lmem&m_bufferDim))
            m_bufferDim>>=1;
 2e6:	80 83       	st	Z, r24
#ifdef CIRCBUFF_POW2DIM
    inline void evalBuffDim(m_size lmem) {
        m_bufferDim=-1;
        m_bufferDim>>=1;
        m_bufferDim+=1;
        while(m_bufferDim && !(lmem&m_bufferDim))
 2e8:	80 81       	ld	r24, Z
 2ea:	88 23       	and	r24, r24
 2ec:	39 f0       	breq	.+14     	; 0x2fc <_ZN14CircularBufferC1EPch+0x26>
 2ee:	94 2f       	mov	r25, r20
 2f0:	98 23       	and	r25, r24
 2f2:	21 f4       	brne	.+8      	; 0x2fc <_ZN14CircularBufferC1EPch+0x26>
            m_bufferDim>>=1;
 2f4:	90 e0       	ldi	r25, 0x00	; 0
 2f6:	95 95       	asr	r25
 2f8:	87 95       	ror	r24
 2fa:	f5 cf       	rjmp	.-22     	; 0x2e6 <_ZN14CircularBufferC1EPch+0x10>
 2fc:	08 95       	ret

000002fe <_ZN14CircularBufferD1Ev>:
#endif

    evalBuffDim(lmem);
}

CircularBuffer::~CircularBuffer()
 2fe:	08 95       	ret

00000300 <_ZN14CircularBuffer7getByteEv>:
	}
#endif
}

int CircularBuffer::getByte()
{
 300:	fc 01       	movw	r30, r24
	if (rPtr==wPtr && !overflow)
 302:	91 81       	ldd	r25, Z+1	; 0x01
 304:	82 81       	ldd	r24, Z+2	; 0x02
 306:	98 13       	cpse	r25, r24
 308:	06 c0       	rjmp	.+12     	; 0x316 <_ZN14CircularBuffer7getByteEv+0x16>
 30a:	85 81       	ldd	r24, Z+5	; 0x05
 30c:	81 11       	cpse	r24, r1
 30e:	03 c0       	rjmp	.+6      	; 0x316 <_ZN14CircularBuffer7getByteEv+0x16>
		return -1; //nothing to read
 310:	8f ef       	ldi	r24, 0xFF	; 255
 312:	9f ef       	ldi	r25, 0xFF	; 255
 314:	08 95       	ret
    char ch=mem[rPtr];
 316:	81 81       	ldd	r24, Z+1	; 0x01
 318:	a3 81       	ldd	r26, Z+3	; 0x03
 31a:	b4 81       	ldd	r27, Z+4	; 0x04
 31c:	a8 0f       	add	r26, r24
 31e:	b1 1d       	adc	r27, r1
 320:	8c 91       	ld	r24, X
#ifdef CIRCBUFF_POW2DIM
    rPtr=(rPtr+1)&(bufferDim()-1);
 322:	21 81       	ldd	r18, Z+1	; 0x01
 324:	90 81       	ld	r25, Z
 326:	91 50       	subi	r25, 0x01	; 1
 328:	2f 5f       	subi	r18, 0xFF	; 255
 32a:	92 23       	and	r25, r18
 32c:	91 83       	std	Z+1, r25	; 0x01
#else
    rPtr=(rPtr+1)%bufferDim();
#endif
	overflow=false;
 32e:	15 82       	std	Z+5, r1	; 0x05
    return ((unsigned int)(ch) & 0xFF);
 330:	90 e0       	ldi	r25, 0x00	; 0
}
 332:	08 95       	ret

00000334 <_ZN14CircularBuffer7putByteEcb>:

    return i;
}

CircularBuffer::putres_et CircularBuffer::putByte(const char ch,bool overwrite)
{
 334:	fc 01       	movw	r30, r24
    bool ow=overflow;
 336:	95 81       	ldd	r25, Z+5	; 0x05

	//rPtr still not read!!!
    if (overwrite || !ow) {
 338:	41 11       	cpse	r20, r1
 33a:	02 c0       	rjmp	.+4      	; 0x340 <_ZN14CircularBuffer7putByteEcb+0xc>
 33c:	91 11       	cpse	r25, r1
 33e:	11 c0       	rjmp	.+34     	; 0x362 <_ZN14CircularBuffer7putByteEcb+0x2e>
    //if (overwrite || !overflow) {
        mem[wPtr]=ch;
 340:	82 81       	ldd	r24, Z+2	; 0x02
 342:	a3 81       	ldd	r26, Z+3	; 0x03
 344:	b4 81       	ldd	r27, Z+4	; 0x04
 346:	a8 0f       	add	r26, r24
 348:	b1 1d       	adc	r27, r1
 34a:	6c 93       	st	X, r22
#ifdef CIRCBUFF_POW2DIM
        wPtr=(wPtr+1)&(bufferDim()-1);
 34c:	22 81       	ldd	r18, Z+2	; 0x02
 34e:	80 81       	ld	r24, Z
 350:	81 50       	subi	r24, 0x01	; 1
 352:	2f 5f       	subi	r18, 0xFF	; 255
 354:	82 23       	and	r24, r18
 356:	82 83       	std	Z+2, r24	; 0x02
#else
        wPtr=(wPtr+1)%bufferDim();
#endif
        //if (overflow) {
        if (ow) {
 358:	99 23       	and	r25, r25
 35a:	19 f0       	breq	.+6      	; 0x362 <_ZN14CircularBuffer7putByteEcb+0x2e>
			overwritten=true;
 35c:	81 e0       	ldi	r24, 0x01	; 1
 35e:	86 83       	std	Z+6, r24	; 0x06
			overflow=false;
 360:	15 82       	std	Z+5, r1	; 0x05
		}
	}

	//The next write should overwrite!!!
	if (wPtr==rPtr)
 362:	22 81       	ldd	r18, Z+2	; 0x02
 364:	81 81       	ldd	r24, Z+1	; 0x01
 366:	28 13       	cpse	r18, r24
 368:	02 c0       	rjmp	.+4      	; 0x36e <_ZN14CircularBuffer7putByteEcb+0x3a>
		overflow=true;
 36a:	81 e0       	ldi	r24, 0x01	; 1
 36c:	85 83       	std	Z+5, r24	; 0x05

    //return (overwritten)?OVERWRITTEN:(overflow)?NOT_WRITTEN:WRITTEN;
    return (!ow)?WRITTEN:(overwrite)?OVERWRITTEN:NOT_WRITTEN;
 36e:	99 23       	and	r25, r25
 370:	29 f0       	breq	.+10     	; 0x37c <_ZN14CircularBuffer7putByteEcb+0x48>
 372:	44 23       	and	r20, r20
 374:	31 f0       	breq	.+12     	; 0x382 <_ZN14CircularBuffer7putByteEcb+0x4e>
 376:	8f ef       	ldi	r24, 0xFF	; 255
 378:	9f ef       	ldi	r25, 0xFF	; 255
 37a:	08 95       	ret
 37c:	80 e0       	ldi	r24, 0x00	; 0
 37e:	90 e0       	ldi	r25, 0x00	; 0
 380:	08 95       	ret
 382:	8e ef       	ldi	r24, 0xFE	; 254
 384:	9f ef       	ldi	r25, 0xFF	; 255
}
 386:	08 95       	ret

00000388 <_ZN14CircularBuffer7putDataEPKchb>:

CircularBuffer::m_size CircularBuffer::putData(const char *buff, m_size len, bool overwrite)
{
 388:	af 92       	push	r10
 38a:	bf 92       	push	r11
 38c:	df 92       	push	r13
 38e:	ef 92       	push	r14
 390:	ff 92       	push	r15
 392:	0f 93       	push	r16
 394:	1f 93       	push	r17
 396:	cf 93       	push	r28
 398:	df 93       	push	r29
 39a:	1f 92       	push	r1
 39c:	cd b7       	in	r28, 0x3d	; 61
 39e:	de b7       	in	r29, 0x3e	; 62
 3a0:	8c 01       	movw	r16, r24
 3a2:	e4 2e       	mov	r14, r20
 3a4:	d6 2e       	mov	r13, r22
    m_size i=0;

    while(i<len && putByte(buff[i],overwrite)!=NOT_WRITTEN)
 3a6:	5b 01       	movw	r10, r22
 3a8:	fa 2c       	mov	r15, r10
 3aa:	fd 18       	sub	r15, r13
 3ac:	fe 14       	cp	r15, r14
 3ae:	50 f4       	brcc	.+20     	; 0x3c4 <_ZN14CircularBuffer7putDataEPKchb+0x3c>
 3b0:	f5 01       	movw	r30, r10
 3b2:	61 91       	ld	r22, Z+
 3b4:	5f 01       	movw	r10, r30
 3b6:	42 2f       	mov	r20, r18
 3b8:	c8 01       	movw	r24, r16
 3ba:	29 83       	std	Y+1, r18	; 0x01
 3bc:	bb df       	rcall	.-138    	; 0x334 <_ZN14CircularBuffer7putByteEcb>
 3be:	29 81       	ldd	r18, Y+1	; 0x01
 3c0:	02 96       	adiw	r24, 0x02	; 2
 3c2:	91 f7       	brne	.-28     	; 0x3a8 <_ZN14CircularBuffer7putDataEPKchb+0x20>
        i++;

    return i;
}
 3c4:	8f 2d       	mov	r24, r15
 3c6:	0f 90       	pop	r0
 3c8:	df 91       	pop	r29
 3ca:	cf 91       	pop	r28
 3cc:	1f 91       	pop	r17
 3ce:	0f 91       	pop	r16
 3d0:	ff 90       	pop	r15
 3d2:	ef 90       	pop	r14
 3d4:	df 90       	pop	r13
 3d6:	bf 90       	pop	r11
 3d8:	af 90       	pop	r10
 3da:	08 95       	ret

000003dc <_strlen>:
}

size_t _strlen(char *sd)
{
    size_t i=0;
    while(*(sd+i))
 3dc:	fc 01       	movw	r30, r24
 3de:	9f 01       	movw	r18, r30
 3e0:	28 1b       	sub	r18, r24
 3e2:	39 0b       	sbc	r19, r25
 3e4:	41 91       	ld	r20, Z+
 3e6:	41 11       	cpse	r20, r1
 3e8:	fa cf       	rjmp	.-12     	; 0x3de <_strlen+0x2>
        i++;
    return i;
}
 3ea:	c9 01       	movw	r24, r18
 3ec:	08 95       	ret

000003ee <_strntoll>:
{
    return _strcpy(sd+_strlen(sd),ss);
}

int64_t _strntoll(char * x, ssize_t n_, unsigned int base)
{
 3ee:	2f 92       	push	r2
 3f0:	3f 92       	push	r3
 3f2:	4f 92       	push	r4
 3f4:	5f 92       	push	r5
 3f6:	6f 92       	push	r6
 3f8:	7f 92       	push	r7
 3fa:	8f 92       	push	r8
 3fc:	9f 92       	push	r9
 3fe:	af 92       	push	r10
 400:	bf 92       	push	r11
 402:	cf 92       	push	r12
 404:	df 92       	push	r13
 406:	ef 92       	push	r14
 408:	ff 92       	push	r15
 40a:	0f 93       	push	r16
 40c:	1f 93       	push	r17
 40e:	cf 93       	push	r28
 410:	df 93       	push	r29
 412:	cd b7       	in	r28, 0x3d	; 61
 414:	de b7       	in	r29, 0x3e	; 62
 416:	6c 97       	sbiw	r28, 0x1c	; 28
 418:	0f b6       	in	r0, 0x3f	; 63
 41a:	f8 94       	cli
 41c:	de bf       	out	0x3e, r29	; 62
 41e:	0f be       	out	0x3f, r0	; 63
 420:	cd bf       	out	0x3d, r28	; 61
 422:	4c 01       	movw	r8, r24
 424:	1b 01       	movw	r2, r22
 426:	8a 01       	movw	r16, r20
    uint64_t z=0, k;
    int64_t sign=1;
    ssize_t n=0;

    if (n_<0) {
 428:	77 ff       	sbrs	r23, 7
 42a:	02 c0       	rjmp	.+4      	; 0x430 <_strntoll+0x42>
        n_=_strlen(x);
 42c:	d7 df       	rcall	.-82     	; 0x3dc <_strlen>
 42e:	1c 01       	movw	r2, r24
    }

    if (!n_)
 430:	21 14       	cp	r2, r1
 432:	31 04       	cpc	r3, r1
 434:	09 f4       	brne	.+2      	; 0x438 <_strntoll+0x4a>
 436:	22 c1       	rjmp	.+580    	; 0x67c <_strntoll+0x28e>
 438:	f4 01       	movw	r30, r8
 43a:	80 e0       	ldi	r24, 0x00	; 0
 43c:	90 e0       	ldi	r25, 0x00	; 0
        return 0;

    while( x[n]<='\x20' && n<n_ ) {
 43e:	21 91       	ld	r18, Z+
 440:	21 32       	cpi	r18, 0x21	; 33
 442:	24 f0       	brlt	.+8      	; 0x44c <_strntoll+0x5e>
        n++;
    }

    if (n==n_)
 444:	82 15       	cp	r24, r2
 446:	93 05       	cpc	r25, r3
 448:	31 f4       	brne	.+12     	; 0x456 <_strntoll+0x68>
 44a:	18 c1       	rjmp	.+560    	; 0x67c <_strntoll+0x28e>
    }

    if (!n_)
        return 0;

    while( x[n]<='\x20' && n<n_ ) {
 44c:	82 15       	cp	r24, r2
 44e:	93 05       	cpc	r25, r3
 450:	cc f7       	brge	.-14     	; 0x444 <_strntoll+0x56>
        n++;
 452:	01 96       	adiw	r24, 0x01	; 1
 454:	f4 cf       	rjmp	.-24     	; 0x43e <_strntoll+0x50>
    }

    if (n==n_)
        return 0;

    switch(x[n]) {
 456:	2b 32       	cpi	r18, 0x2B	; 43
 458:	a1 f0       	breq	.+40     	; 0x482 <_strntoll+0x94>
 45a:	2d 32       	cpi	r18, 0x2D	; 45
 45c:	01 f5       	brne	.+64     	; 0x49e <_strntoll+0xb0>
    case '-': sign=-1;n++;break;
 45e:	01 96       	adiw	r24, 0x01	; 1
 460:	2f ef       	ldi	r18, 0xFF	; 255
 462:	2a 8b       	std	Y+18, r18	; 0x12
 464:	3f ef       	ldi	r19, 0xFF	; 255
 466:	3b 8b       	std	Y+19, r19	; 0x13
 468:	4f ef       	ldi	r20, 0xFF	; 255
 46a:	4c 8b       	std	Y+20, r20	; 0x14
 46c:	5f ef       	ldi	r21, 0xFF	; 255
 46e:	5d 8b       	std	Y+21, r21	; 0x15
 470:	6f ef       	ldi	r22, 0xFF	; 255
 472:	6e 8b       	std	Y+22, r22	; 0x16
 474:	7f ef       	ldi	r23, 0xFF	; 255
 476:	7f 8b       	std	Y+23, r23	; 0x17
 478:	af ef       	ldi	r26, 0xFF	; 255
 47a:	a8 8f       	std	Y+24, r26	; 0x18
 47c:	bf ef       	ldi	r27, 0xFF	; 255
 47e:	b9 8f       	std	Y+25, r27	; 0x19
 480:	0a c0       	rjmp	.+20     	; 0x496 <_strntoll+0xa8>
    case '+': n++; break;
 482:	01 96       	adiw	r24, 0x01	; 1
}

int64_t _strntoll(char * x, ssize_t n_, unsigned int base)
{
    uint64_t z=0, k;
    int64_t sign=1;
 484:	e1 e0       	ldi	r30, 0x01	; 1
 486:	ea 8b       	std	Y+18, r30	; 0x12
 488:	1b 8a       	std	Y+19, r1	; 0x13
 48a:	1c 8a       	std	Y+20, r1	; 0x14
 48c:	1d 8a       	std	Y+21, r1	; 0x15
 48e:	1e 8a       	std	Y+22, r1	; 0x16
 490:	1f 8a       	std	Y+23, r1	; 0x17
 492:	18 8e       	std	Y+24, r1	; 0x18
 494:	19 8e       	std	Y+25, r1	; 0x19
    case '-': sign=-1;n++;break;
    case '+': n++; break;
    default:break;
    }

    if (n==n_)
 496:	82 15       	cp	r24, r2
 498:	93 05       	cpc	r25, r3
 49a:	51 f4       	brne	.+20     	; 0x4b0 <_strntoll+0xc2>
 49c:	ef c0       	rjmp	.+478    	; 0x67c <_strntoll+0x28e>
}

int64_t _strntoll(char * x, ssize_t n_, unsigned int base)
{
    uint64_t z=0, k;
    int64_t sign=1;
 49e:	f1 e0       	ldi	r31, 0x01	; 1
 4a0:	fa 8b       	std	Y+18, r31	; 0x12
 4a2:	1b 8a       	std	Y+19, r1	; 0x13
 4a4:	1c 8a       	std	Y+20, r1	; 0x14
 4a6:	1d 8a       	std	Y+21, r1	; 0x15
 4a8:	1e 8a       	std	Y+22, r1	; 0x16
 4aa:	1f 8a       	std	Y+23, r1	; 0x17
 4ac:	18 8e       	std	Y+24, r1	; 0x18
 4ae:	19 8e       	std	Y+25, r1	; 0x19
    }

    if (n==n_)
        return 0;

    if (base == 0) {
 4b0:	01 15       	cp	r16, r1
 4b2:	11 05       	cpc	r17, r1
 4b4:	b1 f5       	brne	.+108    	; 0x522 <_strntoll+0x134>
        switch(x[n]) {
 4b6:	f4 01       	movw	r30, r8
 4b8:	e8 0f       	add	r30, r24
 4ba:	f9 1f       	adc	r31, r25
 4bc:	20 81       	ld	r18, Z
 4be:	20 33       	cpi	r18, 0x30	; 48
 4c0:	49 f0       	breq	.+18     	; 0x4d4 <_strntoll+0xe6>
 4c2:	1c f4       	brge	.+6      	; 0x4ca <_strntoll+0xdc>
 4c4:	2a 32       	cpi	r18, 0x2A	; 42
 4c6:	39 f5       	brne	.+78     	; 0x516 <_strntoll+0x128>
 4c8:	12 c0       	rjmp	.+36     	; 0x4ee <_strntoll+0x100>
 4ca:	28 35       	cpi	r18, 0x58	; 88
 4cc:	81 f0       	breq	.+32     	; 0x4ee <_strntoll+0x100>
 4ce:	28 37       	cpi	r18, 0x78	; 120
 4d0:	11 f5       	brne	.+68     	; 0x516 <_strntoll+0x128>
 4d2:	0d c0       	rjmp	.+26     	; 0x4ee <_strntoll+0x100>
        case '0':
            base = 8; n++;
 4d4:	9c 01       	movw	r18, r24
 4d6:	2f 5f       	subi	r18, 0xFF	; 255
 4d8:	3f 4f       	sbci	r19, 0xFF	; 255
            if (x[n]=='x') {
 4da:	f4 01       	movw	r30, r8
 4dc:	e2 0f       	add	r30, r18
 4de:	f3 1f       	adc	r31, r19
 4e0:	40 81       	ld	r20, Z
 4e2:	48 37       	cpi	r20, 0x78	; 120
 4e4:	d9 f4       	brne	.+54     	; 0x51c <_strntoll+0x12e>
                base=16; n++;
 4e6:	02 96       	adiw	r24, 0x02	; 2
 4e8:	00 e1       	ldi	r16, 0x10	; 16
 4ea:	10 e0       	ldi	r17, 0x00	; 0
 4ec:	1a c0       	rjmp	.+52     	; 0x522 <_strntoll+0x134>
            }
            break;
        case 'x': case 'X':
        case '*':
            n++;base=x[n]-'0';
 4ee:	21 81       	ldd	r18, Z+1	; 0x01
 4f0:	33 27       	eor	r19, r19
 4f2:	27 fd       	sbrc	r18, 7
 4f4:	30 95       	com	r19
 4f6:	89 01       	movw	r16, r18
 4f8:	00 53       	subi	r16, 0x30	; 48
 4fa:	11 09       	sbc	r17, r1
            if (base>9)
 4fc:	0a 30       	cpi	r16, 0x0A	; 10
 4fe:	11 05       	cpc	r17, r1
 500:	18 f0       	brcs	.+6      	; 0x508 <_strntoll+0x11a>
                base-=7;    /* A=10 */
 502:	07 50       	subi	r16, 0x07	; 7
 504:	11 09       	sbc	r17, r1
 506:	05 c0       	rjmp	.+10     	; 0x512 <_strntoll+0x124>
            if (base<=0)
 508:	01 15       	cp	r16, r1
 50a:	11 05       	cpc	r17, r1
 50c:	11 f4       	brne	.+4      	; 0x512 <_strntoll+0x124>
                base=10;
 50e:	0a e0       	ldi	r16, 0x0A	; 10
 510:	10 e0       	ldi	r17, 0x00	; 0
            n++;
 512:	02 96       	adiw	r24, 0x02	; 2
            break;
 514:	06 c0       	rjmp	.+12     	; 0x522 <_strntoll+0x134>
        default:
            base=10;
 516:	0a e0       	ldi	r16, 0x0A	; 10
 518:	10 e0       	ldi	r17, 0x00	; 0
 51a:	03 c0       	rjmp	.+6      	; 0x522 <_strntoll+0x134>
        return 0;

    if (base == 0) {
        switch(x[n]) {
        case '0':
            base = 8; n++;
 51c:	c9 01       	movw	r24, r18
 51e:	08 e0       	ldi	r16, 0x08	; 8
 520:	10 e0       	ldi	r17, 0x00	; 0
 522:	94 01       	movw	r18, r8
 524:	28 0f       	add	r18, r24
 526:	39 1f       	adc	r19, r25
 528:	3c 87       	std	Y+12, r19	; 0x0c
 52a:	2b 87       	std	Y+11, r18	; 0x0b
            if (base<=0)
                base=10;
            n++;
            break;
        default:
            base=10;
 52c:	e0 e0       	ldi	r30, 0x00	; 0
 52e:	f0 e0       	ldi	r31, 0x00	; 0
 530:	1a 8e       	std	Y+26, r1	; 0x1a
 532:	1d 86       	std	Y+13, r1	; 0x0d
 534:	1e 86       	std	Y+14, r1	; 0x0e
 536:	1f 86       	std	Y+15, r1	; 0x0f
 538:	18 8a       	std	Y+16, r1	; 0x10
 53a:	19 8a       	std	Y+17, r1	; 0x11
                k-=32;
            k-='A';k+=10;
            if (k<10)
                break;
        }
        if (k>=base)
 53c:	a8 01       	movw	r20, r16
 53e:	60 e0       	ldi	r22, 0x00	; 0
 540:	70 e0       	ldi	r23, 0x00	; 0
 542:	80 e0       	ldi	r24, 0x00	; 0
 544:	90 e0       	ldi	r25, 0x00	; 0
 546:	dc 01       	movw	r26, r24
 548:	0b 83       	std	Y+3, r16	; 0x03
 54a:	5c 83       	std	Y+4, r21	; 0x04
 54c:	6d 83       	std	Y+5, r22	; 0x05
 54e:	7e 83       	std	Y+6, r23	; 0x06
 550:	8f 83       	std	Y+7, r24	; 0x07
 552:	98 87       	std	Y+8, r25	; 0x08
 554:	a9 87       	std	Y+9, r26	; 0x09
 556:	ba 87       	std	Y+10, r27	; 0x0a
 558:	8b 85       	ldd	r24, Y+11	; 0x0b
 55a:	9c 85       	ldd	r25, Y+12	; 0x0c
 55c:	88 19       	sub	r24, r8
 55e:	99 09       	sbc	r25, r9
            base=10;
            break;
        }
    }

    while (n<n_) {
 560:	82 15       	cp	r24, r2
 562:	93 05       	cpc	r25, r3
 564:	cc f4       	brge	.+50     	; 0x598 <_strntoll+0x1aa>
        k=x[n++];
 566:	ab 85       	ldd	r26, Y+11	; 0x0b
 568:	bc 85       	ldd	r27, Y+12	; 0x0c
 56a:	0d 91       	ld	r16, X+
 56c:	bc 87       	std	Y+12, r27	; 0x0c
 56e:	ab 87       	std	Y+11, r26	; 0x0b
 570:	10 2f       	mov	r17, r16
 572:	11 0f       	add	r17, r17
 574:	11 0b       	sbc	r17, r17
 576:	a1 2e       	mov	r10, r17
 578:	b1 2e       	mov	r11, r17
 57a:	c1 2e       	mov	r12, r17
 57c:	d1 2e       	mov	r13, r17
 57e:	e1 2e       	mov	r14, r17
 580:	f1 2e       	mov	r15, r17
        if (k<'0')
 582:	98 01       	movw	r18, r16
 584:	41 2f       	mov	r20, r17
 586:	51 2f       	mov	r21, r17
 588:	61 2f       	mov	r22, r17
 58a:	71 2f       	mov	r23, r17
 58c:	81 2f       	mov	r24, r17
 58e:	91 2f       	mov	r25, r17
 590:	af e2       	ldi	r26, 0x2F	; 47
 592:	20 d4       	rcall	.+2112   	; 0xdd4 <__cmpdi2_s8>
 594:	09 f0       	breq	.+2      	; 0x598 <_strntoll+0x1aa>
 596:	88 f4       	brcc	.+34     	; 0x5ba <_strntoll+0x1cc>
        if (k>=base)
            break;
        z = z * base + k;
    }

    return sign*(int64_t)z;
 598:	5f 01       	movw	r10, r30
 59a:	ca 8c       	ldd	r12, Y+26	; 0x1a
 59c:	dd 84       	ldd	r13, Y+13	; 0x0d
 59e:	ee 84       	ldd	r14, Y+14	; 0x0e
 5a0:	ff 84       	ldd	r15, Y+15	; 0x0f
 5a2:	08 89       	ldd	r16, Y+16	; 0x10
 5a4:	19 89       	ldd	r17, Y+17	; 0x11
 5a6:	2a 89       	ldd	r18, Y+18	; 0x12
 5a8:	3b 89       	ldd	r19, Y+19	; 0x13
 5aa:	4c 89       	ldd	r20, Y+20	; 0x14
 5ac:	5d 89       	ldd	r21, Y+21	; 0x15
 5ae:	6e 89       	ldd	r22, Y+22	; 0x16
 5b0:	7f 89       	ldd	r23, Y+23	; 0x17
 5b2:	88 8d       	ldd	r24, Y+24	; 0x18
 5b4:	99 8d       	ldd	r25, Y+25	; 0x19
 5b6:	6e d3       	rcall	.+1756   	; 0xc94 <__muldi3>
 5b8:	69 c0       	rjmp	.+210    	; 0x68c <_strntoll+0x29e>

    while (n<n_) {
        k=x[n++];
        if (k<'0')
            break;
        if (k>='0' && k<='9') {
 5ba:	98 01       	movw	r18, r16
 5bc:	41 2f       	mov	r20, r17
 5be:	51 2f       	mov	r21, r17
 5c0:	61 2f       	mov	r22, r17
 5c2:	71 2f       	mov	r23, r17
 5c4:	81 2f       	mov	r24, r17
 5c6:	91 2f       	mov	r25, r17
 5c8:	a0 ed       	ldi	r26, 0xD0	; 208
 5ca:	ef d3       	rcall	.+2014   	; 0xdaa <__adddi3_s8>
 5cc:	29 01       	movw	r4, r18
 5ce:	3a 01       	movw	r6, r20
 5d0:	69 83       	std	Y+1, r22	; 0x01
 5d2:	7a 83       	std	Y+2, r23	; 0x02
 5d4:	8c 8f       	std	Y+28, r24	; 0x1c
 5d6:	9b 8f       	std	Y+27, r25	; 0x1b
 5d8:	a9 e0       	ldi	r26, 0x09	; 9
 5da:	fc d3       	rcall	.+2040   	; 0xdd4 <__cmpdi2_s8>
 5dc:	19 f1       	breq	.+70     	; 0x624 <_strntoll+0x236>
 5de:	10 f1       	brcs	.+68     	; 0x624 <_strntoll+0x236>
            k-='0';
        } else {
            if (k>'Z')
 5e0:	98 01       	movw	r18, r16
 5e2:	41 2f       	mov	r20, r17
 5e4:	51 2f       	mov	r21, r17
 5e6:	61 2f       	mov	r22, r17
 5e8:	71 2f       	mov	r23, r17
 5ea:	81 2f       	mov	r24, r17
 5ec:	91 2f       	mov	r25, r17
 5ee:	aa e5       	ldi	r26, 0x5A	; 90
 5f0:	f1 d3       	rcall	.+2018   	; 0xdd4 <__cmpdi2_s8>
 5f2:	39 f0       	breq	.+14     	; 0x602 <_strntoll+0x214>
 5f4:	30 f0       	brcs	.+12     	; 0x602 <_strntoll+0x214>
                k-=32;
 5f6:	a0 ee       	ldi	r26, 0xE0	; 224
 5f8:	d8 d3       	rcall	.+1968   	; 0xdaa <__adddi3_s8>
 5fa:	89 01       	movw	r16, r18
 5fc:	5a 01       	movw	r10, r20
 5fe:	6b 01       	movw	r12, r22
 600:	7c 01       	movw	r14, r24
            k-='A';k+=10;
 602:	98 01       	movw	r18, r16
 604:	a5 01       	movw	r20, r10
 606:	b6 01       	movw	r22, r12
 608:	c7 01       	movw	r24, r14
 60a:	a9 ec       	ldi	r26, 0xC9	; 201
 60c:	ce d3       	rcall	.+1948   	; 0xdaa <__adddi3_s8>
 60e:	29 01       	movw	r4, r18
 610:	3a 01       	movw	r6, r20
 612:	69 83       	std	Y+1, r22	; 0x01
 614:	7a 83       	std	Y+2, r23	; 0x02
 616:	8c 8f       	std	Y+28, r24	; 0x1c
 618:	9b 8f       	std	Y+27, r25	; 0x1b
            if (k<10)
 61a:	a9 e0       	ldi	r26, 0x09	; 9
 61c:	db d3       	rcall	.+1974   	; 0xdd4 <__cmpdi2_s8>
 61e:	09 f0       	breq	.+2      	; 0x622 <_strntoll+0x234>
 620:	08 f4       	brcc	.+2      	; 0x624 <_strntoll+0x236>
 622:	ba cf       	rjmp	.-140    	; 0x598 <_strntoll+0x1aa>
                break;
        }
        if (k>=base)
 624:	92 01       	movw	r18, r4
 626:	a3 01       	movw	r20, r6
 628:	69 81       	ldd	r22, Y+1	; 0x01
 62a:	7a 81       	ldd	r23, Y+2	; 0x02
 62c:	8c 8d       	ldd	r24, Y+28	; 0x1c
 62e:	9b 8d       	ldd	r25, Y+27	; 0x1b
 630:	ab 80       	ldd	r10, Y+3	; 0x03
 632:	bc 80       	ldd	r11, Y+4	; 0x04
 634:	c1 2c       	mov	r12, r1
 636:	d1 2c       	mov	r13, r1
 638:	e1 2c       	mov	r14, r1
 63a:	f1 2c       	mov	r15, r1
 63c:	00 e0       	ldi	r16, 0x00	; 0
 63e:	10 e0       	ldi	r17, 0x00	; 0
 640:	c0 d3       	rcall	.+1920   	; 0xdc2 <__cmpdi2>
 642:	08 f0       	brcs	.+2      	; 0x646 <_strntoll+0x258>
 644:	a9 cf       	rjmp	.-174    	; 0x598 <_strntoll+0x1aa>
            break;
        z = z * base + k;
 646:	9f 01       	movw	r18, r30
 648:	4a 8d       	ldd	r20, Y+26	; 0x1a
 64a:	5d 85       	ldd	r21, Y+13	; 0x0d
 64c:	6e 85       	ldd	r22, Y+14	; 0x0e
 64e:	7f 85       	ldd	r23, Y+15	; 0x0f
 650:	88 89       	ldd	r24, Y+16	; 0x10
 652:	99 89       	ldd	r25, Y+17	; 0x11
 654:	1f d3       	rcall	.+1598   	; 0xc94 <__muldi3>
 656:	59 01       	movw	r10, r18
 658:	6a 01       	movw	r12, r20
 65a:	7b 01       	movw	r14, r22
 65c:	8c 01       	movw	r16, r24
 65e:	92 01       	movw	r18, r4
 660:	a3 01       	movw	r20, r6
 662:	69 81       	ldd	r22, Y+1	; 0x01
 664:	7a 81       	ldd	r23, Y+2	; 0x02
 666:	8c 8d       	ldd	r24, Y+28	; 0x1c
 668:	9b 8d       	ldd	r25, Y+27	; 0x1b
 66a:	96 d3       	rcall	.+1836   	; 0xd98 <__adddi3>
 66c:	f9 01       	movw	r30, r18
 66e:	4a 8f       	std	Y+26, r20	; 0x1a
 670:	5d 87       	std	Y+13, r21	; 0x0d
 672:	6e 87       	std	Y+14, r22	; 0x0e
 674:	7f 87       	std	Y+15, r23	; 0x0f
 676:	88 8b       	std	Y+16, r24	; 0x10
 678:	99 8b       	std	Y+17, r25	; 0x11
 67a:	6e cf       	rjmp	.-292    	; 0x558 <_strntoll+0x16a>
    if (n_<0) {
        n_=_strlen(x);
    }

    if (!n_)
        return 0;
 67c:	20 e0       	ldi	r18, 0x00	; 0
 67e:	30 e0       	ldi	r19, 0x00	; 0
 680:	40 e0       	ldi	r20, 0x00	; 0
 682:	50 e0       	ldi	r21, 0x00	; 0
 684:	60 e0       	ldi	r22, 0x00	; 0
 686:	70 e0       	ldi	r23, 0x00	; 0
 688:	80 e0       	ldi	r24, 0x00	; 0
 68a:	90 e0       	ldi	r25, 0x00	; 0
            break;
        z = z * base + k;
    }

    return sign*(int64_t)z;
}
 68c:	6c 96       	adiw	r28, 0x1c	; 28
 68e:	0f b6       	in	r0, 0x3f	; 63
 690:	f8 94       	cli
 692:	de bf       	out	0x3e, r29	; 62
 694:	0f be       	out	0x3f, r0	; 63
 696:	cd bf       	out	0x3d, r28	; 61
 698:	df 91       	pop	r29
 69a:	cf 91       	pop	r28
 69c:	1f 91       	pop	r17
 69e:	0f 91       	pop	r16
 6a0:	ff 90       	pop	r15
 6a2:	ef 90       	pop	r14
 6a4:	df 90       	pop	r13
 6a6:	cf 90       	pop	r12
 6a8:	bf 90       	pop	r11
 6aa:	af 90       	pop	r10
 6ac:	9f 90       	pop	r9
 6ae:	8f 90       	pop	r8
 6b0:	7f 90       	pop	r7
 6b2:	6f 90       	pop	r6
 6b4:	5f 90       	pop	r5
 6b6:	4f 90       	pop	r4
 6b8:	3f 90       	pop	r3
 6ba:	2f 90       	pop	r2
 6bc:	08 95       	ret

000006be <_ZN3SPI12setByte2XmitEc>:
     *  returns a value of type CircularBuffer::putres_et.
     *  If no error occurs the method returns CircularBuffer::WRITTEN,
     *  if a byte was inserted overwriting the circular buffer
     *  contents the method returns CircularBuffer::OVERWRITTEN,
     */
    inline CircularBuffer::putres_et setByte2Xmit(const char ch) {return m_tx.putByte(ch,true);}
 6be:	41 e0       	ldi	r20, 0x01	; 1
 6c0:	0d 96       	adiw	r24, 0x0d	; 13
 6c2:	38 ce       	rjmp	.-912    	; 0x334 <_ZN14CircularBuffer7putByteEcb>

000006c4 <_Z5setupv>:
void blink(uint32_t usec, int i, int led=0);
void spiCommSlv();
char execCmd(char *cmd);

void setup()
{
 6c4:	cf 92       	push	r12
 6c6:	df 92       	push	r13
 6c8:	ef 92       	push	r14
 6ca:	0f 93       	push	r16
    static char rx[32]; // may not be used directly!!!
    static char tx[32]; // may not be used directly!!!

    spi.begin(rx,sizeof(rx),tx,sizeof(tx));
 6cc:	c1 2c       	mov	r12, r1
 6ce:	d1 2c       	mov	r13, r1
 6d0:	e1 2c       	mov	r14, r1
 6d2:	00 e2       	ldi	r16, 0x20	; 32
 6d4:	21 ea       	ldi	r18, 0xA1	; 161
 6d6:	30 e0       	ldi	r19, 0x00	; 0
 6d8:	40 e2       	ldi	r20, 0x20	; 32
 6da:	61 ec       	ldi	r22, 0xC1	; 193
 6dc:	70 e0       	ldi	r23, 0x00	; 0
 6de:	81 ee       	ldi	r24, 0xE1	; 225
 6e0:	90 e0       	ldi	r25, 0x00	; 0
 6e2:	4e d2       	rcall	.+1180   	; 0xb80 <_ZN3SPI5beginEPKvhS1_hbj>

    DDRLED |= PLED; 	//LED output
 6e4:	bc 9a       	sbi	0x17, 4	; 23
    PORTLED &= ~PLED;   //Low (off)
 6e6:	c4 98       	cbi	0x18, 4	; 24

#ifdef DDRDEB
    DDRDEB |= PDEB; 	//PORTB4 output
 6e8:	bc 9a       	sbi	0x17, 4	; 23
    PORTDEB &= ~PDEB;   //PORTB4 Low (off)
 6ea:	c4 98       	cbi	0x18, 4	; 24
#endif

#if PCS != 0
    DDRCS &= ~PCS;	//Input
 6ec:	bb 98       	cbi	0x17, 3	; 23
    PORTCS |= PCS;	//Pull-up
 6ee:	c3 9a       	sbi	0x18, 3	; 24
#endif

    timer.begin();
 6f0:	89 ef       	ldi	r24, 0xF9	; 249
 6f2:	90 e0       	ldi	r25, 0x00	; 0
}
 6f4:	0f 91       	pop	r16
 6f6:	ef 90       	pop	r14
 6f8:	df 90       	pop	r13
 6fa:	cf 90       	pop	r12
#if PCS != 0
    DDRCS &= ~PCS;	//Input
    PORTCS |= PCS;	//Pull-up
#endif

    timer.begin();
 6fc:	6e cd       	rjmp	.-1316   	; 0x1da <_ZN7ATTimer5beginEv>

000006fe <_Z9toggleLedmi>:
    return 0;
}

void toggleLed(uint32_t wait_usec, int led)
{
    PORTB ^= (!led)?PLED:led; //Toggle!!
 6fe:	28 b3       	in	r18, 0x18	; 24
 700:	41 15       	cp	r20, r1
 702:	51 05       	cpc	r21, r1
 704:	09 f4       	brne	.+2      	; 0x708 <_Z9toggleLedmi+0xa>
 706:	40 e1       	ldi	r20, 0x10	; 16
 708:	42 27       	eor	r20, r18
 70a:	48 bb       	out	0x18, r20	; 24
    if (wait_usec)
 70c:	61 15       	cp	r22, r1
 70e:	71 05       	cpc	r23, r1
 710:	81 05       	cpc	r24, r1
 712:	91 05       	cpc	r25, r1
 714:	09 f0       	breq	.+2      	; 0x718 <_Z9toggleLedmi+0x1a>
        timer.udelay(wait_usec);
 716:	bc cc       	rjmp	.-1672   	; 0x90 <_ZN7ATTimer6udelayEm>
 718:	08 95       	ret

0000071a <_Z7execCmdPc>:
        }
    }
}

char execCmd(char *cmd)
{
 71a:	0f 93       	push	r16
 71c:	1f 93       	push	r17
 71e:	cf 93       	push	r28
 720:	df 93       	push	r29
 722:	00 d0       	rcall	.+0      	; 0x724 <_Z7execCmdPc+0xa>
 724:	00 d0       	rcall	.+0      	; 0x726 <_Z7execCmdPc+0xc>
 726:	cd b7       	in	r28, 0x3d	; 61
 728:	de b7       	in	r29, 0x3e	; 62
 72a:	8c 01       	movw	r16, r24
    //cmd = lnnnnnn => l"edtime" nnnnnn=usec
    if (cmd[0]=='l') {
 72c:	fc 01       	movw	r30, r24
 72e:	80 81       	ld	r24, Z
 730:	8c 36       	cpi	r24, 0x6C	; 108
 732:	a1 f4       	brne	.+40     	; 0x75c <_Z7execCmdPc+0x42>
        if (!*(cmd+1))
 734:	81 81       	ldd	r24, Z+1	; 0x01
 736:	88 23       	and	r24, r24
 738:	09 f4       	brne	.+2      	; 0x73c <_Z7execCmdPc+0x22>
 73a:	6d c0       	rjmp	.+218    	; 0x816 <_Z7execCmdPc+0xfc>
            return 'T';

        ledtime=_strntoll(cmd+1,-1,0);
 73c:	40 e0       	ldi	r20, 0x00	; 0
 73e:	50 e0       	ldi	r21, 0x00	; 0
 740:	6f ef       	ldi	r22, 0xFF	; 255
 742:	7f ef       	ldi	r23, 0xFF	; 255
 744:	c8 01       	movw	r24, r16
 746:	01 96       	adiw	r24, 0x01	; 1
 748:	52 de       	rcall	.-860    	; 0x3ee <_strntoll>
 74a:	20 93 65 00 	sts	0x0065, r18
 74e:	30 93 66 00 	sts	0x0066, r19
 752:	40 93 67 00 	sts	0x0067, r20
 756:	50 93 68 00 	sts	0x0068, r21
 75a:	5b c0       	rjmp	.+182    	; 0x812 <_Z7execCmdPc+0xf8>
        return 0;
    }

    //cmd = bLttmmmmmm => b"link" L=Led[0|1] tt=times mmm...=msec
    if (cmd[0]=='b') {
 75c:	82 36       	cpi	r24, 0x62	; 98
 75e:	79 f5       	brne	.+94     	; 0x7be <_Z7execCmdPc+0xa4>
        blk.times=0;
 760:	10 92 62 00 	sts	0x0062, r1

        if (!*(cmd+1))
 764:	f8 01       	movw	r30, r16
 766:	81 81       	ldd	r24, Z+1	; 0x01
 768:	88 23       	and	r24, r24
 76a:	09 f4       	brne	.+2      	; 0x76e <_Z7execCmdPc+0x54>
 76c:	56 c0       	rjmp	.+172    	; 0x81a <_Z7execCmdPc+0x100>
            return 0x41;
        uint8_t x=_strntoll(cmd+1,1,0);
 76e:	40 e0       	ldi	r20, 0x00	; 0
 770:	50 e0       	ldi	r21, 0x00	; 0
 772:	61 e0       	ldi	r22, 0x01	; 1
 774:	70 e0       	ldi	r23, 0x00	; 0
 776:	c8 01       	movw	r24, r16
 778:	01 96       	adiw	r24, 0x01	; 1
 77a:	39 de       	rcall	.-910    	; 0x3ee <_strntoll>
        blk.timeled=(x==0)?PLED:PDEB;
 77c:	80 e1       	ldi	r24, 0x10	; 16
 77e:	80 93 61 00 	sts	0x0061, r24

        if (!*(cmd+4))
 782:	f8 01       	movw	r30, r16
 784:	84 81       	ldd	r24, Z+4	; 0x04
 786:	88 23       	and	r24, r24
 788:	09 f4       	brne	.+2      	; 0x78c <_Z7execCmdPc+0x72>
 78a:	49 c0       	rjmp	.+146    	; 0x81e <_Z7execCmdPc+0x104>
            return 0x42;
        blk.msec=_strntoll(cmd+4,-1,0);
 78c:	40 e0       	ldi	r20, 0x00	; 0
 78e:	50 e0       	ldi	r21, 0x00	; 0
 790:	6f ef       	ldi	r22, 0xFF	; 255
 792:	7f ef       	ldi	r23, 0xFF	; 255
 794:	c8 01       	movw	r24, r16
 796:	04 96       	adiw	r24, 0x04	; 4
 798:	2a de       	rcall	.-940    	; 0x3ee <_strntoll>
 79a:	20 93 63 00 	sts	0x0063, r18
 79e:	30 93 64 00 	sts	0x0064, r19

        if (!*(cmd+2))
 7a2:	f8 01       	movw	r30, r16
 7a4:	82 81       	ldd	r24, Z+2	; 0x02
 7a6:	88 23       	and	r24, r24
 7a8:	e1 f1       	breq	.+120    	; 0x822 <_Z7execCmdPc+0x108>
            return 0x43;
        blk.times=_strntoll(cmd+2,2,0);
 7aa:	40 e0       	ldi	r20, 0x00	; 0
 7ac:	50 e0       	ldi	r21, 0x00	; 0
 7ae:	62 e0       	ldi	r22, 0x02	; 2
 7b0:	70 e0       	ldi	r23, 0x00	; 0
 7b2:	c8 01       	movw	r24, r16
 7b4:	02 96       	adiw	r24, 0x02	; 2
 7b6:	1b de       	rcall	.-970    	; 0x3ee <_strntoll>
 7b8:	20 93 62 00 	sts	0x0062, r18
 7bc:	2a c0       	rjmp	.+84     	; 0x812 <_Z7execCmdPc+0xf8>

        return 0;
    }

    //cmd = t => t"imespec"
    if (cmd[0]=='t') {
 7be:	84 37       	cpi	r24, 0x74	; 116
 7c0:	91 f5       	brne	.+100    	; 0x826 <_Z7execCmdPc+0x10c>
        spi.setData2Xmit((uint16_t)TICK_ns_10th);
 7c2:	81 e7       	ldi	r24, 0x71	; 113
 7c4:	92 e0       	ldi	r25, 0x02	; 2
 7c6:	9a 83       	std	Y+2, r25	; 0x02
 7c8:	89 83       	std	Y+1, r24	; 0x01
     *
     * @return
     *          returns the number of bytes put into the buffer
     */
    inline m_size setData2Xmit(const void *tx, m_size len)
        {return m_tx.putData((char *)tx,len,true);}
 7ca:	21 e0       	ldi	r18, 0x01	; 1
 7cc:	42 e0       	ldi	r20, 0x02	; 2
 7ce:	be 01       	movw	r22, r28
 7d0:	6f 5f       	subi	r22, 0xFF	; 255
 7d2:	7f 4f       	sbci	r23, 0xFF	; 255
 7d4:	8e ee       	ldi	r24, 0xEE	; 238
 7d6:	90 e0       	ldi	r25, 0x00	; 0
 7d8:	d7 dd       	rcall	.-1106   	; 0x388 <_ZN14CircularBuffer7putDataEPKchb>
        spi.setData2Xmit((uint16_t)timer.uTick());
 7da:	89 ef       	ldi	r24, 0xF9	; 249
 7dc:	90 e0       	ldi	r25, 0x00	; 0
 7de:	23 dd       	rcall	.-1466   	; 0x226 <_ZN7ATTimer5uTickEv>
 7e0:	7a 83       	std	Y+2, r23	; 0x02
 7e2:	69 83       	std	Y+1, r22	; 0x01
 7e4:	21 e0       	ldi	r18, 0x01	; 1
 7e6:	42 e0       	ldi	r20, 0x02	; 2
 7e8:	be 01       	movw	r22, r28
 7ea:	6f 5f       	subi	r22, 0xFF	; 255
 7ec:	7f 4f       	sbci	r23, 0xFF	; 255
 7ee:	8e ee       	ldi	r24, 0xEE	; 238
 7f0:	90 e0       	ldi	r25, 0x00	; 0
 7f2:	ca dd       	rcall	.-1132   	; 0x388 <_ZN14CircularBuffer7putDataEPKchb>
        spi.setData2Xmit((uint32_t)timer.baseTime());
 7f4:	89 ef       	ldi	r24, 0xF9	; 249
 7f6:	90 e0       	ldi	r25, 0x00	; 0
 7f8:	71 dc       	rcall	.-1822   	; 0xdc <_ZN7ATTimer8baseTimeEv>
 7fa:	29 83       	std	Y+1, r18	; 0x01
 7fc:	3a 83       	std	Y+2, r19	; 0x02
 7fe:	4b 83       	std	Y+3, r20	; 0x03
 800:	5c 83       	std	Y+4, r21	; 0x04
 802:	21 e0       	ldi	r18, 0x01	; 1
 804:	44 e0       	ldi	r20, 0x04	; 4
 806:	be 01       	movw	r22, r28
 808:	6f 5f       	subi	r22, 0xFF	; 255
 80a:	7f 4f       	sbci	r23, 0xFF	; 255
 80c:	8e ee       	ldi	r24, 0xEE	; 238
 80e:	90 e0       	ldi	r25, 0x00	; 0
 810:	bb dd       	rcall	.-1162   	; 0x388 <_ZN14CircularBuffer7putDataEPKchb>
        return 0;
 812:	80 e0       	ldi	r24, 0x00	; 0
 814:	09 c0       	rjmp	.+18     	; 0x828 <_Z7execCmdPc+0x10e>
char execCmd(char *cmd)
{
    //cmd = lnnnnnn => l"edtime" nnnnnn=usec
    if (cmd[0]=='l') {
        if (!*(cmd+1))
            return 'T';
 816:	84 e5       	ldi	r24, 0x54	; 84
 818:	07 c0       	rjmp	.+14     	; 0x828 <_Z7execCmdPc+0x10e>
    //cmd = bLttmmmmmm => b"link" L=Led[0|1] tt=times mmm...=msec
    if (cmd[0]=='b') {
        blk.times=0;

        if (!*(cmd+1))
            return 0x41;
 81a:	81 e4       	ldi	r24, 0x41	; 65
 81c:	05 c0       	rjmp	.+10     	; 0x828 <_Z7execCmdPc+0x10e>
        uint8_t x=_strntoll(cmd+1,1,0);
        blk.timeled=(x==0)?PLED:PDEB;

        if (!*(cmd+4))
            return 0x42;
 81e:	82 e4       	ldi	r24, 0x42	; 66
 820:	03 c0       	rjmp	.+6      	; 0x828 <_Z7execCmdPc+0x10e>
        blk.msec=_strntoll(cmd+4,-1,0);

        if (!*(cmd+2))
            return 0x43;
 822:	83 e4       	ldi	r24, 0x43	; 67
 824:	01 c0       	rjmp	.+2      	; 0x828 <_Z7execCmdPc+0x10e>
        spi.setData2Xmit((uint16_t)timer.uTick());
        spi.setData2Xmit((uint32_t)timer.baseTime());
        return 0;
    }

    return 0xEE;
 826:	8e ee       	ldi	r24, 0xEE	; 238
}
 828:	0f 90       	pop	r0
 82a:	0f 90       	pop	r0
 82c:	0f 90       	pop	r0
 82e:	0f 90       	pop	r0
 830:	df 91       	pop	r29
 832:	cf 91       	pop	r28
 834:	1f 91       	pop	r17
 836:	0f 91       	pop	r16
 838:	08 95       	ret

0000083a <_Z10spiCommSlvv>:
    for(;i!=0;i--)
        toggleLed(usec,led);
}

void spiCommSlv()
{
 83a:	cf 93       	push	r28
 83c:	df 93       	push	r29
     * @return
     *          returns the byte taken from the receive
     *          buffer or -1 if there're no bytes in the
     *          buffer.
     */
    inline int getRcvdByte() {return m_rx.getByte();}
 83e:	87 ee       	ldi	r24, 0xE7	; 231
 840:	90 e0       	ldi	r25, 0x00	; 0
 842:	5e dd       	rcall	.-1348   	; 0x300 <_ZN14CircularBuffer7getByteEv>
    static int cmdb=0;
    static char cmd[16];
    int j;
    while( !((j=spi.getRcvdByte())<0) ) {
 844:	97 fd       	sbrc	r25, 7
 846:	49 c0       	rjmp	.+146    	; 0x8da <_Z10spiCommSlvv+0xa0>
        if (j==0xFF)
 848:	8f 3f       	cpi	r24, 0xFF	; 255
 84a:	91 05       	cpc	r25, r1
 84c:	c1 f3       	breq	.-16     	; 0x83e <_Z10spiCommSlvv+0x4>
            continue;

        cmd[cmdb]=j;
 84e:	20 91 8e 00 	lds	r18, 0x008E
 852:	30 91 8f 00 	lds	r19, 0x008F
 856:	f9 01       	movw	r30, r18
 858:	e2 58       	subi	r30, 0x82	; 130
 85a:	ff 4f       	sbci	r31, 0xFF	; 255
 85c:	80 83       	st	Z, r24

        if (cmd[cmdb]=='#') {
 85e:	83 32       	cpi	r24, 0x23	; 35
 860:	e1 f4       	brne	.+56     	; 0x89a <_Z10spiCommSlvv+0x60>
            if (cmdb==0)
 862:	23 2b       	or	r18, r19
 864:	61 f3       	breq	.-40     	; 0x83e <_Z10spiCommSlvv+0x4>
                continue;
            cmd[cmdb]=0;
 866:	10 82       	st	Z, r1
            spi.setByte2Xmit(cmd[0]);
 868:	60 91 7e 00 	lds	r22, 0x007E
 86c:	81 ee       	ldi	r24, 0xE1	; 225
 86e:	90 e0       	ldi	r25, 0x00	; 0
 870:	26 df       	rcall	.-436    	; 0x6be <_ZN3SPI12setByte2XmitEc>
            if ( (cmd[cmdb]=execCmd(cmd))!=0 ) {
 872:	c0 91 8e 00 	lds	r28, 0x008E
 876:	d0 91 8f 00 	lds	r29, 0x008F
 87a:	8e e7       	ldi	r24, 0x7E	; 126
 87c:	90 e0       	ldi	r25, 0x00	; 0
 87e:	4d df       	rcall	.-358    	; 0x71a <_Z7execCmdPc>
 880:	c2 58       	subi	r28, 0x82	; 130
 882:	df 4f       	sbci	r29, 0xFF	; 255
 884:	88 83       	st	Y, r24
 886:	81 11       	cpse	r24, r1
 888:	15 c0       	rjmp	.+42     	; 0x8b4 <_Z10spiCommSlvv+0x7a>
     *
     * @return
     *          returns the number of bytes put into the buffer
     */
    inline m_size setData2Xmit(const void *tx, m_size len)
        {return m_tx.putData((char *)tx,len,true);}
 88a:	21 e0       	ldi	r18, 0x01	; 1
 88c:	42 e0       	ldi	r20, 0x02	; 2
 88e:	69 e6       	ldi	r22, 0x69	; 105
 890:	70 e0       	ldi	r23, 0x00	; 0
 892:	8e ee       	ldi	r24, 0xEE	; 238
 894:	90 e0       	ldi	r25, 0x00	; 0
 896:	78 dd       	rcall	.-1296   	; 0x388 <_ZN14CircularBuffer7putDataEPKchb>
 898:	1b c0       	rjmp	.+54     	; 0x8d0 <_Z10spiCommSlvv+0x96>
                spi.setData2Xmit("OK",2);
            }

            cmdb=0;
        } else {
            cmdb++;
 89a:	2f 5f       	subi	r18, 0xFF	; 255
 89c:	3f 4f       	sbci	r19, 0xFF	; 255
 89e:	30 93 8f 00 	sts	0x008F, r19
 8a2:	20 93 8e 00 	sts	0x008E, r18
            if (cmdb==16) {
 8a6:	20 31       	cpi	r18, 0x10	; 16
 8a8:	31 05       	cpc	r19, r1
 8aa:	49 f6       	brne	.-110    	; 0x83e <_Z10spiCommSlvv+0x4>
                spi.setByte2Xmit('Z');
 8ac:	6a e5       	ldi	r22, 0x5A	; 90
 8ae:	81 ee       	ldi	r24, 0xE1	; 225
 8b0:	90 e0       	ldi	r25, 0x00	; 0
 8b2:	05 df       	rcall	.-502    	; 0x6be <_ZN3SPI12setByte2XmitEc>
                spi.setByte2Xmit('?');
 8b4:	6f e3       	ldi	r22, 0x3F	; 63
 8b6:	81 ee       	ldi	r24, 0xE1	; 225
 8b8:	90 e0       	ldi	r25, 0x00	; 0
 8ba:	01 df       	rcall	.-510    	; 0x6be <_ZN3SPI12setByte2XmitEc>
                spi.setByte2Xmit(cmd[cmdb]);
 8bc:	e0 91 8e 00 	lds	r30, 0x008E
 8c0:	f0 91 8f 00 	lds	r31, 0x008F
 8c4:	e2 58       	subi	r30, 0x82	; 130
 8c6:	ff 4f       	sbci	r31, 0xFF	; 255
 8c8:	60 81       	ld	r22, Z
 8ca:	81 ee       	ldi	r24, 0xE1	; 225
 8cc:	90 e0       	ldi	r25, 0x00	; 0
 8ce:	f7 de       	rcall	.-530    	; 0x6be <_ZN3SPI12setByte2XmitEc>
                cmdb=0;
 8d0:	10 92 8f 00 	sts	0x008F, r1
 8d4:	10 92 8e 00 	sts	0x008E, r1
 8d8:	b2 cf       	rjmp	.-156    	; 0x83e <_Z10spiCommSlvv+0x4>
            }
        }
    }
}
 8da:	df 91       	pop	r29
 8dc:	cf 91       	pop	r28
 8de:	08 95       	ret

000008e0 <main>:
#include "reg/timing.h"
#include "fnasm.h"

inline void inithw()
{
    uint8_t sr=SREG;
 8e0:	9f b7       	in	r25, 0x3f	; 63
    cli();
 8e2:	f8 94       	cli

#ifdef __AVR_ATtiny85__
    //Disable PLL
    PLLSCR &= ~(PLLE | PCKE);
 8e4:	87 b5       	in	r24, 0x27	; 39
 8e6:	89 7f       	andi	r24, 0xF9	; 249
 8e8:	87 bd       	out	0x27, r24	; 39
    nop();
 8ea:	00 00       	nop
#endif

    // Change prescaler
    CLKPR = CLKPCE;					//Start prescaler update
 8ec:	80 e8       	ldi	r24, 0x80	; 128
 8ee:	86 bd       	out	0x26, r24	; 38
    CLKPR = SELCLKPS(CLKPS_DIV);	//Prescaler CLK Divisor = 1 (1<<0) [ (*1) - register.h ]
 8f0:	16 bc       	out	0x26, r1	; 38
    nop();
 8f2:	00 00       	nop

    SREG=sr;
 8f4:	9f bf       	out	0x3f, r25	; 63

    //Global Timer CR
    GTCCR = 0;
 8f6:	1c bc       	out	0x2c, r1	; 44
    TIMSK1 = 0;
    TIMSK0 = 0;
#endif

#ifdef __AVR_ATtiny85__
    TIMSK = 0;
 8f8:	19 be       	out	0x39, r1	; 57
    static uint32_t tled=0,tled2=0;
    static uint64_t	t0;
    static uint8_t csStatus,k1=0xFF;

    inithw();
    setup();
 8fa:	e4 de       	rcall	.-568    	; 0x6c4 <_Z5setupv>

    timer.reset();
 8fc:	89 ef       	ldi	r24, 0xF9	; 249
 8fe:	90 e0       	ldi	r25, 0x00	; 0
 900:	26 dc       	rcall	.-1972   	; 0x14e <_ZN7ATTimer5resetEv>
    t0=timer.baseTime();
 902:	89 ef       	ldi	r24, 0xF9	; 249
 904:	90 e0       	ldi	r25, 0x00	; 0
 906:	ea db       	rcall	.-2092   	; 0xdc <_ZN7ATTimer8baseTimeEv>
 908:	20 93 99 00 	sts	0x0099, r18
 90c:	30 93 9a 00 	sts	0x009A, r19
 910:	40 93 9b 00 	sts	0x009B, r20
 914:	50 93 9c 00 	sts	0x009C, r21
 918:	60 93 9d 00 	sts	0x009D, r22
 91c:	70 93 9e 00 	sts	0x009E, r23
 920:	80 93 9f 00 	sts	0x009F, r24
 924:	90 93 a0 00 	sts	0x00A0, r25
    return 0;
}

void toggleLed(uint32_t wait_usec, int led)
{
    PORTB ^= (!led)?PLED:led; //Toggle!!
 928:	c0 e1       	ldi	r28, 0x10	; 16
    timer.reset();
    t0=timer.baseTime();

    for(;;) //forever!!!
    {
        if (tled<=cycleTime) {
 92a:	40 91 95 00 	lds	r20, 0x0095
 92e:	50 91 96 00 	lds	r21, 0x0096
 932:	60 91 97 00 	lds	r22, 0x0097
 936:	70 91 98 00 	lds	r23, 0x0098
 93a:	80 91 f5 00 	lds	r24, 0x00F5
 93e:	90 91 f6 00 	lds	r25, 0x00F6
 942:	a0 91 f7 00 	lds	r26, 0x00F7
 946:	b0 91 f8 00 	lds	r27, 0x00F8
 94a:	84 17       	cp	r24, r20
 94c:	95 07       	cpc	r25, r21
 94e:	a6 07       	cpc	r26, r22
 950:	b7 07       	cpc	r27, r23
 952:	a0 f0       	brcs	.+40     	; 0x97c <main+0x9c>
    return 0;
}

void toggleLed(uint32_t wait_usec, int led)
{
    PORTB ^= (!led)?PLED:led; //Toggle!!
 954:	88 b3       	in	r24, 0x18	; 24
 956:	8c 27       	eor	r24, r28
 958:	88 bb       	out	0x18, r24	; 24

    for(;;) //forever!!!
    {
        if (tled<=cycleTime) {
            toggleLed();
            tled=ledtime;
 95a:	80 91 65 00 	lds	r24, 0x0065
 95e:	90 91 66 00 	lds	r25, 0x0066
 962:	a0 91 67 00 	lds	r26, 0x0067
 966:	b0 91 68 00 	lds	r27, 0x0068
 96a:	80 93 95 00 	sts	0x0095, r24
 96e:	90 93 96 00 	sts	0x0096, r25
 972:	a0 93 97 00 	sts	0x0097, r26
 976:	b0 93 98 00 	sts	0x0098, r27
 97a:	0c c0       	rjmp	.+24     	; 0x994 <main+0xb4>
        } else {
            tled-=cycleTime;
 97c:	48 1b       	sub	r20, r24
 97e:	59 0b       	sbc	r21, r25
 980:	6a 0b       	sbc	r22, r26
 982:	7b 0b       	sbc	r23, r27
 984:	40 93 95 00 	sts	0x0095, r20
 988:	50 93 96 00 	sts	0x0096, r21
 98c:	60 93 97 00 	sts	0x0097, r22
 990:	70 93 98 00 	sts	0x0098, r23
        }

        if (blk.times) {
 994:	80 91 62 00 	lds	r24, 0x0062
 998:	88 23       	and	r24, r24
 99a:	09 f4       	brne	.+2      	; 0x99e <main+0xbe>
 99c:	4f c0       	rjmp	.+158    	; 0xa3c <main+0x15c>
            //blink(_mSec(blk.msec),blk.times,blk.timeled);
            if (tled2<=cycleTime) {
 99e:	40 91 91 00 	lds	r20, 0x0091
 9a2:	50 91 92 00 	lds	r21, 0x0092
 9a6:	60 91 93 00 	lds	r22, 0x0093
 9aa:	70 91 94 00 	lds	r23, 0x0094
 9ae:	80 91 f5 00 	lds	r24, 0x00F5
 9b2:	90 91 f6 00 	lds	r25, 0x00F6
 9b6:	a0 91 f7 00 	lds	r26, 0x00F7
 9ba:	b0 91 f8 00 	lds	r27, 0x00F8
 9be:	84 17       	cp	r24, r20
 9c0:	95 07       	cpc	r25, r21
 9c2:	a6 07       	cpc	r26, r22
 9c4:	b7 07       	cpc	r27, r23
 9c6:	70 f1       	brcs	.+92     	; 0xa24 <main+0x144>
                toggleLed(0,blk.timeled);
 9c8:	40 91 61 00 	lds	r20, 0x0061
 9cc:	50 e0       	ldi	r21, 0x00	; 0
 9ce:	60 e0       	ldi	r22, 0x00	; 0
 9d0:	70 e0       	ldi	r23, 0x00	; 0
 9d2:	cb 01       	movw	r24, r22
 9d4:	94 de       	rcall	.-728    	; 0x6fe <_Z9toggleLedmi>
                blk.times--;
 9d6:	80 91 62 00 	lds	r24, 0x0062
 9da:	81 50       	subi	r24, 0x01	; 1
 9dc:	80 93 62 00 	sts	0x0062, r24
                tled2=(!blk.times)?0:_mSec(blk.msec);
 9e0:	88 23       	and	r24, r24
 9e2:	99 f0       	breq	.+38     	; 0xa0a <main+0x12a>
 9e4:	60 91 63 00 	lds	r22, 0x0063
 9e8:	70 91 64 00 	lds	r23, 0x0064
 9ec:	88 27       	eor	r24, r24
 9ee:	77 fd       	sbrc	r23, 7
 9f0:	80 95       	com	r24
 9f2:	98 2f       	mov	r25, r24
 9f4:	28 ee       	ldi	r18, 0xE8	; 232
 9f6:	33 e0       	ldi	r19, 0x03	; 3
 9f8:	40 e0       	ldi	r20, 0x00	; 0
 9fa:	50 e0       	ldi	r21, 0x00	; 0
 9fc:	7b d1       	rcall	.+758    	; 0xcf4 <__umulsidi3>
 9fe:	72 2f       	mov	r23, r18
 a00:	63 2f       	mov	r22, r19
 a02:	94 2f       	mov	r25, r20
 a04:	85 2f       	mov	r24, r21
 a06:	9b 01       	movw	r18, r22
 a08:	04 c0       	rjmp	.+8      	; 0xa12 <main+0x132>
 a0a:	30 e0       	ldi	r19, 0x00	; 0
 a0c:	20 e0       	ldi	r18, 0x00	; 0
 a0e:	90 e0       	ldi	r25, 0x00	; 0
 a10:	80 e0       	ldi	r24, 0x00	; 0
 a12:	30 93 91 00 	sts	0x0091, r19
 a16:	20 93 92 00 	sts	0x0092, r18
 a1a:	90 93 93 00 	sts	0x0093, r25
 a1e:	80 93 94 00 	sts	0x0094, r24
 a22:	0c c0       	rjmp	.+24     	; 0xa3c <main+0x15c>
            } else {
                tled2-=cycleTime;
 a24:	48 1b       	sub	r20, r24
 a26:	59 0b       	sbc	r21, r25
 a28:	6a 0b       	sbc	r22, r26
 a2a:	7b 0b       	sbc	r23, r27
 a2c:	40 93 91 00 	sts	0x0091, r20
 a30:	50 93 92 00 	sts	0x0092, r21
 a34:	60 93 93 00 	sts	0x0093, r22
 a38:	70 93 94 00 	sts	0x0094, r23
            }
        }

        //Manage CS
        csStatus=(PINCS & PCS);
 a3c:	86 b3       	in	r24, 0x16	; 22
 a3e:	88 70       	andi	r24, 0x08	; 8
 a40:	80 93 90 00 	sts	0x0090, r24
        if (csStatus!=k1) {
 a44:	90 91 60 00 	lds	r25, 0x0060
 a48:	89 17       	cp	r24, r25
 a4a:	41 f0       	breq	.+16     	; 0xa5c <main+0x17c>
            k1=csStatus;
 a4c:	80 93 60 00 	sts	0x0060, r24
            spi.enabled((csStatus)?false:true);
 a50:	61 e0       	ldi	r22, 0x01	; 1
 a52:	81 11       	cpse	r24, r1
 a54:	60 e0       	ldi	r22, 0x00	; 0
 a56:	81 ee       	ldi	r24, 0xE1	; 225
 a58:	90 e0       	ldi	r25, 0x00	; 0
 a5a:	c0 d0       	rcall	.+384    	; 0xbdc <_ZN3SPI7enabledEb>
        }

        if (!csStatus) { //IF there's a CS (CS Low active)
 a5c:	80 91 90 00 	lds	r24, 0x0090
 a60:	81 11       	cpse	r24, r1
 a62:	0f c0       	rjmp	.+30     	; 0xa82 <main+0x1a2>
     * @brief dataSize
     * @return
     *  returns the amount of data inside the buffer.
     */
    inline m_size dataSize() {
        return ((overflow)?bufferDim():__CIRCBUFFDIM());}
 a64:	90 91 ec 00 	lds	r25, 0x00EC
 a68:	80 91 e7 00 	lds	r24, 0x00E7
 a6c:	91 11       	cpse	r25, r1
 a6e:	07 c0       	rjmp	.+14     	; 0xa7e <main+0x19e>
 a70:	90 91 e9 00 	lds	r25, 0x00E9
 a74:	20 91 e8 00 	lds	r18, 0x00E8
 a78:	81 50       	subi	r24, 0x01	; 1
 a7a:	92 1b       	sub	r25, r18
 a7c:	89 23       	and	r24, r25
            if (spi.getRcvdDataSize()) {
 a7e:	81 11       	cpse	r24, r1
                spiCommSlv();
 a80:	dc de       	rcall	.-584    	; 0x83a <_Z10spiCommSlvv>
            }
        }

        cycleTime=-(uint32_t)t0; t0=timer.baseTime(); cycleTime+=(uint32_t)t0;
 a82:	80 91 99 00 	lds	r24, 0x0099
 a86:	90 91 9a 00 	lds	r25, 0x009A
 a8a:	a0 91 9b 00 	lds	r26, 0x009B
 a8e:	b0 91 9c 00 	lds	r27, 0x009C
 a92:	b0 95       	com	r27
 a94:	a0 95       	com	r26
 a96:	90 95       	com	r25
 a98:	81 95       	neg	r24
 a9a:	9f 4f       	sbci	r25, 0xFF	; 255
 a9c:	af 4f       	sbci	r26, 0xFF	; 255
 a9e:	bf 4f       	sbci	r27, 0xFF	; 255
 aa0:	80 93 f5 00 	sts	0x00F5, r24
 aa4:	90 93 f6 00 	sts	0x00F6, r25
 aa8:	a0 93 f7 00 	sts	0x00F7, r26
 aac:	b0 93 f8 00 	sts	0x00F8, r27
 ab0:	89 ef       	ldi	r24, 0xF9	; 249
 ab2:	90 e0       	ldi	r25, 0x00	; 0
 ab4:	13 db       	rcall	.-2522   	; 0xdc <_ZN7ATTimer8baseTimeEv>
 ab6:	49 01       	movw	r8, r18
 ab8:	5a 01       	movw	r10, r20
 aba:	6b 01       	movw	r12, r22
 abc:	7c 01       	movw	r14, r24
 abe:	20 93 99 00 	sts	0x0099, r18
 ac2:	90 92 9a 00 	sts	0x009A, r9
 ac6:	40 93 9b 00 	sts	0x009B, r20
 aca:	b0 92 9c 00 	sts	0x009C, r11
 ace:	60 93 9d 00 	sts	0x009D, r22
 ad2:	d0 92 9e 00 	sts	0x009E, r13
 ad6:	80 93 9f 00 	sts	0x009F, r24
 ada:	f0 92 a0 00 	sts	0x00A0, r15
 ade:	80 91 f5 00 	lds	r24, 0x00F5
 ae2:	90 91 f6 00 	lds	r25, 0x00F6
 ae6:	a0 91 f7 00 	lds	r26, 0x00F7
 aea:	b0 91 f8 00 	lds	r27, 0x00F8
 aee:	88 0d       	add	r24, r8
 af0:	99 1d       	adc	r25, r9
 af2:	aa 1d       	adc	r26, r10
 af4:	bb 1d       	adc	r27, r11
 af6:	80 93 f5 00 	sts	0x00F5, r24
 afa:	90 93 f6 00 	sts	0x00F6, r25
 afe:	a0 93 f7 00 	sts	0x00F7, r26
 b02:	b0 93 f8 00 	sts	0x00F8, r27
    }

    return 0;
 b06:	11 cf       	rjmp	.-478    	; 0x92a <main+0x4a>

00000b08 <_GLOBAL__sub_I_timer>:
#define PORTCS	PORTB
#define DDRCS	DDRB
#define PINCS	PINB
#endif

ATTimer timer;
 b08:	89 ef       	ldi	r24, 0xF9	; 249
 b0a:	90 e0       	ldi	r25, 0x00	; 0
 b0c:	b0 da       	rcall	.-2720   	; 0x6e <_ZN7ATTimerC1Ev>
    int msec;
} blk_st;

blk_st blk={PLED,10,100};

SPI spi;
 b0e:	81 ee       	ldi	r24, 0xE1	; 225
 b10:	90 e0       	ldi	r25, 0x00	; 0
 b12:	14 c0       	rjmp	.+40     	; 0xb3c <_ZN3SPIC1Ev>

00000b14 <_GLOBAL__sub_D_timer>:
 b14:	81 ee       	ldi	r24, 0xE1	; 225
 b16:	90 e0       	ldi	r25, 0x00	; 0
 b18:	29 d0       	rcall	.+82     	; 0xb6c <_ZN3SPID1Ev>
#define PORTCS	PORTB
#define DDRCS	DDRB
#define PINCS	PINB
#endif

ATTimer timer;
 b1a:	89 ef       	ldi	r24, 0xF9	; 249
 b1c:	90 e0       	ldi	r25, 0x00	; 0
 b1e:	b7 ca       	rjmp	.-2706   	; 0x8e <_ZN7ATTimerD1Ev>

00000b20 <_ZN14CircularBuffer11evalBuffDimEh>:
#ifndef __AVR__
    bool m_intalloc;
#endif

#ifdef CIRCBUFF_POW2DIM
    inline void evalBuffDim(m_size lmem) {
 b20:	fc 01       	movw	r30, r24
        m_bufferDim=-1;
        m_bufferDim>>=1;
        m_bufferDim+=1;
 b22:	80 e8       	ldi	r24, 0x80	; 128
        while(m_bufferDim && !(lmem&m_bufferDim))
            m_bufferDim>>=1;
 b24:	80 83       	st	Z, r24
#ifdef CIRCBUFF_POW2DIM
    inline void evalBuffDim(m_size lmem) {
        m_bufferDim=-1;
        m_bufferDim>>=1;
        m_bufferDim+=1;
        while(m_bufferDim && !(lmem&m_bufferDim))
 b26:	80 81       	ld	r24, Z
 b28:	88 23       	and	r24, r24
 b2a:	39 f0       	breq	.+14     	; 0xb3a <_ZN14CircularBuffer11evalBuffDimEh+0x1a>
 b2c:	96 2f       	mov	r25, r22
 b2e:	98 23       	and	r25, r24
 b30:	21 f4       	brne	.+8      	; 0xb3a <_ZN14CircularBuffer11evalBuffDimEh+0x1a>
            m_bufferDim>>=1;
 b32:	90 e0       	ldi	r25, 0x00	; 0
 b34:	95 95       	asr	r25
 b36:	87 95       	ror	r24
 b38:	f5 cf       	rjmp	.-22     	; 0xb24 <_ZN14CircularBuffer11evalBuffDimEh+0x4>
 b3a:	08 95       	ret

00000b3c <_ZN3SPIC1Ev>:
    m_activeSlave(0),\
    m_delayNops(0),\
    m_rx(NULL,0),\
    m_tx(NULL,0)

SPI::SPI():
 b3c:	cf 93       	push	r28
 b3e:	df 93       	push	r29
 b40:	ec 01       	movw	r28, r24
    _INIT_
 b42:	18 82       	st	Y, r1
 b44:	19 82       	std	Y+1, r1	; 0x01
 b46:	81 e0       	ldi	r24, 0x01	; 1
 b48:	8a 83       	std	Y+2, r24	; 0x02
 b4a:	1b 82       	std	Y+3, r1	; 0x03
 b4c:	1d 82       	std	Y+5, r1	; 0x05
 b4e:	1c 82       	std	Y+4, r1	; 0x04
 b50:	40 e0       	ldi	r20, 0x00	; 0
 b52:	60 e0       	ldi	r22, 0x00	; 0
 b54:	70 e0       	ldi	r23, 0x00	; 0
 b56:	ce 01       	movw	r24, r28
 b58:	06 96       	adiw	r24, 0x06	; 6
 b5a:	bd db       	rcall	.-2182   	; 0x2d6 <_ZN14CircularBufferC1EPch>
 b5c:	40 e0       	ldi	r20, 0x00	; 0
 b5e:	60 e0       	ldi	r22, 0x00	; 0
 b60:	70 e0       	ldi	r23, 0x00	; 0
 b62:	ce 01       	movw	r24, r28
 b64:	0d 96       	adiw	r24, 0x0d	; 13
{
        }
 b66:	df 91       	pop	r29
 b68:	cf 91       	pop	r28
    m_delayNops(0),\
    m_rx(NULL,0),\
    m_tx(NULL,0)

SPI::SPI():
    _INIT_
 b6a:	b5 cb       	rjmp	.-2198   	; 0x2d6 <_ZN14CircularBufferC1EPch>

00000b6c <_ZN3SPID1Ev>:
{
        }

  SPI::~SPI()
 b6c:	cf 93       	push	r28
 b6e:	df 93       	push	r29
 b70:	ec 01       	movw	r28, r24
 b72:	0d 96       	adiw	r24, 0x0d	; 13
 b74:	c4 db       	rcall	.-2168   	; 0x2fe <_ZN14CircularBufferD1Ev>
 b76:	ce 01       	movw	r24, r28
 b78:	06 96       	adiw	r24, 0x06	; 6
{
}
 b7a:	df 91       	pop	r29
 b7c:	cf 91       	pop	r28
SPI::SPI():
    _INIT_
{
        }

  SPI::~SPI()
 b7e:	bf cb       	rjmp	.-2178   	; 0x2fe <_ZN14CircularBufferD1Ev>

00000b80 <_ZN3SPI5beginEPKvhS1_hbj>:
{
}

//speed = bit/sec (Hz)
void SPI::begin(const void *rx, m_size lrx, const void *tx, m_size ltx, bool master, uint16_t speed)
{
 b80:	af 92       	push	r10
 b82:	bf 92       	push	r11
 b84:	cf 92       	push	r12
 b86:	df 92       	push	r13
 b88:	ef 92       	push	r14
 b8a:	0f 93       	push	r16
 b8c:	cf 93       	push	r28
 b8e:	df 93       	push	r29
 b90:	ec 01       	movw	r28, r24
 b92:	59 01       	movw	r10, r18

    /**
     * @brief _setSpiThis
     * @param spith
     */
    inline static void _setSpiThis(SPI *spith) {m_spiThis = spith;}
 b94:	90 93 03 01 	sts	0x0103, r25
 b98:	80 93 02 01 	sts	0x0102, r24

    /**
     * @brief setMaster
     * @param master
     */
    inline void setMaster(bool master) {m_master=master;}
 b9c:	e8 82       	st	Y, r14
     *  the maximum number of bytes the circular buffer may store.
     *  If the class circular buffer is compiled with
     *  -D CIRCBUFF_POW2DIM the buffer dimension is
     *  rounded at the nearest and smallest power of 2.
     */
    inline void setBufferSpec(const char *buff,const m_size len) {mem=(char *)buff;evalBuffDim(len);}
 b9e:	7a 87       	std	Y+10, r23	; 0x0a
 ba0:	69 87       	std	Y+9, r22	; 0x09
 ba2:	64 2f       	mov	r22, r20
 ba4:	06 96       	adiw	r24, 0x06	; 6
 ba6:	bc df       	rcall	.-136    	; 0xb20 <_ZN14CircularBuffer11evalBuffDimEh>
 ba8:	b9 8a       	std	Y+17, r11	; 0x11
 baa:	a8 8a       	std	Y+16, r10	; 0x10
 bac:	60 2f       	mov	r22, r16
 bae:	ce 01       	movw	r24, r28
 bb0:	0d 96       	adiw	r24, 0x0d	; 13
 bb2:	b6 df       	rcall	.-148    	; 0xb20 <_ZN14CircularBuffer11evalBuffDimEh>

    /**
     * @brief setDelayNops
     * @param delayNops
     */
    inline void setDelayNops(const uint16_t &delayNops) {m_delayNops = delayNops;}
 bb4:	dd 82       	std	Y+5, r13	; 0x05
 bb6:	cc 82       	std	Y+4, r12	; 0x04
    _setSpiThis(this);
    setMaster(master);
    setRxBufferSpec(rx,lrx);
    setTxBufferSpec(tx,ltx);
    setDelayNops(speed); //(*SW) To be computed as better possible!
}
 bb8:	df 91       	pop	r29
 bba:	cf 91       	pop	r28
 bbc:	0f 91       	pop	r16
 bbe:	ef 90       	pop	r14
 bc0:	df 90       	pop	r13
 bc2:	cf 90       	pop	r12
 bc4:	bf 90       	pop	r11
 bc6:	af 90       	pop	r10
 bc8:	08 95       	ret

00000bca <_ZN3SPI19_enableOvfInterruptEv>:
    sei();
}

void SPI::_enableOvfInterrupt()
{
    cli();
 bca:	f8 94       	cli
    /**
     * @brief _getByte2Xmit
     * @param ch
     * @return
     */
    inline int _getByte2Xmit() {return m_tx.getByte();} // Interrupt reads
 bcc:	0d 96       	adiw	r24, 0x0d	; 13
 bce:	98 db       	rcall	.-2256   	; 0x300 <_ZN14CircularBuffer7getByteEv>
    uint8_t ch=__USI_PRESENCE_FLAG;

    ch=_getByte2Xmit();

    USISR = USIOIF; //Clear ovf
 bd0:	90 e4       	ldi	r25, 0x40	; 64
 bd2:	9e b9       	out	0x0e, r25	; 14
    //USICR |= USIOIE; //Enable OVF interrupt
    USICR |= USIOIE;
 bd4:	6e 9a       	sbi	0x0d, 6	; 13
    //On first request slave may return PRESENCE FLAG
    USIDR = ch;
 bd6:	8f b9       	out	0x0f, r24	; 15

    sei();
 bd8:	78 94       	sei
 bda:	08 95       	ret

00000bdc <_ZN3SPI7enabledEb>:
    setDelayNops(speed); //(*SW) To be computed as better possible!
}

void SPI::enabled(bool enab)
{
    USICR = 0;
 bdc:	1d b8       	out	0x0d, r1	; 13

    if (!enab) {
 bde:	61 11       	cpse	r22, r1
 be0:	03 c0       	rjmp	.+6      	; 0xbe8 <_ZN3SPI7enabledEb+0xc>
        //All signals as input without pull-up (3-state)
        DDRUSI &= ~(MISO | MOSI | SCK);
 be2:	87 b3       	in	r24, 0x17	; 23
 be4:	88 7f       	andi	r24, 0xF8	; 248
 be6:	07 c0       	rjmp	.+14     	; 0xbf6 <_ZN3SPI7enabledEb+0x1a>
        PORTUSI &= ~(MISO | MOSI | SCK);

        return;
    }

    if (master()) {
 be8:	fc 01       	movw	r30, r24
 bea:	20 81       	ld	r18, Z
 bec:	22 23       	and	r18, r18
 bee:	41 f0       	breq	.+16     	; 0xc00 <_ZN3SPI7enabledEb+0x24>
        //MOSI and SCK output (HIGH), MISO input (LOW)
        DDRUSI = SETBITS(DDRUSI, MOSI | SCK, MISO|MOSI|SCK);
 bf0:	87 b3       	in	r24, 0x17	; 23
 bf2:	88 7f       	andi	r24, 0xF8	; 248
 bf4:	85 60       	ori	r24, 0x05	; 5
 bf6:	87 bb       	out	0x17, r24	; 23
        //MOSI /  SCK / MISO no pull-up
        PORTUSI = SETBITS(PORTUSI, 0 , MISO|MOSI|SCK); //0 = posEdge - start
 bf8:	88 b3       	in	r24, 0x18	; 24
 bfa:	88 7f       	andi	r24, 0xF8	; 248
 bfc:	88 bb       	out	0x18, r24	; 24
 bfe:	08 95       	ret
    } else {
        //MISO output (HIGH), MOSI and SCK input (LOW)
        DDRUSI = SETBITS(DDRUSI, (_output())?MISO:0 , MISO|MOSI|SCK);       
 c00:	27 b3       	in	r18, 0x17	; 23
 c02:	28 7f       	andi	r18, 0xF8	; 248
 c04:	fc 01       	movw	r30, r24
 c06:	32 81       	ldd	r19, Z+2	; 0x02
 c08:	33 23       	and	r19, r19
 c0a:	11 f0       	breq	.+4      	; 0xc10 <_ZN3SPI7enabledEb+0x34>
 c0c:	32 e0       	ldi	r19, 0x02	; 2
 c0e:	01 c0       	rjmp	.+2      	; 0xc12 <_ZN3SPI7enabledEb+0x36>
 c10:	30 e0       	ldi	r19, 0x00	; 0
 c12:	23 2b       	or	r18, r19
 c14:	27 bb       	out	0x17, r18	; 23
        PORTUSI = SETBITS(PORTUSI, 0, MISO|MOSI|SCK);
 c16:	28 b3       	in	r18, 0x18	; 24
 c18:	28 7f       	andi	r18, 0xF8	; 248
 c1a:	28 bb       	out	0x18, r18	; 24

        USICR = USICS_POSEDGE | USIWM_3W;
 c1c:	28 e1       	ldi	r18, 0x18	; 24
 c1e:	2d b9       	out	0x0d, r18	; 13

        _enableOvfInterrupt();
 c20:	d4 cf       	rjmp	.-88     	; 0xbca <_ZN3SPI19_enableOvfInterruptEv>

00000c22 <__vector_14>:
    SPI::_icnt++;
#endif
}

ISR(USI_OVF_VECT) // OVF interrupt
{
 c22:	1f 92       	push	r1
 c24:	0f 92       	push	r0
 c26:	0f b6       	in	r0, 0x3f	; 63
 c28:	0f 92       	push	r0
 c2a:	11 24       	eor	r1, r1
 c2c:	2f 93       	push	r18
 c2e:	3f 93       	push	r19
 c30:	4f 93       	push	r20
 c32:	5f 93       	push	r21
 c34:	6f 93       	push	r22
 c36:	7f 93       	push	r23
 c38:	8f 93       	push	r24
 c3a:	9f 93       	push	r25
 c3c:	af 93       	push	r26
 c3e:	bf 93       	push	r27
 c40:	cf 93       	push	r28
 c42:	df 93       	push	r29
 c44:	ef 93       	push	r30
 c46:	ff 93       	push	r31

    /**
     * @brief _spiThis
     * @return
     */
    inline static SPI * _spiThis() {return m_spiThis;}
 c48:	c0 91 02 01 	lds	r28, 0x0102
 c4c:	d0 91 03 01 	lds	r29, 0x0103
void SPI::isr(void)
{
    SPI *spi=SPI::_spiThis();
    uint8_t ch;

    ch=USIDR;
 c50:	6f b1       	in	r22, 0x0f	; 15
    /**
     * @brief _setRcvdByte
     * @param ch
     * @return
     */
    inline int _setRcvdByte(uint8_t ch) {return m_rx.putByte(ch,true);} // Interrupt writes
 c52:	41 e0       	ldi	r20, 0x01	; 1
 c54:	ce 01       	movw	r24, r28
 c56:	06 96       	adiw	r24, 0x06	; 6
 c58:	6d db       	rcall	.-2342   	; 0x334 <_ZN14CircularBuffer7putByteEcb>

    spi->_setRcvdByte(ch);
    USISR |= USIOIF;
 c5a:	76 9a       	sbi	0x0e, 6	; 14

    ch=SPI::__USI_NODATA_FF;
    if (spi->_output())
 c5c:	8a 81       	ldd	r24, Y+2	; 0x02
 c5e:	88 23       	and	r24, r24
 c60:	21 f0       	breq	.+8      	; 0xc6a <__vector_14+0x48>
    /**
     * @brief _getByte2Xmit
     * @param ch
     * @return
     */
    inline int _getByte2Xmit() {return m_tx.getByte();} // Interrupt reads
 c62:	ce 01       	movw	r24, r28
 c64:	0d 96       	adiw	r24, 0x0d	; 13
 c66:	4c db       	rcall	.-2408   	; 0x300 <_ZN14CircularBuffer7getByteEv>
 c68:	01 c0       	rjmp	.+2      	; 0xc6c <__vector_14+0x4a>
    ch=USIDR;

    spi->_setRcvdByte(ch);
    USISR |= USIOIF;

    ch=SPI::__USI_NODATA_FF;
 c6a:	8f ef       	ldi	r24, 0xFF	; 255
    if (spi->_output())
        ch=spi->_getByte2Xmit();

    USIDR=ch;
 c6c:	8f b9       	out	0x0f, r24	; 15
}

ISR(USI_OVF_VECT) // OVF interrupt
{
    SPI::isr();
}
 c6e:	ff 91       	pop	r31
 c70:	ef 91       	pop	r30
 c72:	df 91       	pop	r29
 c74:	cf 91       	pop	r28
 c76:	bf 91       	pop	r27
 c78:	af 91       	pop	r26
 c7a:	9f 91       	pop	r25
 c7c:	8f 91       	pop	r24
 c7e:	7f 91       	pop	r23
 c80:	6f 91       	pop	r22
 c82:	5f 91       	pop	r21
 c84:	4f 91       	pop	r20
 c86:	3f 91       	pop	r19
 c88:	2f 91       	pop	r18
 c8a:	0f 90       	pop	r0
 c8c:	0f be       	out	0x3f, r0	; 63
 c8e:	0f 90       	pop	r0
 c90:	1f 90       	pop	r1
 c92:	18 95       	reti

00000c94 <__muldi3>:
 c94:	df 93       	push	r29
 c96:	cf 93       	push	r28
 c98:	9f 92       	push	r9
 c9a:	a0 e4       	ldi	r26, 0x40	; 64
 c9c:	9a 2e       	mov	r9, r26
 c9e:	00 24       	eor	r0, r0
 ca0:	d0 01       	movw	r26, r0
 ca2:	e0 01       	movw	r28, r0
 ca4:	f0 01       	movw	r30, r0
 ca6:	16 95       	lsr	r17
 ca8:	07 95       	ror	r16
 caa:	f7 94       	ror	r15
 cac:	e7 94       	ror	r14
 cae:	d7 94       	ror	r13
 cb0:	c7 94       	ror	r12
 cb2:	b7 94       	ror	r11
 cb4:	a7 94       	ror	r10
 cb6:	48 f4       	brcc	.+18     	; 0xcca <__muldi3+0x36>
 cb8:	10 68       	ori	r17, 0x80	; 128
 cba:	a2 0f       	add	r26, r18
 cbc:	b3 1f       	adc	r27, r19
 cbe:	c4 1f       	adc	r28, r20
 cc0:	d5 1f       	adc	r29, r21
 cc2:	e6 1f       	adc	r30, r22
 cc4:	f7 1f       	adc	r31, r23
 cc6:	08 1e       	adc	r0, r24
 cc8:	19 1e       	adc	r1, r25
 cca:	22 0f       	add	r18, r18
 ccc:	33 1f       	adc	r19, r19
 cce:	44 1f       	adc	r20, r20
 cd0:	55 1f       	adc	r21, r21
 cd2:	66 1f       	adc	r22, r22
 cd4:	77 1f       	adc	r23, r23
 cd6:	88 1f       	adc	r24, r24
 cd8:	99 1f       	adc	r25, r25
 cda:	9a 94       	dec	r9
 cdc:	21 f7       	brne	.-56     	; 0xca6 <__muldi3+0x12>
 cde:	9d 01       	movw	r18, r26
 ce0:	ae 01       	movw	r20, r28
 ce2:	bf 01       	movw	r22, r30
 ce4:	c0 01       	movw	r24, r0
 ce6:	11 24       	eor	r1, r1
 ce8:	9f 90       	pop	r9
 cea:	cf 91       	pop	r28
 cec:	df 91       	pop	r29
 cee:	08 95       	ret

00000cf0 <__mulsidi3>:
 cf0:	68 94       	set
 cf2:	00 13       	cpse	r16, r16

00000cf4 <__umulsidi3>:
 cf4:	e8 94       	clt
 cf6:	a0 e0       	ldi	r26, 0x00	; 0
 cf8:	b0 e0       	ldi	r27, 0x00	; 0
 cfa:	e0 e8       	ldi	r30, 0x80	; 128
 cfc:	f6 e0       	ldi	r31, 0x06	; 6
 cfe:	1d c0       	rjmp	.+58     	; 0xd3a <__prologue_saves__+0x10>
 d00:	ef ef       	ldi	r30, 0xFF	; 255
 d02:	e7 f9       	bld	r30, 7
 d04:	59 01       	movw	r10, r18
 d06:	6a 01       	movw	r12, r20
 d08:	5e 23       	and	r21, r30
 d0a:	55 0f       	add	r21, r21
 d0c:	ee 08       	sbc	r14, r14
 d0e:	fe 2c       	mov	r15, r14
 d10:	87 01       	movw	r16, r14
 d12:	9b 01       	movw	r18, r22
 d14:	ac 01       	movw	r20, r24
 d16:	9e 23       	and	r25, r30
 d18:	99 0f       	add	r25, r25
 d1a:	66 0b       	sbc	r22, r22
 d1c:	76 2f       	mov	r23, r22
 d1e:	cb 01       	movw	r24, r22
 d20:	b9 df       	rcall	.-142    	; 0xc94 <__muldi3>
 d22:	cd b7       	in	r28, 0x3d	; 61
 d24:	de b7       	in	r29, 0x3e	; 62
 d26:	ea e0       	ldi	r30, 0x0A	; 10
 d28:	24 c0       	rjmp	.+72     	; 0xd72 <__epilogue_restores__+0x10>

00000d2a <__prologue_saves__>:
 d2a:	2f 92       	push	r2
 d2c:	3f 92       	push	r3
 d2e:	4f 92       	push	r4
 d30:	5f 92       	push	r5
 d32:	6f 92       	push	r6
 d34:	7f 92       	push	r7
 d36:	8f 92       	push	r8
 d38:	9f 92       	push	r9
 d3a:	af 92       	push	r10
 d3c:	bf 92       	push	r11
 d3e:	cf 92       	push	r12
 d40:	df 92       	push	r13
 d42:	ef 92       	push	r14
 d44:	ff 92       	push	r15
 d46:	0f 93       	push	r16
 d48:	1f 93       	push	r17
 d4a:	cf 93       	push	r28
 d4c:	df 93       	push	r29
 d4e:	cd b7       	in	r28, 0x3d	; 61
 d50:	de b7       	in	r29, 0x3e	; 62
 d52:	ca 1b       	sub	r28, r26
 d54:	db 0b       	sbc	r29, r27
 d56:	0f b6       	in	r0, 0x3f	; 63
 d58:	f8 94       	cli
 d5a:	de bf       	out	0x3e, r29	; 62
 d5c:	0f be       	out	0x3f, r0	; 63
 d5e:	cd bf       	out	0x3d, r28	; 61
 d60:	09 94       	ijmp

00000d62 <__epilogue_restores__>:
 d62:	2a 88       	ldd	r2, Y+18	; 0x12
 d64:	39 88       	ldd	r3, Y+17	; 0x11
 d66:	48 88       	ldd	r4, Y+16	; 0x10
 d68:	5f 84       	ldd	r5, Y+15	; 0x0f
 d6a:	6e 84       	ldd	r6, Y+14	; 0x0e
 d6c:	7d 84       	ldd	r7, Y+13	; 0x0d
 d6e:	8c 84       	ldd	r8, Y+12	; 0x0c
 d70:	9b 84       	ldd	r9, Y+11	; 0x0b
 d72:	aa 84       	ldd	r10, Y+10	; 0x0a
 d74:	b9 84       	ldd	r11, Y+9	; 0x09
 d76:	c8 84       	ldd	r12, Y+8	; 0x08
 d78:	df 80       	ldd	r13, Y+7	; 0x07
 d7a:	ee 80       	ldd	r14, Y+6	; 0x06
 d7c:	fd 80       	ldd	r15, Y+5	; 0x05
 d7e:	0c 81       	ldd	r16, Y+4	; 0x04
 d80:	1b 81       	ldd	r17, Y+3	; 0x03
 d82:	aa 81       	ldd	r26, Y+2	; 0x02
 d84:	b9 81       	ldd	r27, Y+1	; 0x01
 d86:	ce 0f       	add	r28, r30
 d88:	d1 1d       	adc	r29, r1
 d8a:	0f b6       	in	r0, 0x3f	; 63
 d8c:	f8 94       	cli
 d8e:	de bf       	out	0x3e, r29	; 62
 d90:	0f be       	out	0x3f, r0	; 63
 d92:	cd bf       	out	0x3d, r28	; 61
 d94:	ed 01       	movw	r28, r26
 d96:	08 95       	ret

00000d98 <__adddi3>:
 d98:	2a 0d       	add	r18, r10
 d9a:	3b 1d       	adc	r19, r11
 d9c:	4c 1d       	adc	r20, r12
 d9e:	5d 1d       	adc	r21, r13
 da0:	6e 1d       	adc	r22, r14
 da2:	7f 1d       	adc	r23, r15
 da4:	80 1f       	adc	r24, r16
 da6:	91 1f       	adc	r25, r17
 da8:	08 95       	ret

00000daa <__adddi3_s8>:
 daa:	00 24       	eor	r0, r0
 dac:	a7 fd       	sbrc	r26, 7
 dae:	00 94       	com	r0
 db0:	2a 0f       	add	r18, r26
 db2:	30 1d       	adc	r19, r0
 db4:	40 1d       	adc	r20, r0
 db6:	50 1d       	adc	r21, r0
 db8:	60 1d       	adc	r22, r0
 dba:	70 1d       	adc	r23, r0
 dbc:	80 1d       	adc	r24, r0
 dbe:	90 1d       	adc	r25, r0
 dc0:	08 95       	ret

00000dc2 <__cmpdi2>:
 dc2:	2a 15       	cp	r18, r10
 dc4:	3b 05       	cpc	r19, r11
 dc6:	4c 05       	cpc	r20, r12
 dc8:	5d 05       	cpc	r21, r13
 dca:	6e 05       	cpc	r22, r14
 dcc:	7f 05       	cpc	r23, r15
 dce:	80 07       	cpc	r24, r16
 dd0:	91 07       	cpc	r25, r17
 dd2:	08 95       	ret

00000dd4 <__cmpdi2_s8>:
 dd4:	00 24       	eor	r0, r0
 dd6:	a7 fd       	sbrc	r26, 7
 dd8:	00 94       	com	r0
 dda:	2a 17       	cp	r18, r26
 ddc:	30 05       	cpc	r19, r0
 dde:	40 05       	cpc	r20, r0
 de0:	50 05       	cpc	r21, r0
 de2:	60 05       	cpc	r22, r0
 de4:	70 05       	cpc	r23, r0
 de6:	80 05       	cpc	r24, r0
 de8:	90 05       	cpc	r25, r0
 dea:	08 95       	ret

00000dec <__tablejump2__>:
 dec:	ee 0f       	add	r30, r30
 dee:	ff 1f       	adc	r31, r31

00000df0 <__tablejump__>:
 df0:	05 90       	lpm	r0, Z+
 df2:	f4 91       	lpm	r31, Z
 df4:	e0 2d       	mov	r30, r0
 df6:	09 94       	ijmp

00000df8 <__do_global_dtors>:
 df8:	10 e0       	ldi	r17, 0x00	; 0
 dfa:	c0 e2       	ldi	r28, 0x20	; 32
 dfc:	d0 e0       	ldi	r29, 0x00	; 0
 dfe:	03 c0       	rjmp	.+6      	; 0xe06 <__do_global_dtors+0xe>
 e00:	fe 01       	movw	r30, r28
 e02:	f6 df       	rcall	.-20     	; 0xdf0 <__tablejump__>
 e04:	22 96       	adiw	r28, 0x02	; 2
 e06:	c2 32       	cpi	r28, 0x22	; 34
 e08:	d1 07       	cpc	r29, r17
 e0a:	d1 f7       	brne	.-12     	; 0xe00 <__do_global_dtors+0x8>
 e0c:	f8 94       	cli

00000e0e <__stop_program>:
 e0e:	ff cf       	rjmp	.-2      	; 0xe0e <__stop_program>
