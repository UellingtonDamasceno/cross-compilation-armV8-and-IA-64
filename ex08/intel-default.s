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
	sub	rsp, 24624
	mov	DWORD PTR -24612[rbp], edi
	mov	QWORD PTR -24624[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -24596[rbp], 0
	jmp	.L2
.L3:
	call	rand@PLT
	cvtsi2sd	xmm0, eax
	mov	eax, DWORD PTR -24596[rbp]
	cdqe
	movsd	QWORD PTR -24592[rbp+rax*8], xmm0
	call	rand@PLT
	cvtsi2sd	xmm0, eax
	mov	eax, DWORD PTR -24596[rbp]
	cdqe
	movsd	QWORD PTR -16400[rbp+rax*8], xmm0
	add	DWORD PTR -24596[rbp], 1
.L2:
	cmp	DWORD PTR -24596[rbp], 1023
	jle	.L3
	mov	DWORD PTR -24600[rbp], 0
	jmp	.L4
.L5:
	mov	eax, DWORD PTR -24600[rbp]
	cdqe
	movsd	xmm1, QWORD PTR -24592[rbp+rax*8]
	mov	eax, DWORD PTR -24600[rbp]
	cdqe
	movsd	xmm0, QWORD PTR -16400[rbp+rax*8]
	addsd	xmm0, xmm1
	mov	eax, DWORD PTR -24600[rbp]
	cdqe
	movsd	QWORD PTR -8208[rbp+rax*8], xmm0
	add	DWORD PTR -24600[rbp], 1
.L4:
	cmp	DWORD PTR -24600[rbp], 1023
	jle	.L5
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	xor	rdx, QWORD PTR fs:40
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 8.4.0-1ubuntu1~18.04) 8.4.0"
	.section	.note.GNU-stack,"",@progbits
