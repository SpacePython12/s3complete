#NO_APP
	.file	"sonic3k.c"
	.text
	.align	2
	.globl	ErrorTrap
	.type	ErrorTrap, @function
ErrorTrap:
.L2:
	jra .L2
	.size	ErrorTrap, .-ErrorTrap
	.align	2
	.globl	EntryPoint
	.type	EntryPoint, @function
EntryPoint:
	move.l %d2,-(%sp)
	move.b 10551305,%d0
	and.l #255,%d0
	lsl.l #8,%d0
	move.b 10551306,%d1
	or.b %d1,%d0
	subq.l #1,%d0
	jeq .L5
	move.b 10551309,%d0
	and.l #255,%d0
	lsl.l #8,%d0
	move.b 10551310,%d1
	or.b %d1,%d0
	subq.l #1,%d0
	jeq .L5
.L14:
	jra .L14
.L5:
	move.b 10551297,%d0
	bftst %d0{#28:#4}
	jne .L7
	move.l #1397049153,10567680
.L7:
	move.l VDPInitValues,%a0
	clr.l %d1
.L8:
	move.b (%a0),%d0
	and.w #255,%d0
	add.w #128,%d0
	add.w %d1,%d0
	move.w %d1,%d2
	lsl.w #8,%d2
	add.w %d2,%d0
	move.w %d0,12582916
	addq.l #1,%d1
	moveq #24,%d0
	cmp.l %d1,%d0
	jne .L8
	move.l #1073741952,12582916
	clr.w 12582912
	move.w #256,10555648
	move.w #256,10555904
.L9:
	move.w 10555648,%d0
	btst #0,%d0
	jeq .L9
	move.l Z80StartupCodeEnd,%d2
	subq.l #1,%d2
	move.l Z80StartupCodeBegin,%a0
	move.l #10485760,%d1
	sub.l %a0,%d1
.L10:
	lea (%a0,%d1.l),%a1
	move.b (%a0)+,%d0
	move.b %d0,(%a1)
	cmp.l %d2,%a0
	jne .L10
	clr.w 10555904
	clr.w 10555648
	move.w #256,10555904
	move.l #16711680,%a0
.L11:
	clr.l (%a0)+
	cmp.l #16777152,%a0
	jne .L11
	move.l #-2130407678,12582916
	move.l #-1073741696,12582916
	moveq #32,%d0
.L12:
	clr.l 12582912
	subq.l #1,%d0
	jne .L12
	move.l #1073741968,12582916
	moveq #20,%d0
.L13:
	clr.l 12582912
	subq.l #1,%d0
	jne .L13
	move.l PSGInitValues,%d0
	move.l %d0,%a0
	move.b (%a0)+,%d1
	move.b %d1,12582929
	move.b (%a0),%d1
	move.b %d1,12582930
	move.l %d0,%a0
	addq.l #2,%a0
	move.b (%a0),%d1
	move.b %d1,12582931
	addq.l #1,%a0
	move.b (%a0),%d0
	move.b %d0,12582932
	clr.w 10555904
	jra .L14
	.size	EntryPoint, .-EntryPoint
	.align	2
	.globl	Test_LockOn
	.type	Test_LockOn, @function
Test_LockOn:
	rts
	.size	Test_LockOn, .-Test_LockOn
	.ident	"GCC: (GNU) 11.2.0"
