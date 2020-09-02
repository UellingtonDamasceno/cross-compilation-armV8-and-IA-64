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
	sub	rsp, 12336
	mov	DWORD PTR -12324[rbp], edi
	mov	QWORD PTR -12336[rbp], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -12308[rbp], 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -12308[rbp]
	cdqe
	mov	edx, DWORD PTR -12304[rbp+rax*4]
	mov	eax, DWORD PTR -12308[rbp]
	cdqe
	mov	eax, DWORD PTR -8208[rbp+rax*4]
	add	edx, eax
	mov	eax, DWORD PTR -12308[rbp]
	cdqe
	mov	DWORD PTR -4112[rbp+rax*4], edx
	add	DWORD PTR -12308[rbp], 1
.L2:
	cmp	DWORD PTR -12308[rbp], 1023
	jle	.L3
	mov	eax, 0
	mov	rcx, QWORD PTR -8[rbp]
	xor	rcx, QWORD PTR fs:40
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 8.4.0-1ubuntu1~18.04) 8.4.0"
	.section	.note.GNU-stack,"",@progbits
