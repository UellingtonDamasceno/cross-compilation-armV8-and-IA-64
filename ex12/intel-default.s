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
	mov	DWORD PTR -36[rbp], edi
	mov	QWORD PTR -48[rbp], rsi
	movsd	xmm0, QWORD PTR .LC0[rip]
	movsd	QWORD PTR -24[rbp], xmm0
	movsd	xmm0, QWORD PTR .LC1[rip]
	movsd	QWORD PTR -16[rbp], xmm0
	movsd	xmm0, QWORD PTR .LC2[rip]
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm0, QWORD PTR -24[rbp]
	comisd	xmm0, QWORD PTR -16[rbp]
	jbe	.L13
	mov	DWORD PTR -28[rbp], 1
	jmp	.L4
.L13:
	mov	DWORD PTR -28[rbp], -1
.L4:
	movsd	xmm0, QWORD PTR -8[rbp]
	comisd	xmm0, QWORD PTR -24[rbp]
	jbe	.L14
	mov	DWORD PTR -28[rbp], 2
	jmp	.L7
.L14:
	movsd	xmm0, QWORD PTR -16[rbp]
	comisd	xmm0, QWORD PTR -8[rbp]
	jbe	.L7
	mov	DWORD PTR -28[rbp], -2
.L7:
	mov	eax, 0
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1083129856
	.align 8
.LC1:
	.long	0
	.long	1084178432
	.align 8
.LC2:
	.long	0
	.long	-1063305216
	.ident	"GCC: (Ubuntu 8.4.0-1ubuntu1~18.04) 8.4.0"
	.section	.note.GNU-stack,"",@progbits
