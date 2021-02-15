	.file	"gd.c"
	.text
	.p2align 4,,15
	.globl	GD
	.type	GD, @function
GD:
.LFB0:
	.cfi_startproc
	testl	%esi, %esi
	jle	.L4
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movaps	%xmm2, %xmm3
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	%esi, %r12d
	movaps	%xmm3, %xmm5
	movq	%rdi, %rbp
	subq	$32, %rsp
	.cfi_def_cfa_offset 64
	movaps	%xmm0, %xmm2
	movss	.LC0(%rip), %xmm0
	xorl	%ebx, %ebx
	addss	%xmm0, %xmm5
	movss	%xmm1, 28(%rsp)
	subss	%xmm3, %xmm0
	movss	%xmm5, 24(%rsp)
	movss	%xmm0, 20(%rsp)
	.p2align 4,,10
	.p2align 3
.L3:
	movss	20(%rsp), %xmm3
	addl	$1, %ebx
	mulss	%xmm2, %xmm3
	movss	24(%rsp), %xmm0
	mulss	%xmm2, %xmm0
	movss	%xmm2, 16(%rsp)
	movss	%xmm3, 12(%rsp)
	call	*%rbp
	movss	12(%rsp), %xmm3
	movss	%xmm0, 8(%rsp)
	movaps	%xmm3, %xmm0
	call	*%rbp
	movss	8(%rsp), %xmm1
	cmpl	%ebx, %r12d
	subss	%xmm0, %xmm1
	movss	16(%rsp), %xmm2
	mulss	28(%rsp), %xmm1
	subss	%xmm1, %xmm2
	jne	.L3
	addq	$32, %rsp
	.cfi_def_cfa_offset 32
	movaps	%xmm2, %xmm0
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	rep ret
	.cfi_endproc
.LFE0:
	.size	GD, .-GD
	.p2align 4,,15
	.globl	pow
	.type	pow, @function
pow:
.LFB1:
	.cfi_startproc
	testl	%edi, %edi
	jle	.L14
	xorl	%eax, %eax
	movss	.LC0(%rip), %xmm1
	.p2align 4,,10
	.p2align 3
.L13:
	addl	$1, %eax
	mulss	%xmm0, %xmm1
	cmpl	%eax, %edi
	jne	.L13
	movaps	%xmm1, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L14:
	movss	.LC0(%rip), %xmm1
	movaps	%xmm1, %xmm0
	ret
	.cfi_endproc
.LFE1:
	.size	pow, .-pow
	.p2align 4,,15
	.globl	f
	.type	f, @function
f:
.LFB2:
	.cfi_startproc
	subss	.LC1(%rip), %xmm0
	mulss	%xmm0, %xmm0
	addss	.LC2(%rip), %xmm0
	ret
	.cfi_endproc
.LFE2:
	.size	f, .-f
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	1065353216
	.align 4
.LC1:
	.long	1084227584
	.align 4
.LC2:
	.long	1088421888
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
