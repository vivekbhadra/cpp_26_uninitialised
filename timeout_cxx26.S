	.file	"config_timeout.cpp"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"timeout_ms="
	.text
	.p2align 4
	.globl	_Z15read_timeout_msSt17basic_string_viewIcSt11char_traitsIcEE
	.type	_Z15read_timeout_msSt17basic_string_viewIcSt11char_traitsIcEE, @function
_Z15read_timeout_msSt17basic_string_viewIcSt11char_traitsIcEE:
.LFB2500:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rbx, (%rsp)
	.cfi_offset 3, -48
	xorl	%ebx, %ebx
	cmpq	$10, %rdi
	jbe	.L1
	movq	%r12, 16(%rsp)
	.cfi_offset 12, -32
	movq	%rdi, %r12
	movq	%rbp, 8(%rsp)
	movq	%r12, %rdx
	.cfi_offset 6, -40
	movq	%rsi, %rbp
	movq	%r13, 24(%rsp)
	.cfi_offset 13, -24
	movabsq	$6878251652205078900, %r13
	movq	%r14, 32(%rsp)
	.cfi_offset 14, -16
	leaq	(%rsi,%rdi), %r14
	movq	%rsi, %rdi
.L8:
	subq	$10, %rdx
	movl	$116, %esi
	call	memchr
	testq	%rax, %rax
	je	.L35
	cmpq	%r13, (%rax)
	je	.L37
.L26:
	leaq	1(%rax), %rdi
	movq	%r14, %rdx
	subq	%rdi, %rdx
	cmpq	$10, %rdx
	ja	.L8
.L35:
	movq	8(%rsp), %rbp
	.cfi_restore 6
	movq	16(%rsp), %r12
	.cfi_restore 12
	movq	24(%rsp), %r13
	.cfi_restore 13
	movq	32(%rsp), %r14
	.cfi_restore 14
.L1:
	movl	%ebx, %eax
	movq	(%rsp), %rbx
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L37:
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	cmpl	$1030974815, 7(%rax)
	jne	.L26
	subq	%rbp, %rax
	cmpq	$-1, %rax
	je	.L35
	addq	$11, %rax
	addq	%rax, %rbp
	cmpq	%r12, %rax
	je	.L11
	cmpb	$45, 0(%rbp)
	je	.L38
.L11:
	movl	$1, %r8d
.L10:
	cmpq	%rbp, %r14
	je	.L35
	movq	%rbp, %rsi
	xorl	%eax, %eax
	movl	$32, %edi
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L39:
	leal	(%rax,%rax,4), %eax
	movzbl	%cl, %ecx
	addq	$1, %rsi
	leal	(%rcx,%rax,2), %eax
	cmpq	%rsi, %r14
	je	.L20
.L19:
	movzbl	(%rsi), %edx
	leal	-48(%rdx), %ecx
	cmpb	$9, %cl
	ja	.L12
	subl	$4, %edi
	jns	.L39
	movl	$10, %edx
	mull	%edx
	jo	.L35
	movzbl	%cl, %ecx
	addl	%eax, %ecx
	jc	.L35
	addq	$1, %rsi
	movl	%ecx, %eax
	cmpq	%rsi, %r14
	jne	.L19
.L20:
	imulq	%rax, %r8
	movq	8(%rsp), %rbp
	.cfi_remember_state
	.cfi_restore 6
	movq	16(%rsp), %r12
	.cfi_restore 12
	movq	24(%rsp), %r13
	.cfi_restore 13
	movq	32(%rsp), %r14
	.cfi_restore 14
	movslq	%r8d, %rax
	cmpq	%rax, %r8
	cmove	%r8d, %ebx
	movl	%ebx, %eax
	movq	(%rsp), %rbx
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L12:
	.cfi_restore_state
	cmpq	%rbp, %rsi
	jne	.L20
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L38:
	addq	$1, %rbp
	movq	$-1, %r8
	jmp	.L10
	.cfi_endproc
.LFE2500:
	.size	_Z15read_timeout_msSt17basic_string_viewIcSt11char_traitsIcEE, .-_Z15read_timeout_msSt17basic_string_viewIcSt11char_traitsIcEE
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"%-7s no timeout configured, using default %d ms\n"
	.section	.rodata.str1.1
.LC2:
	.string	"%-7s timeout %d ms\n"
	.text
	.p2align 4
	.globl	_Z11open_devicePKcSt17basic_string_viewIcSt11char_traitsIcEE
	.type	_Z11open_devicePKcSt17basic_string_viewIcSt11char_traitsIcEE, @function
_Z11open_devicePKcSt17basic_string_viewIcSt11char_traitsIcEE:
.LFB2508:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	call	_Z15read_timeout_msSt17basic_string_viewIcSt11char_traitsIcEE
	testl	%eax, %eax
	jle	.L43
	movl	%eax, %edx
	movq	%rbx, %rsi
	movl	$.LC2, %edi
	xorl	%eax, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	jmp	printf
	.p2align 4,,10
	.p2align 3
.L43:
	.cfi_restore_state
	movq	%rbx, %rsi
	movl	$1000, %edx
	movl	$.LC1, %edi
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	printf
	.cfi_endproc
.LFE2508:
	.size	_Z11open_devicePKcSt17basic_string_viewIcSt11char_traitsIcEE, .-_Z11open_devicePKcSt17basic_string_viewIcSt11char_traitsIcEE
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"port=/dev/ttyS1 timeout_ms=2500"
	.section	.rodata.str1.1
.LC4:
	.string	"modem"
.LC5:
	.string	"port=/dev/ttyS2 retries=3"
.LC6:
	.string	"logger"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB2509:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$31, %edi
	movl	$.LC3, %esi
	call	_Z15read_timeout_msSt17basic_string_viewIcSt11char_traitsIcEE
	testl	%eax, %eax
	jle	.L50
	movl	%eax, %edx
	movl	$.LC4, %esi
	movl	$.LC2, %edi
	xorl	%eax, %eax
	call	printf
.L46:
	movl	$25, %edi
	movl	$.LC5, %esi
	call	_Z15read_timeout_msSt17basic_string_viewIcSt11char_traitsIcEE
	testl	%eax, %eax
	jle	.L51
	movl	%eax, %edx
	movl	$.LC6, %esi
	movl	$.LC2, %edi
	xorl	%eax, %eax
	call	printf
.L48:
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L50:
	.cfi_restore_state
	movl	$1000, %edx
	movl	$.LC4, %esi
	movl	$.LC1, %edi
	xorl	%eax, %eax
	call	printf
	jmp	.L46
.L51:
	movl	$1000, %edx
	movl	$.LC6, %esi
	movl	$.LC1, %edi
	xorl	%eax, %eax
	call	printf
	jmp	.L48
	.cfi_endproc
.LFE2509:
	.size	main, .-main
	.ident	"GCC: (GNU) 16.2.0"
	.section	.note.GNU-stack,"",@progbits
