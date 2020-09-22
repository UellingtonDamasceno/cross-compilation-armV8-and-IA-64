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
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	mov	r0, #4096
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	mov	r0, #4096
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	mov	r0, #4096
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L2
.L3:
	ldr	r3, [r7, #16]
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	adds	r4, r2, r3
	bl	rand(PLT)
	mov	r3, r0
	str	r3, [r4]
	ldr	r3, [r7, #16]
	lsls	r3, r3, #2
	ldr	r2, [r7, #24]
	adds	r4, r2, r3
	bl	rand(PLT)
	mov	r3, r0
	str	r3, [r4]
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L2:
	ldr	r3, [r7, #16]
	cmp	r3, #1024
	blt	.L3
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L4
.L5:
	ldr	r3, [r7, #12]
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	ldr	r1, [r3]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #2
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #2
	ldr	r0, [r7, #28]
	add	r3, r3, r0
	add	r2, r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L4:
	ldr	r3, [r7, #12]
	cmp	r3, #1024
	blt	.L5
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 8.4.0-1ubuntu1~18.04) 8.4.0"
	.section	.note.GNU-stack,"",%progbits
