	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB5:
	.cfi_startproc
	stp	x29, x30, [sp, -80]!
	.cfi_def_cfa_offset 80
	.cfi_offset 29, -80
	.cfi_offset 30, -72
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -64
	str	w0, [sp, 44]
	str	x1, [sp, 32]
	mov	x0, 4096
	bl	malloc
	str	x0, [sp, 56]
	mov	x0, 4096
	bl	malloc
	str	x0, [sp, 64]
	mov	x0, 4096
	bl	malloc
	str	x0, [sp, 72]
	str	wzr, [sp, 52]
	b	.L2
.L3:
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x19, x1, x0
	bl	rand
	str	w0, [x19]
	ldrsw	x0, [sp, 52]
	lsl	x0, x0, 2
	ldr	x1, [sp, 64]
	add	x19, x1, x0
	bl	rand
	str	w0, [x19]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
.L2:
	ldr	w0, [sp, 52]
	cmp	w0, 1023
	ble	.L3
	str	wzr, [sp, 48]
	b	.L4
.L5:
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 2
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	ldr	w2, [x0]
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 2
	ldr	x1, [sp, 64]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 48]
	lsl	x0, x0, 2
	ldr	x3, [sp, 72]
	add	x0, x3, x0
	add	w1, w2, w1
	str	w1, [x0]
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
.L4:
	ldr	w0, [sp, 48]
	cmp	w0, 1023
	ble	.L5
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 8.4.0-1ubuntu1~18.04) 8.4.0"
	.section	.note.GNU-stack,"",@progbits
