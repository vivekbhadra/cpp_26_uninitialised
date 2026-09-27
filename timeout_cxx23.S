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
.LFB1413:
	.cfi_startproc
	cmpq	$10, %rdi
	jbe	.L32
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	leaq	(%rsi,%rdi), %r14
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movabsq	$6878251652205078900, %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rdi, %r12
	movq	%rsi, %rdi
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%r12, %rdx
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
.L9:
	subq	$10, %rdx
	movl	$116, %esi
	call	memchr
	testq	%rax, %rax
	je	.L1
	cmpq	%r13, (%rax)
	je	.L36
.L27:
	leaq	1(%rax), %rdi
	movq	%r14, %rdx
	subq	%rdi, %rdx
	cmpq	$10, %rdx
	ja	.L9
.L1:
	movl	%ebx, %eax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L36:
	.cfi_restore_state
	cmpl	$1030974815, 7(%rax)
	jne	.L27
	subq	%rbp, %rax
	cmpq	$-1, %rax
	je	.L1
	addq	$11, %rax
	addq	%rax, %rbp
	cmpq	%r12, %rax
	je	.L12
	cmpb	$45, 0(%rbp)
	je	.L37
.L12:
	movl	$1, %r8d
.L11:
	cmpq	%rbp, %r14
	je	.L1
	movq	%rbp, %rsi
	xorl	%eax, %eax
	movl	$32, %edi
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L38:
	leal	(%rax,%rax,4), %eax
	movzbl	%cl, %ecx
	addq	$1, %rsi
	leal	(%rcx,%rax,2), %eax
	cmpq	%rsi, %r14
	je	.L21
.L20:
	movzbl	(%rsi), %edx
	leal	-48(%rdx), %ecx
	cmpb	$9, %cl
	ja	.L13
	subl	$4, %edi
	jns	.L38
	movl	$10, %edx
	mull	%edx
	jo	.L1
	movzbl	%cl, %ecx
	addl	%eax, %ecx
	jc	.L1
	addq	$1, %rsi
	movl	%ecx, %eax
	cmpq	%rsi, %r14
	jne	.L20
	.p2align 4
	.p2align 3
.L21:
	imulq	%rax, %r8
	xorl	%ebx, %ebx
	movslq	%r8d, %rax
	cmpq	%rax, %r8
	cmove	%r8d, %ebx
.L39:
	movl	%ebx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L32:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	movl	%ebx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L13:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
	cmpq	%rbp, %rsi
	je	.L1
	imulq	%rax, %r8
	xorl	%ebx, %ebx
	movslq	%r8d, %rax
	cmpq	%rax, %r8
	cmove	%r8d, %ebx
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L37:
	addq	$1, %rbp
	movq	$-1, %r8
	jmp	.L11
	.cfi_endproc
.LFE1413:
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
.LFB1423:
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
.LFE1423:
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
.LFB1424:
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
.LFE1424:
	.size	main, .-main
	.ident	"GCC: (GNU) 16.2.0"
	.section	.note.GNU-stack,"",@progbits
