	.file	"config_timeout.cpp"
# GNU C++23 (GCC) version 16.2.0 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 16.2.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O2 -std=c++23
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
# /opt/gcc-16.2/include/c++/16.2.0/bits/string_view.tcc:56:       if (__pos >= _M_len)
	cmpq	$10, %rdi	#, config
	jbe	.L32	#,
# config_timeout.cpp:10: {
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
# /opt/gcc-16.2/include/c++/16.2.0/bits/string_view.tcc:61:       const _CharT* const __last = _M_str + _M_len;
	leaq	(%rsi,%rdi), %r14	#, __last
# config_timeout.cpp:10: {
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
# /opt/gcc-16.2/include/c++/16.2.0/bits/char_traits.h:386: 	return __builtin_memcmp(__s1, __s2, __n);
	movabsq	$6878251652205078900, %r13	#, tmp158
# config_timeout.cpp:10: {
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rdi, %r12	# config, config
# /opt/gcc-16.2/include/c++/16.2.0/bits/string_view.tcc:60:       const _CharT* __first = _M_str + __pos;
	movq	%rsi, %rdi	# config, __first
# config_timeout.cpp:10: {
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
# /opt/gcc-16.2/include/c++/16.2.0/bits/string_view.tcc:62:       size_type __len = _M_len - __pos;
	movq	%r12, %rdx	# config, __len
	movq	%rsi, %rbp	# config, config
# config_timeout.cpp:10: {
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
.L9:
# /opt/gcc-16.2/include/c++/16.2.0/bits/string_view.tcc:67: 	  __first = traits_type::find(__first, __len - __n + 1, __elem0);
	subq	$10, %rdx	#, _11
# /opt/gcc-16.2/include/c++/16.2.0/bits/char_traits.h:408: 	return static_cast<const char_type*>(__builtin_memchr(__s, __a, __n));
	movl	$116, %esi	#,
	call	memchr	#
# /opt/gcc-16.2/include/c++/16.2.0/bits/string_view.tcc:68: 	  if (!__first)
	testq	%rax, %rax	# _26
	je	.L1	#,
# /opt/gcc-16.2/include/c++/16.2.0/bits/char_traits.h:386: 	return __builtin_memcmp(__s1, __s2, __n);
	cmpq	%r13, (%rax)	# tmp158, MEM <char[1:11]> [(void *)_26]
	je	.L36	#,
.L27:
# /opt/gcc-16.2/include/c++/16.2.0/bits/string_view.tcc:75: 	  __len = __last - ++__first;
	leaq	1(%rax), %rdi	#, __first
# /opt/gcc-16.2/include/c++/16.2.0/bits/string_view.tcc:75: 	  __len = __last - ++__first;
	movq	%r14, %rdx	# __last, __len
	subq	%rdi, %rdx	# __first, __len
# /opt/gcc-16.2/include/c++/16.2.0/bits/string_view.tcc:64:       while (__len >= __n)
	cmpq	$10, %rdx	#, __len
	ja	.L9	#,
.L1:
# config_timeout.cpp:22: }
	movl	%ebx, %eax	# <retval>,
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L36:
	.cfi_restore_state
# /opt/gcc-16.2/include/c++/16.2.0/bits/char_traits.h:386: 	return __builtin_memcmp(__s1, __s2, __n);
	cmpl	$1030974815, 7(%rax)	#, MEM <char[1:11]> [(void *)_26]
	jne	.L27	#,
# /opt/gcc-16.2/include/c++/16.2.0/bits/string_view.tcc:74: 	    return __first - _M_str;
	subq	%rbp, %rax	# config, _29
# config_timeout.cpp:14:     if (const auto pos = config.find(key); pos != std::string_view::npos)
	cmpq	$-1, %rax	#, _29
	je	.L1	#,
# config_timeout.cpp:16:         const char* first = config.data() + pos + key.size();
	addq	$11, %rax	#, _1
# config_timeout.cpp:16:         const char* first = config.data() + pos + key.size();
	addq	%rax, %rbp	# _1, first
# /opt/gcc-16.2/include/c++/16.2.0/charconv:571: 	if (__first != __last && *__first == '-')
	cmpq	%r12, %rax	# config, _1
	je	.L12	#,
# /opt/gcc-16.2/include/c++/16.2.0/charconv:571: 	if (__first != __last && *__first == '-')
	cmpb	$45, 0(%rbp)	#, *first_6
	je	.L37	#,
.L12:
# /opt/gcc-16.2/include/c++/16.2.0/charconv:569:       int __sign = 1;
	movl	$1, %r8d	#,
.L11:
# /opt/gcc-16.2/include/c++/16.2.0/charconv:534:       for (; __first != __last; ++__first)
	cmpq	%rbp, %r14	# first, __last
	je	.L1	#,
	movq	%rbp, %rsi	# first, __first
