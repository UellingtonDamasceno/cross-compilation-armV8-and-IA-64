	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB5:
	.cfi_startproc
	mov	x16, 24624
	sub	sp, sp, x16
	.cfi_def_cfa_offset 24624
	stp	x29, x30, [sp]
	.cfi_offset 29, -24624
	.cfi_offset 30, -24616
	mov	x29, sp
	str	w0, [sp, 28]
	str	x1, [sp, 16]
	adrp	x0, :got:__stack_chk_guard
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 24616]
	mov	x1,0
	str	wzr, [sp, 36]
	b	.L2
.L3:
	bl	rand
	scvtf	d0, w0
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	add	x1, sp, 40
	str	d0, [x1, x0]
	bl	rand
	scvtf	d0, w0
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 3
	add	x1, sp, 8192
	add	x1, x1, 40
	str	d0, [x1, x0]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
.L2:
	ldr	w0, [sp, 36]
	cmp	w0, 1023
	ble	.L3
	str	wzr, [sp, 32]
	b	.L4
.L5:
	ldrsw	x0, [sp, 32]
	lsl	x0, x0, 3
	add	x1, sp, 40
	ldr	d1, [x1, x0]
	ldrsw	x0, [sp, 32]
	lsl	x0, x0, 3
	add	x1, sp, 8192
	add	x1, x1, 40
	ldr	d0, [x1, x0]
	fadd	d0, d1, d0
	ldrsw	x0, [sp, 32]
	lsl	x0, x0, 3
	add	x1, sp, 16384
	add	x1, x1, 40
	str	d0, [x1, x0]
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
.L4:
	ldr	w0, [sp, 32]
	cmp	w0, 1023
	ble	.L5
	mov	w0, 0
	adrp	x1, :got:__stack_chk_guard
	ldr	x1, [x1, #:got_lo12:__stack_chk_guard]
	ldr	x2, [sp, 24616]
	ldr	x1, [x1]
	eor	x1, x2, x1
	cmp	x1, 0
	beq	.L7
	bl	__stack_chk_fail
.L7:
	ldp	x29, x30, [sp]
	mov	x16, 24624
	add	sp, sp, x16
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 8.4.0-1ubuntu1~18.04) 8.4.0"
	.section	.note.GNU-stack,"",@progbits
