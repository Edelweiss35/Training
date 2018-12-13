	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	call	L1$pb
L1$pb:
	popl	%eax
	leal	L_.str-L1$pb(%eax), %eax
	movl	%eax, (%esp)
	call	_puts
	movl	$0, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	addl	$24, %esp
	popl	%ebp
	ret

	.section	__TEXT,__cstring,cstring_literals
L_.str:
	.asciz	 "Hello, world!"


.subsections_via_symbols
