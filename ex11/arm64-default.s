	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]
	str	x1, [sp]
	mov	w0, 1000
	str	w0, [sp, 16]
	mov	w0, 2000
	str	w0, [sp, 20]
	mov	w0, -2000
	str	w0, [sp, 24]
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	ble	.L2
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L3
.L2:
	mov	w0, -1
	str	w0, [sp, 28]
.L3:
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bge	.L4
	mov	w0, 2
	str	w0, [sp, 28]
	b	.L5
.L4:
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	ble	.L5
	mov	w0, -2
	str	w0, [sp, 28]
.L5:
	mov	w0, 0
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 8.4.0-1ubuntu1~18.04) 8.4.0"
	.section	.note.GNU-stack,"",@progbits
