	.text
	.file	"Blawn"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	$0, C_INT(%rip)
	movl	$9, %edi
	callq	test
	movq	$0, (%rsp)
	movl	$.L__unnamed_1, %edi
	movl	$13, %esi
	callq	string_constructor
	movq	%rax, %rdi
	callq	print
	xorl	%eax, %eax
	popq	%rcx
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.globl	list_constructor        # -- Begin function list_constructor
	.p2align	4, 0x90
	.type	list_constructor,@function
list_constructor:                       # @list_constructor
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movl	$32, %edi
	callq	malloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$1, 8(%rax)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	list_constructor, .Lfunc_end1-list_constructor
	.cfi_endproc
                                        # -- End function
	.globl	blawn_realloc           # -- Begin function blawn_realloc
	.p2align	4, 0x90
	.type	blawn_realloc,@function
blawn_realloc:                          # @blawn_realloc
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -16(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	imulq	-16(%rbp), %rsi
	callq	realloc
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB2_2
# %bb.1:
	movabsq	$.L.str, %rdi
	callq	puts
	movl	$1, %edi
	callq	exit
.LBB2_2:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	blawn_realloc, .Lfunc_end2-blawn_realloc
	.cfi_endproc
                                        # -- End function
	.globl	blawn_memcpy            # -- Begin function blawn_memcpy
	.p2align	4, 0x90
	.type	blawn_memcpy,@function
blawn_memcpy:                           # @blawn_memcpy
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	-16(%rbp), %rax
	movq	%rdi, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rcx, -16(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rcx
	imulq	-8(%rbp), %rcx
	addq	%rcx, %rdi
	movq	-8(%rbp), %rdx
	movq	%rax, %rsi
	callq	memcpy
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	blawn_memcpy, .Lfunc_end3-blawn_memcpy
	.cfi_endproc
                                        # -- End function
	.globl	blawn_index             # -- Begin function blawn_index
	.p2align	4, 0x90
	.type	blawn_index,@function
blawn_index:                            # @blawn_index
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movq	%rdi, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -8(%rbp)
	cmpq	-8(%rbp), %rax
	jg	.LBB4_3
# %bb.1:
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jge	.LBB4_3
# %bb.2:
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	imulq	-8(%rbp), %rcx
	addq	%rcx, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.LBB4_3:
	movabsq	$.L.str.1, %rdi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end4:
	.size	blawn_index, .Lfunc_end4-blawn_index
	.cfi_endproc
                                        # -- End function
	.globl	blawn_set_element       # -- Begin function blawn_set_element
	.p2align	4, 0x90
	.type	blawn_set_element,@function
blawn_set_element:                      # @blawn_set_element
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	xorl	%eax, %eax
	movq	%rdi, -40(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -16(%rbp)
	movq	%r8, -8(%rbp)
	cmpq	-8(%rbp), %rax
	jg	.LBB5_3
# %bb.1:
	movq	-8(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jge	.LBB5_3
# %bb.2:
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rdx
	imulq	-8(%rbp), %rdx
	movq	%rax, (%rcx,%rdx)
	jmp	.LBB5_4
.LBB5_3:
	movabsq	$.L.str.1, %rdi
	callq	puts
	movl	$1, %edi
	callq	exit
.LBB5_4:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	blawn_set_element, .Lfunc_end5-blawn_set_element
	.cfi_endproc
                                        # -- End function
	.globl	print                   # -- Begin function print
	.p2align	4, 0x90
	.type	print,@function
print:                                  # @print
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str.2, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rsi
	movq	%rax, %rdi
	movb	$0, %al
	callq	printf
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	print, .Lfunc_end6-print
	.cfi_endproc
                                        # -- End function
	.globl	string_constructor      # -- Begin function string_constructor
	.p2align	4, 0x90
	.type	string_constructor,@function
string_constructor:                     # @string_constructor
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$16, %edi
	callq	malloc
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	string_constructor, .Lfunc_end7-string_constructor
	.cfi_endproc
                                        # -- End function
	.globl	append_string           # -- Begin function append_string
	.p2align	4, 0x90
	.type	append_string,@function
append_string:                          # @append_string
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rax
	addq	8(%rax), %rdi
	callq	malloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	strcat
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	callq	strcat
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	addq	8(%rcx), %rax
	movq	%rax, 8(%rcx)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	append_string, .Lfunc_end8-append_string
	.cfi_endproc
                                        # -- End function
	.globl	int_to_str              # -- Begin function int_to_str
	.p2align	4, 0x90
	.type	int_to_str,@function
int_to_str:                             # @int_to_str
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -8(%rbp)
	jl	.LBB9_5
# %bb.1:
	movq	$0, -16(%rbp)
.LBB9_2:                                # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB9_4
# %bb.3:                                #   in Loop: Header=BB9_2 Depth=1
	movl	$10, %ecx
	movq	-8(%rbp), %rax
	cqto
	idivq	%rcx
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB9_2
.LBB9_4:
	jmp	.LBB9_9
.LBB9_5:
	xorl	%eax, %eax
	movq	$1, -16(%rbp)
	subq	-8(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB9_6:                                # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB9_8
# %bb.7:                                #   in Loop: Header=BB9_6 Depth=1
	movl	$10, %ecx
	movq	-8(%rbp), %rax
	cqto
	idivq	%rcx
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB9_6
.LBB9_8:
	jmp	.LBB9_9
.LBB9_9:
	movq	-16(%rbp), %rdi
	callq	malloc
	movabsq	$.L.str.3, %rdx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	addq	$1, %rsi
	movq	-32(%rbp), %rcx
	movb	$0, %al
	callq	snprintf
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	string_constructor
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	int_to_str, .Lfunc_end9-int_to_str
	.cfi_endproc
                                        # -- End function
	.globl	float_to_str            # -- Begin function float_to_str
	.p2align	4, 0x90
	.type	float_to_str,@function
float_to_str:                           # @float_to_str
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movsd	%xmm0, -24(%rbp)
	movl	$16, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	malloc
	movabsq	$.L.str.4, %rdx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movb	$1, %al
	callq	snprintf
	movq	-16(%rbp), %rdi
	movslq	-4(%rbp), %rsi
	callq	string_constructor
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	float_to_str, .Lfunc_end10-float_to_str
	.cfi_endproc
                                        # -- End function
	.type	C_INT,@object           # @C_INT
	.bss
	.globl	C_INT
	.p2align	3
C_INT:
	.quad	0                       # 0x0
	.size	C_INT, 8

	.type	.L__unnamed_1,@object   # @0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__unnamed_1:
	.asciz	"AAAAAAAAAAAAA"
	.size	.L__unnamed_1, 14

	.type	.L.str,@object          # @.str
.L.str:
	.asciz	"\033[31mCRITICAL ERROR:\033[39m failed to realloc at appending element to list"
	.size	.L.str, 73

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Error: list index out of range"
	.size	.L.str.1, 31

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%s\n"
	.size	.L.str.2, 4

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%lld"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%lf"
	.size	.L.str.4, 4


	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits