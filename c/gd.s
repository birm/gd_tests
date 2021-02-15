	.file	"gd.c"
	.text
	.globl	GD
	.type	GD, @function
GD:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movss	%xmm0, -44(%rbp)
	movl	%esi, -48(%rbp)
	movss	%xmm1, -52(%rbp)
	movss	%xmm2, -56(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L2
.L3:
	movss	-56(%rbp), %xmm1
	movss	.LC0(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	-44(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	movss	.LC0(%rip), %xmm0
	subss	-56(%rbp), %xmm0
	movss	-44(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movss	-16(%rbp), %xmm0
	subss	-12(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
	movl	-16(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, -60(%rbp)
	movss	-60(%rbp), %xmm0
	call	*%rax
	movd	%xmm0, %eax
	movl	%eax, -16(%rbp)
	movl	-12(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, -60(%rbp)
	movss	-60(%rbp), %xmm0
	call	*%rax
	movd	%xmm0, %eax
	movl	%eax, -12(%rbp)
	movss	-16(%rbp), %xmm0
	subss	-12(%rbp), %xmm0
	movss	%xmm0, -4(%rbp)
	movss	-52(%rbp), %xmm0
	mulss	-4(%rbp), %xmm0
	movss	-44(%rbp), %xmm1
	subss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, -44(%rbp)
	addl	$1, -20(%rbp)
.L2:
	movl	-20(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.L3
	movss	-44(%rbp), %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	GD, .-GD
	.globl	pow
	.type	pow, @function
pow:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movss	%xmm0, -20(%rbp)
	movl	%edi, -24(%rbp)
	movss	.LC0(%rip), %xmm0
	movss	%xmm0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L6
.L7:
	movss	-8(%rbp), %xmm0
	mulss	-20(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
	addl	$1, -4(%rbp)
.L6:
	movl	-4(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L7
	movss	-8(%rbp), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	pow, .-pow
	.globl	f
	.type	f, @function
f:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0
	movss	.LC1(%rip), %xmm1
	subss	%xmm1, %xmm0
	movl	$2, %edi
	call	pow
	movaps	%xmm0, %xmm1
	movss	.LC2(%rip), %xmm0
	addss	%xmm1, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	f, .-f
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movss	.LC3(%rip), %xmm2
	movss	.LC4(%rip), %xmm1
	movl	$10000000, %esi
	movss	.LC0(%rip), %xmm0
	leaq	f(%rip), %rdi
	call	GD
	movd	%xmm0, %eax
	movl	%eax, -4(%rbp)
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC0:
	.long	1065353216
	.align 4
.LC1:
	.long	1084227584
	.align 4
.LC2:
	.long	1088421888
	.align 4
.LC3:
	.long	1008981770
	.align 4
.LC4:
	.long	1056964608
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
