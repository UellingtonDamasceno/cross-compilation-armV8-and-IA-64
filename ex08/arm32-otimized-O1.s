	.arch armv8-a
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 1
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"code.c"
	.text
	.align	1
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
	push	{r4, lr}
	mov	r4, #1024
.L2:
	bl	rand(PLT)
	bl	rand(PLT)
	subs	r4, r4, #1
	bne	.L2
	mov	r3, #1024
.L3:
	subs	r3, r3, #1
	bne	.L3
	movs	r0, #0
	pop	{r4, pc}
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 8.4.0-1ubuntu1~18.04) 8.4.0"
	.section	.note.GNU-stack,"",%progbits
