	.file	"code.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB18:
	.cfi_startproc
	push	r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	push	rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	mov	edi, 4096
	call	malloc@PLT
	mov	r12, rax
	mov	edi, 4096
	call	malloc@PLT
	mov	rbp, rax
	mov	ebx, 0
.L2:
	call	rand@PLT
	mov	DWORD PTR [r12+rbx], eax
	call	rand@PLT
	mov	DWORD PTR 0[rbp+rbx], eax
	add	rbx, 4
	cmp	rbx, 4096
	jne	.L2
	mov	eax, 1024
.L3:
	sub	eax, 1
	jne	.L3
	mov	eax, 0
	pop	rbx
	.cfi_def_cfa_offset 24
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