# /opt/gcc-16.2/include/c++/16.2.0/charconv:578:       _Up __val = 0;
	xorl	%eax, %eax	#
# /opt/gcc-16.2/include/c++/16.2.0/charconv:533:       int __unused_bits_lower_bound = __gnu_cxx::__int_traits<_Tp>::__digits;
	movl	$32, %edi	#, __unused_bits_lower_bound
	jmp	.L20	#
	.p2align 4,,10
	.p2align 3
.L38:
# /opt/gcc-16.2/include/c++/16.2.0/charconv:543: 	    __val = __val * __base + __c;
	leal	(%rax,%rax,4), %eax	#, _123
# /opt/gcc-16.2/include/c++/16.2.0/charconv:543: 	    __val = __val * __base + __c;
	movzbl	%cl, %ecx	# _117, _124
# /opt/gcc-16.2/include/c++/16.2.0/charconv:534:       for (; __first != __last; ++__first)
	addq	$1, %rsi	#, __first
# /opt/gcc-16.2/include/c++/16.2.0/charconv:543: 	    __val = __val * __base + __c;
	leal	(%rcx,%rax,2), %eax	#,
# /opt/gcc-16.2/include/c++/16.2.0/charconv:534:       for (; __first != __last; ++__first)
	cmpq	%rsi, %r14	# __first, __last
	je	.L21	#,
.L20:
# /opt/gcc-16.2/include/c++/16.2.0/charconv:461: 	return static_cast<unsigned char>(__c - '0');
	movzbl	(%rsi), %edx	# MEM[(const char *)__first_23], tmp167
	leal	-48(%rdx), %ecx	#, _117
# /opt/gcc-16.2/include/c++/16.2.0/charconv:537: 	  if (__c >= __base)
	cmpb	$9, %cl	#, _117
	ja	.L13	#,
# /opt/gcc-16.2/include/c++/16.2.0/charconv:541: 	  if (__unused_bits_lower_bound >= 0) [[__likely__]]
	subl	$4, %edi	#, __unused_bits_lower_bound
	jns	.L38	#,
# /opt/gcc-16.2/include/c++/16.2.0/charconv:409:       if (__builtin_mul_overflow(__val, __base, &__val)
	movl	$10, %edx	#, tmp147
	mull	%edx	# tmp147
	jo	.L1	#,
# /opt/gcc-16.2/include/c++/16.2.0/charconv:410: 	  || __builtin_add_overflow(__val, __c, &__val))
	movzbl	%cl, %ecx	# _117, _117
	addl	%eax, %ecx	# tmp146, tmp150
	jc	.L1	#,
# /opt/gcc-16.2/include/c++/16.2.0/charconv:534:       for (; __first != __last; ++__first)
	addq	$1, %rsi	#, __first
# /opt/gcc-16.2/include/c++/16.2.0/charconv:410: 	  || __builtin_add_overflow(__val, __c, &__val))
	movl	%ecx, %eax	# tmp150,
# /opt/gcc-16.2/include/c++/16.2.0/charconv:534:       for (; __first != __last; ++__first)
	cmpq	%rsi, %r14	# __first, __last
	jne	.L20	#,
	.p2align 4
	.p2align 3
.L21:
# /opt/gcc-16.2/include/c++/16.2.0/charconv:606: 		  if (__builtin_mul_overflow(__val, __sign, &__tmp))
	imulq	%rax, %r8	# __val, tmp153
# /opt/gcc-16.2/include/c++/16.2.0/charconv:606: 		  if (__builtin_mul_overflow(__val, __sign, &__tmp))
	xorl	%ebx, %ebx	# <retval>
# /opt/gcc-16.2/include/c++/16.2.0/charconv:606: 		  if (__builtin_mul_overflow(__val, __sign, &__tmp))
	movslq	%r8d, %rax	# tmp153, tmp154
# /opt/gcc-16.2/include/c++/16.2.0/charconv:606: 		  if (__builtin_mul_overflow(__val, __sign, &__tmp))
	cmpq	%rax, %r8	# tmp154, tmp153
	cmove	%r8d, %ebx	# <retval>,, tmp153, <retval>
.L39:
# config_timeout.cpp:22: }
	movl	%ebx, %eax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
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
	movl	%ebx, %eax	# <retval>,
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
# /opt/gcc-16.2/include/c++/16.2.0/charconv:599: 	  if (!__valid)
	cmpq	%rbp, %rsi	# first, __first
	je	.L1	#,
# /opt/gcc-16.2/include/c++/16.2.0/charconv:606: 		  if (__builtin_mul_overflow(__val, __sign, &__tmp))
	imulq	%rax, %r8	# __val, tmp153
# /opt/gcc-16.2/include/c++/16.2.0/charconv:606: 		  if (__builtin_mul_overflow(__val, __sign, &__tmp))
	xorl	%ebx, %ebx	# <retval>
