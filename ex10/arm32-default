	.arch armv8-a
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
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
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	mov	r0, #8192
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	mov	r0, #8192
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	mov	r0, #8192
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L2
.L3:
	ldr	r3, [r7, #8]
	lsls	r3, r3, #3
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	vldr.64	d6, [r3]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #3
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	vldr.64	d7, [r3]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #3
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	vadd.f64	d7, d6, d7
	vstr.64	d7, [r3]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L2:
	ldr	r3, [r7, #8]
	cmp	r3, #1024
	blt	.L3
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 8.4.0-1ubuntu1~18.04) 8.4.0"
	.section	.note.GNU-stack,"",%progbits
