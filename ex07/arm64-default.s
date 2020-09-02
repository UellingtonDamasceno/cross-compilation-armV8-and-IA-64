	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	mov	x16, 12336
	sub	sp, sp, x16
	.cfi_def_cfa_offset 12336
	stp	x29, x30, [sp]
	.cfi_offset 29, -12336
	.cfi_offset 30, -12328
	mov	x29, sp
	str	w0, [sp, 28]
	str	x1, [sp, 16]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 12328]
	mov	x1,0
	str	wzr, [sp, 36]
	b	.L2
.L3:
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	add	x1, sp, 40
	ldr	w1, [x1, x0]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	add	x2, sp, 4096
	add	x2, x2, 40
	ldr	w0, [x2, x0]
	add	w2, w1, w0
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	add	x1, sp, 8192
	add	x1, x1, 40
	str	w2, [x1, x0]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L2:
	ldr	w0, [sp, 36]
	cmp	w0, 1023
	ble	.L3
	mov	w0, 0
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, #:got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 12328]
	ldr	x1, [x1]
	eor	x1, x2, x1
	cmp	x1, 0
	beq	.L5
	bl	__stack_chk_fail
.L5:
	ldp	x29, x30, [sp]
	mov	x16, 12336
	add	sp, sp, x16
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 8.4.0-1ubuntu1~18.04) 8.4.0"
	.section	.note.GNU-stack,"",@progbits
