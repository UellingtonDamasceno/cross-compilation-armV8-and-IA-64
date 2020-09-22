	.arch armv8-a
	.file	"code.c"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB18:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	mov	w19, 1024
.L2:
	bl	rand
	bl	rand
	subs	w19, w19, #1
	bne	.L2
	mov	w0, 1024
.L3:
	subs	w0, w0, #1
	bne	.L3
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE18:
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 8.4.0-1ubuntu1~18.04) 8.4.0"
	.section	.note.GNU-stack,"",@progbits
