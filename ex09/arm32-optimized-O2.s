	.arch armv8-a
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"code.c"
	.text
	.section	.text.startup,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	main
	.arch armv8-a
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r0, #4096
	bl	malloc(PLT)
	mov	r6, r0
	mov	r0, #4096
	subs	r4, r6, #4
	bl	malloc(PLT)
	addw	r6, r6, #4092
	subs	r5, r0, #4
.L2:
	bl	rand(PLT)
	str	r0, [r4, #4]!
	bl	rand(PLT)
	str	r0, [r5, #4]!
	cmp	r4, r6
	bne	.L2
	movs	r0, #0
	pop	{r4, r5, r6, pc}
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 8.4.0-1ubuntu1~18.04) 8.4.0"
	.section	.note.GNU-stack,"",%progbits
