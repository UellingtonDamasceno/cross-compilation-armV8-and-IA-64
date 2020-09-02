	.file	"code.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR -20[rbp], edi
	mov	QWORD PTR -32[rbp], rsi
	movss	xmm0, DWORD PTR .LC0[rip]
	movss	DWORD PTR -8[rbp], xmm0
	movss	xmm0, DWORD PTR .LC1[rip]
	movss	DWORD PTR -4[rbp], xmm0
	movss	xmm0, DWORD PTR -8[rbp]
	addss	xmm0, DWORD PTR -4[rbp]
	movss	DWORD PTR -8[rbp], xmm0
	mov	eax, 0
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC0:
	.long	1065353216
	.align 4
.LC1:
	.long	1073741824
	.ident	"GCC: (Ubuntu 8.4.0-1ubuntu1~18.04) 8.4.0"
	.section	.note.GNU-stack,"",@progbits
