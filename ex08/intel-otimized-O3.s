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
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	ebx, 1024
	.p2align 4,,10
	.p2align 3
.L2:
	call	rand@PLT
	call	rand@PLT
	sub	ebx, 1
	jne	.L2
	xor	eax, eax
	pop	rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE18:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 8.4.0-1ubuntu1~18.04) 8.4.0"
	.section	.note.GNU-stack,"",@progbits
