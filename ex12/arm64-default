	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	w0, [sp, 12]
	str	x1, [sp]
	mov	x0, 70368744177664
	movk	x0, 0x408f, lsl 48
	str	x0, [sp, 24]
	mov	x0, 70368744177664
	movk	x0, 0x409f, lsl 48
	str	x0, [sp, 32]
	mov	x0, 70368744177664
	movk	x0, 0xc09f, lsl 48
	str	x0, [sp, 40]
	ldr	d1, [sp, 24]
	ldr	d0, [sp, 32]
	fcmpe	d1, d0
	ble	.L13
	mov	w0, 1
	str	w0, [sp, 20]
	b	.L4
.L13:
	mov	w0, -1
	str	w0, [sp, 20]
.L4:
	ldr	d1, [sp, 24]
	ldr	d0, [sp, 40]
	fcmpe	d1, d0
	bpl	.L14
	mov	w0, 2
	str	w0, [sp, 20]
	b	.L7
.L14:
	ldr	d1, [sp, 32]
	ldr	d0, [sp, 40]
	fcmpe	d1, d0
	ble	.L7
	mov	w0, -2
	str	w0, [sp, 20]
.L7:
	mov	w0, 0
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 8.4.0-1ubuntu1~18.04) 8.4.0"
	.section	.note.GNU-stack,"",@progbits
