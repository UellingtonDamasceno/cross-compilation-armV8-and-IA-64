	.file	"code.c"
	.intel_syntax noprefix
	.text
	.globl	main
	.type	main, @function
main:
.LFB5:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 56
	.cfi_offset 3, -24
	mov	DWORD PTR -52[rbp], edi
	mov	QWORD PTR -64[rbp], rsi
	mov	edi, 4096
	call	malloc@PLT
	mov	QWORD PTR -40[rbp], rax
	mov	edi, 4096
	call	malloc@PLT
	mov	QWORD PTR -32[rbp], rax
	mov	edi, 4096
	call	malloc@PLT
	mov	QWORD PTR -24[rbp], rax
	mov	DWORD PTR -44[rbp], 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	lea	rbx, [rdx+rax]
	call	rand@PLT
	mov	DWORD PTR [rbx], eax
	mov	eax, DWORD PTR -44[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -32[rbp]
	lea	rbx, [rdx+rax]
	call	rand@PLT
	mov	DWORD PTR [rbx], eax
	add	DWORD PTR -44[rbp], 1
.L2:
	cmp	DWORD PTR -44[rbp], 1023
	jle	.L3
	mov	DWORD PTR -48[rbp], 0
	jmp	.L4
.L5:
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	mov	ecx, DWORD PTR [rax]
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -48[rbp]
	cdqe
	lea	rsi, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rsi
	add	edx, ecx
	mov	DWORD PTR [rax], edx
	add	DWORD PTR -48[rbp], 1
.L4:
	cmp	DWORD PTR -48[rbp], 1023
	jle	.L5
	mov	eax, 0
	add	rsp, 56
	pop	rbx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 8.4.0-1ubuntu1~18.04) 8.4.0"
	.section	.note.GNU-stack,"",@progbits
