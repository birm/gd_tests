	.file	"gd.c"
	.text
	.globl	f
	.type	f, @function
f:
.LFB2:
	.cfi_startproc
	subss	.LC0(%rip), %xmm0
	mulss	%xmm0, %xmm0
	addss	.LC1(%rip), %xmm0
	ret
	.cfi_endproc
.LFE2:
	.size	f, .-f
	.globl	GD
	.type	GD, @function
GD:
.LFB0:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$32, %rsp
	.cfi_def_cfa_offset 64
	movss	%xmm0, 8(%rsp)
	movss	%xmm1, 20(%rsp)
	testl	%esi, %esi
	jle	.L3
	movq	%rdi, %rbp
	movl	%esi, %r12d
	movl	$0, %ebx
	movss	.LC2(%rip), %xmm0
	movaps	%xmm2, %xmm7
	addss	%xmm0, %xmm7
	movss	%xmm7, 24(%rsp)
	subss	%xmm2, %xmm0
	movss	%xmm0, 28(%rsp)
.L4:
	movss	24(%rsp), %xmm0
	movss	8(%rsp), %xmm3
	mulss	%xmm3, %xmm0
	movss	28(%rsp), %xmm4
	mulss	%xmm3, %xmm4
	movss	%xmm4, 12(%rsp)
	call	*%rbp
	movss	%xmm0, 16(%rsp)
	movss	12(%rsp), %xmm0
	call	*%rbp
	movss	16(%rsp), %xmm5
	subss	%xmm0, %xmm5
	movaps	%xmm5, %xmm0
	mulss	20(%rsp), %xmm0
	movss	8(%rsp), %xmm3
	subss	%xmm0, %xmm3
	movss	%xmm3, 8(%rsp)
	addl	$1, %ebx
	cmpl	%ebx, %r12d
	jne	.L4
.L3:
	movss	8(%rsp), %xmm0
	addq	$32, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE0:
	.size	GD, .-GD
	.globl	pow
	.type	pow, @function
pow:
.LFB1:
	.cfi_startproc
	testl	%edi, %edi
	jle	.L10
	movl	$0, %eax
	movss	.LC2(%rip), %xmm1
.L9:
	mulss	%xmm0, %xmm1
	addl	$1, %eax
	cmpl	%eax, %edi
	jne	.L9
.L7:
	movaps	%xmm1, %xmm0
	ret
.L10:
	movss	.LC2(%rip), %xmm1
	jmp	.L7
	.cfi_endproc
.LFE1:
	.size	pow, .-pow
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movss	.LC3(%rip), %xmm2
	movss	.LC4(%rip), %xmm1
	movl	$1000000000, %esi
	movss	.LC2(%rip), %xmm0
	leaq	f(%rip), %rdi
	call	GD
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	1084227584
	.align 4
.LC1:
	.long	1088421888
	.align 4
.LC2:
	.long	1065353216
	.align 4
.LC3:
	.long	1008981770
	.align 4
.LC4:
	.long	1056964608
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
