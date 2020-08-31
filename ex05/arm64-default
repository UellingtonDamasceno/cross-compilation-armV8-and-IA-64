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
	fmov	s0, 1.0e+0
	str	s0, [sp, 24]
	fmov	s0, 2.0e+0
	str	s0, [sp, 28]
	ldr	s1, [sp, 24]
	ldr	s0, [sp, 28]
	fadd	s0, s1, s0
	str	s0, [sp, 24]
	mov	w0, 0
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 8.4.0-1ubuntu1~18.04) 8.4.0"
	.section	.note.GNU-stack,"",@progbits
