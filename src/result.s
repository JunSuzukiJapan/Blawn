	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.globl	_i64_to_i8              ## -- Begin function i64_to_i8
	.p2align	4, 0x90
_i64_to_i8:                             ## @i64_to_i8
	.cfi_startproc
## %bb.0:                               ## %i64_to_i8
	movq	%rdi, %rax
                                        ## kill: def $al killed $al killed $rax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_i64_to_i32             ## -- Begin function i64_to_i32
	.p2align	4, 0x90
_i64_to_i32:                            ## @i64_to_i32
	.cfi_startproc
## %bb.0:                               ## %i64_to_i32
	movq	%rdi, %rax
                                        ## kill: def $eax killed $eax killed $rax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_i32_to_i8              ## -- Begin function i32_to_i8
	.p2align	4, 0x90
_i32_to_i8:                             ## @i32_to_i8
	.cfi_startproc
## %bb.0:                               ## %i32_to_i8
	movl	%edi, %eax
                                        ## kill: def $al killed $al killed $eax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_i8_to_i32              ## -- Begin function i8_to_i32
	.p2align	4, 0x90
_i8_to_i32:                             ## @i8_to_i32
	.cfi_startproc
## %bb.0:                               ## %i8_to_i32
	movzbl	%dil, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_i32_to_i64             ## -- Begin function i32_to_i64
	.p2align	4, 0x90
_i32_to_i64:                            ## @i32_to_i64
	.cfi_startproc
## %bb.0:                               ## %i32_to_i64
	movl	%edi, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_i8_to_i64              ## -- Begin function i8_to_i64
	.p2align	4, 0x90
_i8_to_i64:                             ## @i8_to_i64
	.cfi_startproc
## %bb.0:                               ## %i8_to_i64
                                        ## kill: def $edi killed $edi def $rdi
	movzbl	%dil, %eax
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:                               ## %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$3, %edi
	movl	$4, %esi
	callq	_add.2
	movq	%rax, (%rsp)
	movq	%rax, %rdi
	callq	_int_to_str
	movq	%rax, %rdi
	callq	_print
	xorl	%eax, %eax
	popq	%rcx
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_add.2                  ## -- Begin function add.2
	.p2align	4, 0x90
_add.2:                                 ## @add.2
	.cfi_startproc
## %bb.0:                               ## %entry
	movq	%rdi, %rax
	movq	%rsi, -16(%rsp)
	addq	%rsi, %rax
	movq	%rax, -8(%rsp)
	retq
	.cfi_endproc
                                        ## -- End function

.subsections_via_symbols
