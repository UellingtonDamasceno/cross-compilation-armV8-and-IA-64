	.file	"code.c"
	.intel_syntax noprefix
	.text
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB18:
	.cfi_startproc
	push	r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	mov	edi, 4096
	push	rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	push	rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	xor	ebx, ebx
	call	malloc@PLT
	mov	edi, 4096
	mov	r12, rax
	call	malloc@PLT
	mov	rbp, rax
	.p2align 4,,10
	.p2align 3
.L2:
	call	rand@PLT
	mov	DWORD PTR [r12+rbx], eax
	call	rand@PLT
	mov	DWORD PTR 0[rbp+rbx], eax
	add	rbx, 4
	cmp	rbx, 4096
	jne	.L2
	pop	rbx
	.cfi_def_cfa_offset 24
	xor	eax, eax
	pop	rbp
	.cfi_def_cfa_offset 16
	pop	r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE18:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 8.4.0-1ubuntu1~18.04) 8.4.0"
	.section	.note.GNU-stack,"",@progbits