# /opt/gcc-16.2/include/c++/16.2.0/charconv:606: 		  if (__builtin_mul_overflow(__val, __sign, &__tmp))
	movslq	%r8d, %rax	# tmp153, tmp154
# /opt/gcc-16.2/include/c++/16.2.0/charconv:606: 		  if (__builtin_mul_overflow(__val, __sign, &__tmp))
	cmpq	%rax, %r8	# tmp154, tmp153
	cmove	%r8d, %ebx	# <retval>,, tmp153, <retval>
	jmp	.L39	#
	.p2align 4,,10
	.p2align 3
.L37:
# /opt/gcc-16.2/include/c++/16.2.0/charconv:574: 	    ++__first;
	addq	$1, %rbp	#, first
# /opt/gcc-16.2/include/c++/16.2.0/charconv:573: 	    __sign = -1;
	movq	$-1, %r8	#,
	jmp	.L11	#
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
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# config_timeout.cpp:25: {
	movq	%rdi, %rbx	# name, name
# config_timeout.cpp:26:     const int timeout_ms = read_timeout_ms(config);
	movq	%rsi, %rdi	# config,
	movq	%rdx, %rsi	# config,
	call	_Z15read_timeout_msSt17basic_string_viewIcSt11char_traitsIcEE	#
# config_timeout.cpp:28:     if (timeout_ms <= 0)
	testl	%eax, %eax	# _3
	jle	.L43	#,
# config_timeout.cpp:34:         std::printf("%-7s timeout %d ms\n", name, timeout_ms);
	movl	%eax, %edx	# _3,
	movq	%rbx, %rsi	# name,
	movl	$.LC2, %edi	#,
	xorl	%eax, %eax	#
# config_timeout.cpp:36: }
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 8
# config_timeout.cpp:34:         std::printf("%-7s timeout %d ms\n", name, timeout_ms);
	jmp	printf	#
	.p2align 4,,10
	.p2align 3
.L43:
	.cfi_restore_state
# config_timeout.cpp:30:         std::printf("%-7s no timeout configured, using default %d ms\n", name, default_timeout_ms);
	movq	%rbx, %rsi	# name,
	movl	$1000, %edx	#,
	movl	$.LC1, %edi	#,
	xorl	%eax, %eax	#
# config_timeout.cpp:36: }
	popq	%rbx	#
	.cfi_def_cfa_offset 8
# config_timeout.cpp:30:         std::printf("%-7s no timeout configured, using default %d ms\n", name, default_timeout_ms);
	jmp	printf	#
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
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
# config_timeout.cpp:26:     const int timeout_ms = read_timeout_ms(config);
	movl	$31, %edi	#,
	movl	$.LC3, %esi	#,
	call	_Z15read_timeout_msSt17basic_string_viewIcSt11char_traitsIcEE	#
# config_timeout.cpp:28:     if (timeout_ms <= 0)
	testl	%eax, %eax	# _11
	jle	.L50	#,
# config_timeout.cpp:34:         std::printf("%-7s timeout %d ms\n", name, timeout_ms);
	movl	%eax, %edx	# _11,
	movl	$.LC4, %esi	#,
	movl	$.LC2, %edi	#,
	xorl	%eax, %eax	#
	call	printf	#
.L46:
# config_timeout.cpp:26:     const int timeout_ms = read_timeout_ms(config);
	movl	$25, %edi	#,
	movl	$.LC5, %esi	#,
	call	_Z15read_timeout_msSt17basic_string_viewIcSt11char_traitsIcEE	#
# config_timeout.cpp:28:     if (timeout_ms <= 0)
	testl	%eax, %eax	# _10
	jle	.L51	#,
# config_timeout.cpp:34:         std::printf("%-7s timeout %d ms\n", name, timeout_ms);
	movl	%eax, %edx	# _10,
	movl	$.LC6, %esi	#,
	movl	$.LC2, %edi	#,
	xorl	%eax, %eax	#
	call	printf	#
.L48:
# config_timeout.cpp:42: }
	xorl	%eax, %eax	#
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
.L50:
	.cfi_restore_state
# config_timeout.cpp:30:         std::printf("%-7s no timeout configured, using default %d ms\n", name, default_timeout_ms);
	movl	$1000, %edx	#,
	movl	$.LC4, %esi	#,
	movl	$.LC1, %edi	#,
	xorl	%eax, %eax	#
	call	printf	#
	jmp	.L46	#
.L51:
	movl	$1000, %edx	#,
	movl	$.LC6, %esi	#,
	movl	$.LC1, %edi	#,
	xorl	%eax, %eax	#
	call	printf	#
	jmp	.L48	#
	.cfi_endproc
.LFE1424:
	.size	main, .-main
	.ident	"GCC: (GNU) 16.2.0"
	.section	.note.GNU-stack,"",@progbits
