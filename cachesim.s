	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.file	1 "cachesim.c"
	.globl	_print_cache
	.p2align	4, 0x90
_print_cache:                           ## @print_cache
Lfunc_begin0:
	.loc	1 17 0                  ## cachesim.c:17:0
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
Ltmp3:
	.loc	1 19 11 prologue_end    ## cachesim.c:19:11
	movl	$0, -16(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
Ltmp4:
	.loc	1 19 16 is_stmt 0 discriminator 1 ## cachesim.c:19:16
	movl	-16(%rbp), %eax
	.loc	1 19 18 discriminator 1 ## cachesim.c:19:18
	cmpl	-12(%rbp), %eax
Ltmp5:
	.loc	1 19 5 discriminator 1  ## cachesim.c:19:5
	jge	LBB0_7
## BB#2:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	$10, %eax
Ltmp6:
	.loc	1 20 5 is_stmt 1        ## cachesim.c:20:5
	movl	-16(%rbp), %ecx
	.loc	1 20 7 is_stmt 0        ## cachesim.c:20:7
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-20(%rbp), %ecx         ## 4-byte Reload
	idivl	%ecx
	.loc	1 20 12                 ## cachesim.c:20:12
	cmpl	$0, %edx
	.loc	1 20 17                 ## cachesim.c:20:17
	jne	LBB0_5
## BB#3:                                ##   in Loop: Header=BB0_1 Depth=1
	.loc	1 20 22 discriminator 1 ## cachesim.c:20:22
	cmpl	$0, -16(%rbp)
Ltmp7:
	.loc	1 20 5 discriminator 1  ## cachesim.c:20:5
	je	LBB0_5
## BB#4:                                ##   in Loop: Header=BB0_1 Depth=1
	leaq	L_.str(%rip), %rdi
Ltmp8:
	.loc	1 20 28 discriminator 2 ## cachesim.c:20:28
	movb	$0, %al
	callq	_printf
	movl	%eax, -24(%rbp)         ## 4-byte Spill
Ltmp9:
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	leaq	L_.str.1(%rip), %rdi
	.loc	1 21 26 is_stmt 1       ## cachesim.c:21:26
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	.loc	1 21 35 is_stmt 0       ## cachesim.c:21:35
	movl	(%rcx,%rax,8), %esi
	.loc	1 21 44                 ## cachesim.c:21:44
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	.loc	1 21 53                 ## cachesim.c:21:53
	movl	4(%rcx,%rax,8), %edx
	.loc	1 21 2                  ## cachesim.c:21:2
	movb	$0, %al
	callq	_printf
	movl	%eax, -28(%rbp)         ## 4-byte Spill
Ltmp10:
## BB#6:                                ##   in Loop: Header=BB0_1 Depth=1
	.loc	1 19 29 is_stmt 1 discriminator 2 ## cachesim.c:19:29
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	.loc	1 19 5 is_stmt 0 discriminator 2 ## cachesim.c:19:5
	jmp	LBB0_1
Ltmp11:
LBB0_7:
	leaq	L_.str(%rip), %rdi
	.loc	1 23 5 is_stmt 1        ## cachesim.c:23:5
	movb	$0, %al
	callq	_printf
	.loc	1 24 1                  ## cachesim.c:24:1
	movl	%eax, -32(%rbp)         ## 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
Ltmp12:
Lfunc_end0:
	.cfi_endproc

	.globl	_lru_replace
	.p2align	4, 0x90
_lru_replace:                           ## @lru_replace
Lfunc_begin1:
	.loc	1 27 0                  ## cachesim.c:27:0
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp13:
	.cfi_def_cfa_offset 16
Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp15:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
Ltmp16:
	.loc	1 29 12 prologue_end    ## cachesim.c:29:12
	movl	$0, -28(%rbp)
	.loc	1 29 21 is_stmt 0       ## cachesim.c:29:21
	movl	$0, -32(%rbp)
Ltmp17:
	.loc	1 30 11 is_stmt 1       ## cachesim.c:30:11
	movl	$0, -24(%rbp)
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
Ltmp18:
	.loc	1 30 16 is_stmt 0 discriminator 1 ## cachesim.c:30:16
	movl	-24(%rbp), %eax
	.loc	1 30 18 discriminator 1 ## cachesim.c:30:18
	cmpl	-20(%rbp), %eax
Ltmp19:
	.loc	1 30 5 discriminator 1  ## cachesim.c:30:5
	jge	LBB1_6
## BB#2:                                ##   in Loop: Header=BB1_1 Depth=1
Ltmp20:
	.loc	1 31 6 is_stmt 1        ## cachesim.c:31:6
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	.loc	1 31 22 is_stmt 0       ## cachesim.c:31:22
	movl	4(%rcx,%rax,8), %edx
	.loc	1 31 30                 ## cachesim.c:31:30
	cmpl	-28(%rbp), %edx
Ltmp21:
	.loc	1 31 6                  ## cachesim.c:31:6
	jle	LBB1_4
## BB#3:                                ##   in Loop: Header=BB1_1 Depth=1
Ltmp22:
	.loc	1 32 12 is_stmt 1       ## cachesim.c:32:12
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	.loc	1 32 28 is_stmt 0       ## cachesim.c:32:28
	movl	4(%rcx,%rax,8), %edx
	.loc	1 32 10                 ## cachesim.c:32:10
	movl	%edx, -28(%rbp)
	.loc	1 33 10 is_stmt 1       ## cachesim.c:33:10
	movl	-24(%rbp), %edx
	.loc	1 33 8 is_stmt 0        ## cachesim.c:33:8
	movl	%edx, -32(%rbp)
Ltmp23:
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	.loc	1 35 5 is_stmt 1        ## cachesim.c:35:5
	jmp	LBB1_5
Ltmp24:
LBB1_5:                                 ##   in Loop: Header=BB1_1 Depth=1
	.loc	1 30 28 discriminator 2 ## cachesim.c:30:28
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	.loc	1 30 5 is_stmt 0 discriminator 2 ## cachesim.c:30:5
	jmp	LBB1_1
Ltmp25:
LBB1_6:
	.loc	1 36 35 is_stmt 1       ## cachesim.c:36:35
	movl	-16(%rbp), %eax
	.loc	1 36 11 is_stmt 0       ## cachesim.c:36:11
	movl	-12(%rbp), %ecx
	.loc	1 36 20                 ## cachesim.c:36:20
	addl	-32(%rbp), %ecx
	.loc	1 36 5                  ## cachesim.c:36:5
	movslq	%ecx, %rdx
	movq	-8(%rbp), %rsi
	.loc	1 36 33                 ## cachesim.c:36:33
	movl	%eax, (%rsi,%rdx,8)
	.loc	1 37 11 is_stmt 1       ## cachesim.c:37:11
	movl	-12(%rbp), %eax
	.loc	1 37 20 is_stmt 0       ## cachesim.c:37:20
	addl	-32(%rbp), %eax
	.loc	1 37 5                  ## cachesim.c:37:5
	movslq	%eax, %rdx
	movq	-8(%rbp), %rsi
	.loc	1 37 33                 ## cachesim.c:37:33
	movl	$0, 4(%rsi,%rdx,8)
	.loc	1 38 1 is_stmt 1        ## cachesim.c:38:1
	popq	%rbp
	retq
Ltmp26:
Lfunc_end1:
	.cfi_endproc

	.globl	_rand_replace
	.p2align	4, 0x90
_rand_replace:                          ## @rand_replace
Lfunc_begin2:
	.loc	1 41 0                  ## cachesim.c:41:0
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp27:
	.cfi_def_cfa_offset 16
Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
Ltmp30:
	.loc	1 42 13 prologue_end    ## cachesim.c:42:13
	callq	_rand
	.loc	1 42 20 is_stmt 0       ## cachesim.c:42:20
	cltd
	idivl	-20(%rbp)
	.loc	1 42 9                  ## cachesim.c:42:9
	movl	%edx, -24(%rbp)
	.loc	1 44 35 is_stmt 1       ## cachesim.c:44:35
	movl	-16(%rbp), %ecx
	.loc	1 44 11 is_stmt 0       ## cachesim.c:44:11
	movl	-12(%rbp), %edx
	.loc	1 44 20                 ## cachesim.c:44:20
	addl	-24(%rbp), %edx
	.loc	1 44 5                  ## cachesim.c:44:5
	movslq	%edx, %rdi
	movq	-8(%rbp), %r8
	.loc	1 44 33                 ## cachesim.c:44:33
	movl	%ecx, (%r8,%rdi,8)
	.loc	1 45 11 is_stmt 1       ## cachesim.c:45:11
	movl	-12(%rbp), %ecx
	.loc	1 45 20 is_stmt 0       ## cachesim.c:45:20
	addl	-24(%rbp), %ecx
	.loc	1 45 5                  ## cachesim.c:45:5
	movslq	%ecx, %rdi
	movq	-8(%rbp), %r8
	.loc	1 45 33                 ## cachesim.c:45:33
	movl	$0, 4(%r8,%rdi,8)
	.loc	1 46 1 is_stmt 1        ## cachesim.c:46:1
	addq	$32, %rsp
	popq	%rbp
	retq
Ltmp31:
Lfunc_end2:
	.cfi_endproc

	.globl	_add_address
	.p2align	4, 0x90
_add_address:                           ## @add_address
Lfunc_begin3:
	.loc	1 49 0                  ## cachesim.c:49:0
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp32:
	.cfi_def_cfa_offset 16
Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
Ltmp35:
	.loc	1 50 20 prologue_end    ## cachesim.c:50:20
	movl	$0, -36(%rbp)
	.loc	1 51 13                 ## cachesim.c:51:13
	movl	-20(%rbp), %ecx
	.loc	1 51 10 is_stmt 0       ## cachesim.c:51:10
	movl	-12(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%eax, -12(%rbp)
	.loc	1 52 14 is_stmt 1       ## cachesim.c:52:14
	movl	-12(%rbp), %eax
	.loc	1 52 26 is_stmt 0       ## cachesim.c:52:26
	movl	-16(%rbp), %ecx
	.loc	1 52 33                 ## cachesim.c:52:33
	movl	%eax, -40(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	idivl	-24(%rbp)
	.loc	1 52 23                 ## cachesim.c:52:23
	movl	-40(%rbp), %ecx         ## 4-byte Reload
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-44(%rbp), %esi         ## 4-byte Reload
	idivl	%esi
	.loc	1 52 42                 ## cachesim.c:52:42
	imull	-24(%rbp), %edx
	.loc	1 52 11                 ## cachesim.c:52:11
	movl	%edx, -28(%rbp)
Ltmp36:
	.loc	1 53 11 is_stmt 1       ## cachesim.c:53:11
	movl	-28(%rbp), %edx
	.loc	1 53 9 is_stmt 0        ## cachesim.c:53:9
	movl	%edx, -32(%rbp)
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
Ltmp37:
	.loc	1 53 21 discriminator 1 ## cachesim.c:53:21
	movl	-32(%rbp), %eax
	.loc	1 53 26 discriminator 1 ## cachesim.c:53:26
	movl	-28(%rbp), %ecx
	.loc	1 53 35 discriminator 1 ## cachesim.c:53:35
	addl	-24(%rbp), %ecx
	.loc	1 53 24 discriminator 1 ## cachesim.c:53:24
	cmpl	%ecx, %eax
Ltmp38:
	.loc	1 53 2 discriminator 1  ## cachesim.c:53:2
	jge	LBB3_11
## BB#2:                                ##   in Loop: Header=BB3_1 Depth=1
Ltmp39:
	.loc	1 55 6 is_stmt 1        ## cachesim.c:55:6
	movslq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	.loc	1 55 23 is_stmt 0       ## cachesim.c:55:23
	movl	4(%rcx,%rax,8), %edx
	addl	$1, %edx
	movl	%edx, 4(%rcx,%rax,8)
Ltmp40:
	.loc	1 56 9 is_stmt 1        ## cachesim.c:56:9
	movslq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	.loc	1 56 27 is_stmt 0       ## cachesim.c:56:27
	cmpl	$0, (%rcx,%rax,8)
	.loc	1 56 32                 ## cachesim.c:56:32
	jne	LBB3_5
## BB#3:                                ##   in Loop: Header=BB3_1 Depth=1
	.loc	1 56 36 discriminator 1 ## cachesim.c:56:36
	cmpl	$0, -36(%rbp)
Ltmp41:
	.loc	1 56 9 discriminator 1  ## cachesim.c:56:9
	jne	LBB3_5
## BB#4:                                ##   in Loop: Header=BB3_1 Depth=1
Ltmp42:
	.loc	1 57 3 is_stmt 1        ## cachesim.c:57:3
	movslq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	.loc	1 57 21 is_stmt 0       ## cachesim.c:57:21
	movl	$0, 4(%rcx,%rax,8)
	.loc	1 58 24 is_stmt 1       ## cachesim.c:58:24
	movl	-12(%rbp), %edx
	.loc	1 58 3 is_stmt 0        ## cachesim.c:58:3
	movslq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	.loc	1 58 21                 ## cachesim.c:58:21
	movl	%edx, (%rcx,%rax,8)
	.loc	1 59 10 is_stmt 1       ## cachesim.c:59:10
	movl	$1, -36(%rbp)
	.loc	1 60 6                  ## cachesim.c:60:6
	jmp	LBB3_9
Ltmp43:
LBB3_5:                                 ##   in Loop: Header=BB3_1 Depth=1
	.loc	1 61 14                 ## cachesim.c:61:14
	movslq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	.loc	1 61 24 is_stmt 0       ## cachesim.c:61:24
	movl	(%rcx,%rax,8), %edx
	.loc	1 61 32                 ## cachesim.c:61:32
	cmpl	-12(%rbp), %edx
	.loc	1 61 43                 ## cachesim.c:61:43
	jne	LBB3_8
## BB#6:                                ##   in Loop: Header=BB3_1 Depth=1
	.loc	1 61 47 discriminator 1 ## cachesim.c:61:47
	cmpl	$0, -36(%rbp)
Ltmp44:
	.loc	1 61 14 discriminator 1 ## cachesim.c:61:14
	jne	LBB3_8
## BB#7:                                ##   in Loop: Header=BB3_1 Depth=1
Ltmp45:
	.loc	1 62 13 is_stmt 1       ## cachesim.c:62:13
	movl	_total_hits(%rip), %eax
	addl	$1, %eax
	movl	%eax, _total_hits(%rip)
	.loc	1 63 3                  ## cachesim.c:63:3
	movslq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	.loc	1 63 21 is_stmt 0       ## cachesim.c:63:21
	movl	$0, 4(%rdx,%rcx,8)
	.loc	1 65 10 is_stmt 1       ## cachesim.c:65:10
	movl	$1, -36(%rbp)
Ltmp46:
LBB3_8:                                 ##   in Loop: Header=BB3_1 Depth=1
	jmp	LBB3_9
LBB3_9:                                 ##   in Loop: Header=BB3_1 Depth=1
	.loc	1 67 2                  ## cachesim.c:67:2
	jmp	LBB3_10
Ltmp47:
LBB3_10:                                ##   in Loop: Header=BB3_1 Depth=1
	.loc	1 53 46 discriminator 2 ## cachesim.c:53:46
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	.loc	1 53 2 is_stmt 0 discriminator 2 ## cachesim.c:53:2
	jmp	LBB3_1
Ltmp48:
LBB3_11:
	.loc	1 68 6 is_stmt 1        ## cachesim.c:68:6
	cmpl	$0, -36(%rbp)
	.loc	1 68 13 is_stmt 0       ## cachesim.c:68:13
	jne	LBB3_14
## BB#12:
	movq	_policy@GOTPCREL(%rip), %rax
	.loc	1 68 23 discriminator 1 ## cachesim.c:68:23
	movq	(%rax), %rdi
	.loc	1 68 16 discriminator 1 ## cachesim.c:68:16
	leaq	L_.str.2(%rip), %rsi
	callq	_strcmp
	.loc	1 68 41 discriminator 1 ## cachesim.c:68:41
	cmpl	$0, %eax
Ltmp49:
	.loc	1 68 5 discriminator 1  ## cachesim.c:68:5
	jne	LBB3_14
## BB#13:
Ltmp50:
	.loc	1 69 19 is_stmt 1       ## cachesim.c:69:19
	movq	-8(%rbp), %rdi
	.loc	1 69 26 is_stmt 0       ## cachesim.c:69:26
	movl	-28(%rbp), %esi
	.loc	1 69 37                 ## cachesim.c:69:37
	movl	-12(%rbp), %edx
	.loc	1 69 47                 ## cachesim.c:69:47
	movl	-24(%rbp), %ecx
	.loc	1 69 6                  ## cachesim.c:69:6
	callq	_rand_replace
	.loc	1 70 2 is_stmt 1        ## cachesim.c:70:2
	jmp	LBB3_18
Ltmp51:
LBB3_14:
	.loc	1 71 11                 ## cachesim.c:71:11
	cmpl	$0, -36(%rbp)
	.loc	1 71 18 is_stmt 0       ## cachesim.c:71:18
	jne	LBB3_17
## BB#15:
	movq	_policy@GOTPCREL(%rip), %rax
	.loc	1 71 28 discriminator 1 ## cachesim.c:71:28
	movq	(%rax), %rdi
	.loc	1 71 21 discriminator 1 ## cachesim.c:71:21
	leaq	L_.str.3(%rip), %rsi
	callq	_strcmp
	.loc	1 71 43 discriminator 1 ## cachesim.c:71:43
	cmpl	$0, %eax
Ltmp52:
	.loc	1 71 10 discriminator 1 ## cachesim.c:71:10
	jne	LBB3_17
## BB#16:
Ltmp53:
	.loc	1 72 18 is_stmt 1       ## cachesim.c:72:18
	movq	-8(%rbp), %rdi
	.loc	1 72 25 is_stmt 0       ## cachesim.c:72:25
	movl	-28(%rbp), %esi
	.loc	1 72 36                 ## cachesim.c:72:36
	movl	-12(%rbp), %edx
	.loc	1 72 46                 ## cachesim.c:72:46
	movl	-24(%rbp), %ecx
	.loc	1 72 6                  ## cachesim.c:72:6
	callq	_lru_replace
Ltmp54:
LBB3_17:
	jmp	LBB3_18
LBB3_18:
	.loc	1 77 1 is_stmt 1        ## cachesim.c:77:1
	addq	$48, %rsp
	popq	%rbp
	retq
Ltmp55:
Lfunc_end3:
	.cfi_endproc

	.section	__TEXT,__literal8,8byte_literals
	.p2align	3
LCPI4_0:
	.quad	4636737291354636288     ## double 100
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
Lfunc_begin4:
	.loc	1 80 0                  ## cachesim.c:80:0
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp56:
	.cfi_def_cfa_offset 16
Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	%edi, -16(%rbp)
	movq	%rsi, -24(%rbp)
Ltmp59:
	.loc	1 83 13 prologue_end    ## cachesim.c:83:13
	cmpl	$13, -16(%rbp)
Ltmp60:
	.loc	1 83 8 is_stmt 0        ## cachesim.c:83:8
	je	LBB4_2
## BB#1:
	leaq	L_.str.4(%rip), %rsi
	movq	___stderrp@GOTPCREL(%rip), %rax
Ltmp61:
	.loc	1 83 27 discriminator 1 ## cachesim.c:83:27
	movq	(%rax), %rdi
	.loc	1 84 72 is_stmt 1       ## cachesim.c:84:72
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	.loc	1 83 19 discriminator 1 ## cachesim.c:83:19
	movb	$0, %al
	callq	_fprintf
	movl	%eax, -68(%rbp)         ## 4-byte Spill
Ltmp62:
LBB4_2:
	.loc	1 86 11                 ## cachesim.c:86:11
	movl	$1, -28(%rbp)
LBB4_3:                                 ## =>This Inner Loop Header: Depth=1
Ltmp63:
	.loc	1 86 16 is_stmt 0 discriminator 1 ## cachesim.c:86:16
	movl	-28(%rbp), %eax
	.loc	1 86 18 discriminator 1 ## cachesim.c:86:18
	cmpl	-16(%rbp), %eax
Ltmp64:
	.loc	1 86 5 discriminator 1  ## cachesim.c:86:5
	jge	LBB4_23
## BB#4:                                ##   in Loop: Header=BB4_3 Depth=1
Ltmp65:
	.loc	1 88 12 is_stmt 1       ## cachesim.c:88:12
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	.loc	1 88 5 is_stmt 0        ## cachesim.c:88:5
	leaq	L_.str.5(%rip), %rsi
	callq	_strcmp
	.loc	1 88 26                 ## cachesim.c:88:26
	cmpl	$0, %eax
Ltmp66:
	.loc	1 88 5                  ## cachesim.c:88:5
	jne	LBB4_6
## BB#5:                                ##   in Loop: Header=BB4_3 Depth=1
Ltmp67:
	.loc	1 88 50 discriminator 1 ## cachesim.c:88:50
	movl	-28(%rbp), %eax
	.loc	1 88 51 discriminator 1 ## cachesim.c:88:51
	addl	$1, %eax
	.loc	1 88 45 discriminator 1 ## cachesim.c:88:45
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	.loc	1 88 40 discriminator 1 ## cachesim.c:88:40
	callq	_atoi
	.loc	1 88 38 discriminator 1 ## cachesim.c:88:38
	movl	%eax, -32(%rbp)
	.loc	1 88 32 discriminator 1 ## cachesim.c:88:32
	jmp	LBB4_21
LBB4_6:                                 ##   in Loop: Header=BB4_3 Depth=1
Ltmp68:
	.loc	1 89 17 is_stmt 1       ## cachesim.c:89:17
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	.loc	1 89 10 is_stmt 0       ## cachesim.c:89:10
	leaq	L_.str.6(%rip), %rsi
	callq	_strcmp
	.loc	1 89 31                 ## cachesim.c:89:31
	cmpl	$0, %eax
Ltmp69:
	.loc	1 89 10                 ## cachesim.c:89:10
	jne	LBB4_8
## BB#7:                                ##   in Loop: Header=BB4_3 Depth=1
Ltmp70:
	.loc	1 89 56 discriminator 1 ## cachesim.c:89:56
	movl	-28(%rbp), %eax
	.loc	1 89 57 discriminator 1 ## cachesim.c:89:57
	addl	$1, %eax
	.loc	1 89 51 discriminator 1 ## cachesim.c:89:51
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	.loc	1 89 46 discriminator 1 ## cachesim.c:89:46
	callq	_atoi
	.loc	1 89 44 discriminator 1 ## cachesim.c:89:44
	movl	%eax, -36(%rbp)
	.loc	1 89 37 discriminator 1 ## cachesim.c:89:37
	jmp	LBB4_20
LBB4_8:                                 ##   in Loop: Header=BB4_3 Depth=1
Ltmp71:
	.loc	1 90 17 is_stmt 1       ## cachesim.c:90:17
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	.loc	1 90 10 is_stmt 0       ## cachesim.c:90:10
	leaq	L_.str.7(%rip), %rsi
	callq	_strcmp
	.loc	1 90 31                 ## cachesim.c:90:31
	cmpl	$0, %eax
Ltmp72:
	.loc	1 90 10                 ## cachesim.c:90:10
	jne	LBB4_10
## BB#9:                                ##   in Loop: Header=BB4_3 Depth=1
Ltmp73:
	.loc	1 90 55 discriminator 1 ## cachesim.c:90:55
	movl	-28(%rbp), %eax
	.loc	1 90 56 discriminator 1 ## cachesim.c:90:56
	addl	$1, %eax
	.loc	1 90 50 discriminator 1 ## cachesim.c:90:50
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	.loc	1 90 45 discriminator 1 ## cachesim.c:90:45
	callq	_atoi
	.loc	1 90 43 discriminator 1 ## cachesim.c:90:43
	movl	%eax, -40(%rbp)
	.loc	1 90 37 discriminator 1 ## cachesim.c:90:37
	jmp	LBB4_19
LBB4_10:                                ##   in Loop: Header=BB4_3 Depth=1
Ltmp74:
	.loc	1 91 17 is_stmt 1       ## cachesim.c:91:17
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	.loc	1 91 10 is_stmt 0       ## cachesim.c:91:10
	leaq	L_.str.8(%rip), %rsi
	callq	_strcmp
	.loc	1 91 31                 ## cachesim.c:91:31
	cmpl	$0, %eax
Ltmp75:
	.loc	1 91 10                 ## cachesim.c:91:10
	jne	LBB4_12
## BB#11:                               ##   in Loop: Header=BB4_3 Depth=1
Ltmp76:
	.loc	1 91 55 discriminator 1 ## cachesim.c:91:55
	movl	-28(%rbp), %eax
	.loc	1 91 56 discriminator 1 ## cachesim.c:91:56
	addl	$1, %eax
	.loc	1 91 50 discriminator 1 ## cachesim.c:91:50
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	.loc	1 91 45 discriminator 1 ## cachesim.c:91:45
	callq	_atoi
	.loc	1 91 43 discriminator 1 ## cachesim.c:91:43
	movl	%eax, -48(%rbp)
	.loc	1 91 37 discriminator 1 ## cachesim.c:91:37
	jmp	LBB4_18
LBB4_12:                                ##   in Loop: Header=BB4_3 Depth=1
Ltmp77:
	.loc	1 92 17 is_stmt 1       ## cachesim.c:92:17
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	.loc	1 92 10 is_stmt 0       ## cachesim.c:92:10
	leaq	L_.str.9(%rip), %rsi
	callq	_strcmp
	.loc	1 92 31                 ## cachesim.c:92:31
	cmpl	$0, %eax
Ltmp78:
	.loc	1 92 10                 ## cachesim.c:92:10
	jne	LBB4_14
## BB#13:                               ##   in Loop: Header=BB4_3 Depth=1
Ltmp79:
	.loc	1 92 55 discriminator 1 ## cachesim.c:92:55
	movl	-28(%rbp), %eax
	.loc	1 92 56 discriminator 1 ## cachesim.c:92:56
	addl	$1, %eax
	.loc	1 92 50 discriminator 1 ## cachesim.c:92:50
	movslq	%eax, %rcx
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rcx,8), %rdi
	.loc	1 92 45 discriminator 1 ## cachesim.c:92:45
	callq	_atoi
	.loc	1 92 43 discriminator 1 ## cachesim.c:92:43
	movl	%eax, -44(%rbp)
	.loc	1 92 37 discriminator 1 ## cachesim.c:92:37
	jmp	LBB4_17
LBB4_14:                                ##   in Loop: Header=BB4_3 Depth=1
Ltmp80:
	.loc	1 93 17 is_stmt 1       ## cachesim.c:93:17
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	.loc	1 93 10 is_stmt 0       ## cachesim.c:93:10
	leaq	L_.str.10(%rip), %rsi
	callq	_strcmp
	.loc	1 93 31                 ## cachesim.c:93:31
	cmpl	$0, %eax
Ltmp81:
	.loc	1 93 10                 ## cachesim.c:93:10
	jne	LBB4_16
## BB#15:                               ##   in Loop: Header=BB4_3 Depth=1
	movq	_policy@GOTPCREL(%rip), %rax
Ltmp82:
	.loc	1 93 51 discriminator 1 ## cachesim.c:93:51
	movl	-28(%rbp), %ecx
	.loc	1 93 52 discriminator 1 ## cachesim.c:93:52
	addl	$1, %ecx
	.loc	1 93 46 discriminator 1 ## cachesim.c:93:46
	movslq	%ecx, %rdx
	movq	-24(%rbp), %rsi
	movq	(%rsi,%rdx,8), %rdx
	.loc	1 93 44 discriminator 1 ## cachesim.c:93:44
	movq	%rdx, (%rax)
Ltmp83:
LBB4_16:                                ##   in Loop: Header=BB4_3 Depth=1
	jmp	LBB4_17
LBB4_17:                                ##   in Loop: Header=BB4_3 Depth=1
	jmp	LBB4_18
LBB4_18:                                ##   in Loop: Header=BB4_3 Depth=1
	jmp	LBB4_19
LBB4_19:                                ##   in Loop: Header=BB4_3 Depth=1
	jmp	LBB4_20
LBB4_20:                                ##   in Loop: Header=BB4_3 Depth=1
	jmp	LBB4_21
LBB4_21:                                ##   in Loop: Header=BB4_3 Depth=1
	.loc	1 94 5 is_stmt 1        ## cachesim.c:94:5
	jmp	LBB4_22
Ltmp84:
LBB4_22:                                ##   in Loop: Header=BB4_3 Depth=1
	.loc	1 86 27 discriminator 2 ## cachesim.c:86:27
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	.loc	1 86 5 is_stmt 0 discriminator 2 ## cachesim.c:86:5
	jmp	LBB4_3
Ltmp85:
LBB4_23:
	xorl	%esi, %esi
	movq	$-1, %rcx
	xorl	%eax, %eax
	movl	%eax, %edi
	.loc	1 95 11 is_stmt 1       ## cachesim.c:95:11
	movl	%esi, -72(%rbp)         ## 4-byte Spill
	movq	%rcx, -80(%rbp)         ## 8-byte Spill
	callq	_time
	movl	%eax, %esi
	.loc	1 95 5 is_stmt 0 discriminator 1 ## cachesim.c:95:5
	movl	%esi, %edi
	callq	_srand
	.loc	1 96 5 is_stmt 1        ## cachesim.c:96:5
	movl	-36(%rbp), %esi
	movl	%esi, %eax
	movq	%rsp, %rcx
	movq	%rcx, -64(%rbp)
	leaq	15(,%rax,8), %rax
	movabsq	$68719476720, %rcx      ## imm = 0xFFFFFFFF0
	andq	%rcx, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
Ltmp86:
	##DEBUG_VALUE: main:cache <- [%RCX+0]
	.loc	1 97 5                  ## cachesim.c:97:5
	movq	%rcx, %rax
	movslq	-36(%rbp), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movl	-72(%rbp), %esi         ## 4-byte Reload
	movq	-80(%rbp), %rax         ## 8-byte Reload
	movq	%rcx, -88(%rbp)         ## 8-byte Spill
Ltmp87:
	##DEBUG_VALUE: main:cache <-  [complex expression]
	movq	%rax, %rcx
	callq	___memset_chk
	movq	%rax, -96(%rbp)         ## 8-byte Spill
LBB4_24:                                ## =>This Inner Loop Header: Depth=1
	##DEBUG_VALUE: main:cache <-  [complex expression]
	leaq	L_.str.11(%rip), %rdi
	leaq	-52(%rbp), %rsi
	.loc	1 100 11 discriminator 1 ## cachesim.c:100:11
	movb	$0, %al
	callq	_scanf
	.loc	1 100 33 is_stmt 0 discriminator 1 ## cachesim.c:100:33
	cmpl	$1, %eax
	.loc	1 100 5 discriminator 1 ## cachesim.c:100:5
	jne	LBB4_26
## BB#25:                               ##   in Loop: Header=BB4_24 Depth=1
	##DEBUG_VALUE: main:cache <-  [complex expression]
Ltmp88:
	.loc	1 101 7 is_stmt 1       ## cachesim.c:101:7
	movl	_total(%rip), %eax
	addl	$1, %eax
	movl	%eax, _total(%rip)
	.loc	1 102 21                ## cachesim.c:102:21
	movl	-52(%rbp), %esi
	.loc	1 102 30 is_stmt 0      ## cachesim.c:102:30
	movl	-36(%rbp), %edx
	.loc	1 102 38                ## cachesim.c:102:38
	movl	-32(%rbp), %ecx
	.loc	1 102 45                ## cachesim.c:102:45
	movl	-40(%rbp), %r8d
	.loc	1 102 2                 ## cachesim.c:102:2
	movq	-88(%rbp), %rdi         ## 8-byte Reload
	callq	_add_address
Ltmp89:
	.loc	1 100 5 is_stmt 1 discriminator 2 ## cachesim.c:100:5
	jmp	LBB4_24
LBB4_26:
	##DEBUG_VALUE: main:cache <-  [complex expression]
	leaq	L_.str.12(%rip), %rdi
	.loc	1 107 33                ## cachesim.c:107:33
	movl	_total(%rip), %esi
	.loc	1 107 5 is_stmt 0       ## cachesim.c:107:5
	movb	$0, %al
	callq	_printf
	leaq	L_.str.13(%rip), %rdi
	.loc	1 108 32 is_stmt 1      ## cachesim.c:108:32
	movl	_total_hits(%rip), %esi
	.loc	1 108 5 is_stmt 0       ## cachesim.c:108:5
	movl	%eax, -100(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.14(%rip), %rdi
	.loc	1 109 34 is_stmt 1      ## cachesim.c:109:34
	movl	_total(%rip), %esi
	.loc	1 109 40 is_stmt 0      ## cachesim.c:109:40
	subl	_total_hits(%rip), %esi
	.loc	1 109 5                 ## cachesim.c:109:5
	movl	%eax, -104(%rbp)        ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.15(%rip), %rdi
	movsd	LCPI4_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	.loc	1 110 42 is_stmt 1      ## cachesim.c:110:42
	cvtsi2sdl	_total_hits(%rip), %xmm1
	.loc	1 110 40 is_stmt 0      ## cachesim.c:110:40
	mulsd	%xmm1, %xmm0
	.loc	1 110 64                ## cachesim.c:110:64
	cvtsi2sdl	_total(%rip), %xmm1
	.loc	1 110 62                ## cachesim.c:110:62
	divsd	%xmm1, %xmm0
	.loc	1 110 5                 ## cachesim.c:110:5
	movl	%eax, -108(%rbp)        ## 4-byte Spill
	movb	$1, %al
	callq	_printf
	leaq	L_.str.16(%rip), %rdi
	movsd	LCPI4_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	.loc	1 111 52 is_stmt 1      ## cachesim.c:111:52
	movl	_total(%rip), %esi
	.loc	1 111 58 is_stmt 0      ## cachesim.c:111:58
	subl	_total_hits(%rip), %esi
	.loc	1 111 43                ## cachesim.c:111:43
	cvtsi2sdl	%esi, %xmm1
	.loc	1 111 41                ## cachesim.c:111:41
	mulsd	%xmm1, %xmm0
	.loc	1 111 74                ## cachesim.c:111:74
	cvtsi2sdl	_total(%rip), %xmm1
	.loc	1 111 72                ## cachesim.c:111:72
	divsd	%xmm1, %xmm0
	.loc	1 111 5                 ## cachesim.c:111:5
	movl	%eax, -112(%rbp)        ## 4-byte Spill
	movb	$1, %al
	callq	_printf
	leaq	L_.str.17(%rip), %rdi
	.loc	1 112 35 is_stmt 1      ## cachesim.c:112:35
	cvtsi2sdl	-44(%rbp), %xmm0
	.loc	1 112 54 is_stmt 0      ## cachesim.c:112:54
	movl	_total(%rip), %esi
	.loc	1 112 60                ## cachesim.c:112:60
	subl	_total_hits(%rip), %esi
	.loc	1 112 45                ## cachesim.c:112:45
	cvtsi2sdl	%esi, %xmm1
	.loc	1 112 76                ## cachesim.c:112:76
	cvtsi2sdl	_total(%rip), %xmm2
	.loc	1 112 74                ## cachesim.c:112:74
	divsd	%xmm2, %xmm1
	.loc	1 112 85                ## cachesim.c:112:85
	cvtsi2sdl	-48(%rbp), %xmm2
	.loc	1 112 83                ## cachesim.c:112:83
	mulsd	%xmm2, %xmm1
	.loc	1 112 41                ## cachesim.c:112:41
	addsd	%xmm1, %xmm0
	.loc	1 112 5                 ## cachesim.c:112:5
	movl	%eax, -116(%rbp)        ## 4-byte Spill
	movb	$1, %al
	callq	_printf
	.loc	1 114 5 is_stmt 1       ## cachesim.c:114:5
	movl	$0, -12(%rbp)
	.loc	1 115 1                 ## cachesim.c:115:1
	movq	-64(%rbp), %rdi
	movq	%rdi, %rsp
	movl	-12(%rbp), %esi
	movq	___stack_chk_guard@GOTPCREL(%rip), %rdi
	movq	(%rdi), %rdi
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rdi
	movl	%eax, -120(%rbp)        ## 4-byte Spill
	movl	%esi, -124(%rbp)        ## 4-byte Spill
	jne	LBB4_28
## BB#27:
	##DEBUG_VALUE: main:cache <-  [complex expression]
	movl	-124(%rbp), %eax        ## 4-byte Reload
	movq	%rbp, %rsp
	popq	%rbp
	retq
LBB4_28:
	##DEBUG_VALUE: main:cache <-  [complex expression]
	.loc	1 0 0                   ## cachesim.c:0:0
	callq	___stack_chk_fail
Ltmp90:
Lfunc_end4:
	.cfi_endproc

	.globl	_total_hits             ## @total_hits
.zerofill __DATA,__common,_total_hits,4,2
	.globl	_total                  ## @total
.zerofill __DATA,__common,_total,4,2
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"\n"

L_.str.1:                               ## @.str.1
	.asciz	"0x%.5x %.1d, "

	.comm	_policy,8,3             ## @policy
L_.str.2:                               ## @.str.2
	.asciz	"random"

L_.str.3:                               ## @.str.3
	.asciz	"lru"

L_.str.4:                               ## @.str.4
	.asciz	"USAGE: %s -s blocksize -n numblocks -a associativity -m miss_time -h hit_time -r replacement_policy\n"

L_.str.5:                               ## @.str.5
	.asciz	"-s"

L_.str.6:                               ## @.str.6
	.asciz	"-n"

L_.str.7:                               ## @.str.7
	.asciz	"-a"

L_.str.8:                               ## @.str.8
	.asciz	"-m"

L_.str.9:                               ## @.str.9
	.asciz	"-h"

L_.str.10:                              ## @.str.10
	.asciz	"-r"

L_.str.11:                              ## @.str.11
	.asciz	"%x"

L_.str.12:                              ## @.str.12
	.asciz	"Total Reads: %d\n"

L_.str.13:                              ## @.str.13
	.asciz	"Total Hits: %d\n"

L_.str.14:                              ## @.str.14
	.asciz	"Total Misses: %d\n"

L_.str.15:                              ## @.str.15
	.asciz	"Hit Rate: %3.2lf%%\n"

L_.str.16:                              ## @.str.16
	.asciz	"Miss Rate: %3.2lf%%\n"

L_.str.17:                              ## @.str.17
	.asciz	"AMAT: %lf cycles.\n"

	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple LLVM version 8.1.0 (clang-802.0.42)" ## string offset=0
	.asciz	"cachesim.c"            ## string offset=42
	.asciz	"/Users/samneyhart/Desktop/ECE451/lab2-451" ## string offset=53
	.asciz	"total_hits"            ## string offset=95
	.asciz	"int"                   ## string offset=106
	.asciz	"total"                 ## string offset=110
	.asciz	"policy"                ## string offset=116
	.asciz	"char"                  ## string offset=123
	.asciz	"double"                ## string offset=128
	.asciz	"print_cache"           ## string offset=135
	.asciz	"lru_replace"           ## string offset=147
	.asciz	"rand_replace"          ## string offset=159
	.asciz	"add_address"           ## string offset=172
	.asciz	"main"                  ## string offset=184
	.asciz	"cache"                 ## string offset=189
	.asciz	"cblock"                ## string offset=195
	.asciz	"address"               ## string offset=202
	.asciz	"history"               ## string offset=210
	.asciz	"blocks"                ## string offset=218
	.asciz	"i"                     ## string offset=225
	.asciz	"caddress"              ## string offset=227
	.asciz	"assoc"                 ## string offset=236
	.asciz	"max"                   ## string offset=242
	.asciz	"r"                     ## string offset=246
	.asciz	"bsize"                 ## string offset=248
	.asciz	"it"                    ## string offset=254
	.asciz	"addhit"                ## string offset=257
	.asciz	"argc"                  ## string offset=264
	.asciz	"argv"                  ## string offset=269
	.asciz	"htime"                 ## string offset=274
	.asciz	"mtime"                 ## string offset=280
	.asciz	"sizetype"              ## string offset=286
	.section	__DWARF,__debug_loc,regular,debug
Lsection_debug_loc:
Ldebug_loc0:
Lset0 = Ltmp86-Lfunc_begin0
	.quad	Lset0
Lset1 = Ltmp87-Lfunc_begin0
	.quad	Lset1
	.short	2                       ## Loc expr size
	.byte	114                     ## DW_OP_breg2
	.byte	0                       ## 0
Lset2 = Ltmp87-Lfunc_begin0
	.quad	Lset2
Lset3 = Lfunc_end4-Lfunc_begin0
	.quad	Lset3
	.short	4                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	168                     ## -88
	.byte	127                     ## DW_OP_deref
	.byte	6                       ## 
	.quad	0
	.quad	0
	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.byte	1                       ## Abbreviation Code
	.byte	17                      ## DW_TAG_compile_unit
	.byte	1                       ## DW_CHILDREN_yes
	.byte	37                      ## DW_AT_producer
	.byte	14                      ## DW_FORM_strp
	.byte	19                      ## DW_AT_language
	.byte	5                       ## DW_FORM_data2
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	16                      ## DW_AT_stmt_list
	.byte	23                      ## DW_FORM_sec_offset
	.byte	27                      ## DW_AT_comp_dir
	.byte	14                      ## DW_FORM_strp
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	6                       ## DW_FORM_data4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	2                       ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	63                      ## DW_AT_external
	.byte	25                      ## DW_FORM_flag_present
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	2                       ## DW_AT_location
	.byte	24                      ## DW_FORM_exprloc
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	3                       ## Abbreviation Code
	.byte	36                      ## DW_TAG_base_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	62                      ## DW_AT_encoding
	.byte	11                      ## DW_FORM_data1
	.byte	11                      ## DW_AT_byte_size
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	4                       ## Abbreviation Code
	.byte	15                      ## DW_TAG_pointer_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	5                       ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	6                       ## DW_FORM_data4
	.byte	64                      ## DW_AT_frame_base
	.byte	24                      ## DW_FORM_exprloc
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	39                      ## DW_AT_prototyped
	.byte	25                      ## DW_FORM_flag_present
	.byte	63                      ## DW_AT_external
	.byte	25                      ## DW_FORM_flag_present
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	6                       ## Abbreviation Code
	.byte	5                       ## DW_TAG_formal_parameter
	.byte	0                       ## DW_CHILDREN_no
	.byte	2                       ## DW_AT_location
	.byte	24                      ## DW_FORM_exprloc
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	7                       ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	2                       ## DW_AT_location
	.byte	24                      ## DW_FORM_exprloc
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	8                       ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	6                       ## DW_FORM_data4
	.byte	64                      ## DW_AT_frame_base
	.byte	24                      ## DW_FORM_exprloc
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	39                      ## DW_AT_prototyped
	.byte	25                      ## DW_FORM_flag_present
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	63                      ## DW_AT_external
	.byte	25                      ## DW_FORM_flag_present
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	9                       ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	2                       ## DW_AT_location
	.byte	23                      ## DW_FORM_sec_offset
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	10                      ## Abbreviation Code
	.byte	22                      ## DW_TAG_typedef
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	11                      ## Abbreviation Code
	.byte	19                      ## DW_TAG_structure_type
	.byte	1                       ## DW_CHILDREN_yes
	.byte	11                      ## DW_AT_byte_size
	.byte	11                      ## DW_FORM_data1
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	12                      ## Abbreviation Code
	.byte	13                      ## DW_TAG_member
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	56                      ## DW_AT_data_member_location
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	13                      ## Abbreviation Code
	.byte	1                       ## DW_TAG_array_type
	.byte	1                       ## DW_CHILDREN_yes
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	14                      ## Abbreviation Code
	.byte	33                      ## DW_TAG_subrange_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	15                      ## Abbreviation Code
	.byte	36                      ## DW_TAG_base_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	11                      ## DW_AT_byte_size
	.byte	11                      ## DW_FORM_data1
	.byte	62                      ## DW_AT_encoding
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	0                       ## EOM(3)
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
	.long	787                     ## Length of Unit
	.short	4                       ## DWARF version number
Lset4 = Lsection_abbrev-Lsection_abbrev ## Offset Into Abbrev. Section
	.long	Lset4
	.byte	8                       ## Address Size (in bytes)
	.byte	1                       ## Abbrev [1] 0xb:0x30c DW_TAG_compile_unit
	.long	0                       ## DW_AT_producer
	.short	12                      ## DW_AT_language
	.long	42                      ## DW_AT_name
Lset5 = Lline_table_start0-Lsection_line ## DW_AT_stmt_list
	.long	Lset5
	.long	53                      ## DW_AT_comp_dir
	.quad	Lfunc_begin0            ## DW_AT_low_pc
Lset6 = Lfunc_end4-Lfunc_begin0         ## DW_AT_high_pc
	.long	Lset6
	.byte	2                       ## Abbrev [2] 0x2a:0x15 DW_TAG_variable
	.long	95                      ## DW_AT_name
	.long	63                      ## DW_AT_type
                                        ## DW_AT_external
	.byte	1                       ## DW_AT_decl_file
	.byte	6                       ## DW_AT_decl_line
	.byte	9                       ## DW_AT_location
	.byte	3
	.quad	_total_hits
	.byte	3                       ## Abbrev [3] 0x3f:0x7 DW_TAG_base_type
	.long	106                     ## DW_AT_name
	.byte	5                       ## DW_AT_encoding
	.byte	4                       ## DW_AT_byte_size
	.byte	2                       ## Abbrev [2] 0x46:0x15 DW_TAG_variable
	.long	110                     ## DW_AT_name
	.long	63                      ## DW_AT_type
                                        ## DW_AT_external
	.byte	1                       ## DW_AT_decl_file
	.byte	7                       ## DW_AT_decl_line
	.byte	9                       ## DW_AT_location
	.byte	3
	.quad	_total
	.byte	2                       ## Abbrev [2] 0x5b:0x15 DW_TAG_variable
	.long	116                     ## DW_AT_name
	.long	112                     ## DW_AT_type
                                        ## DW_AT_external
	.byte	1                       ## DW_AT_decl_file
	.byte	8                       ## DW_AT_decl_line
	.byte	9                       ## DW_AT_location
	.byte	3
	.quad	_policy
	.byte	4                       ## Abbrev [4] 0x70:0x5 DW_TAG_pointer_type
	.long	117                     ## DW_AT_type
	.byte	3                       ## Abbrev [3] 0x75:0x7 DW_TAG_base_type
	.long	123                     ## DW_AT_name
	.byte	6                       ## DW_AT_encoding
	.byte	1                       ## DW_AT_byte_size
	.byte	3                       ## Abbrev [3] 0x7c:0x7 DW_TAG_base_type
	.long	128                     ## DW_AT_name
	.byte	4                       ## DW_AT_encoding
	.byte	8                       ## DW_AT_byte_size
	.byte	5                       ## Abbrev [5] 0x83:0x40 DW_TAG_subprogram
	.quad	Lfunc_begin0            ## DW_AT_low_pc
Lset7 = Lfunc_end0-Lfunc_begin0         ## DW_AT_high_pc
	.long	Lset7
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	135                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	16                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
                                        ## DW_AT_external
	.byte	6                       ## Abbrev [6] 0x98:0xe DW_TAG_formal_parameter
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	120
	.long	189                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	16                      ## DW_AT_decl_line
	.long	722                     ## DW_AT_type
	.byte	6                       ## Abbrev [6] 0xa6:0xe DW_TAG_formal_parameter
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	116
	.long	218                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	16                      ## DW_AT_decl_line
	.long	63                      ## DW_AT_type
	.byte	7                       ## Abbrev [7] 0xb4:0xe DW_TAG_variable
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	112
	.long	225                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	18                      ## DW_AT_decl_line
	.long	63                      ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	5                       ## Abbrev [5] 0xc3:0x78 DW_TAG_subprogram
	.quad	Lfunc_begin1            ## DW_AT_low_pc
Lset8 = Lfunc_end1-Lfunc_begin1         ## DW_AT_high_pc
	.long	Lset8
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	147                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	26                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
                                        ## DW_AT_external
	.byte	6                       ## Abbrev [6] 0xd8:0xe DW_TAG_formal_parameter
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	120
	.long	189                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	26                      ## DW_AT_decl_line
	.long	722                     ## DW_AT_type
	.byte	6                       ## Abbrev [6] 0xe6:0xe DW_TAG_formal_parameter
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	116
	.long	227                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	26                      ## DW_AT_decl_line
	.long	63                      ## DW_AT_type
	.byte	6                       ## Abbrev [6] 0xf4:0xe DW_TAG_formal_parameter
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	112
	.long	202                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	26                      ## DW_AT_decl_line
	.long	63                      ## DW_AT_type
	.byte	6                       ## Abbrev [6] 0x102:0xe DW_TAG_formal_parameter
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	108
	.long	236                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	26                      ## DW_AT_decl_line
	.long	63                      ## DW_AT_type
	.byte	7                       ## Abbrev [7] 0x110:0xe DW_TAG_variable
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	104
	.long	225                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	29                      ## DW_AT_decl_line
	.long	63                      ## DW_AT_type
	.byte	7                       ## Abbrev [7] 0x11e:0xe DW_TAG_variable
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	100
	.long	242                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	29                      ## DW_AT_decl_line
	.long	63                      ## DW_AT_type
	.byte	7                       ## Abbrev [7] 0x12c:0xe DW_TAG_variable
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	96
	.long	246                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	29                      ## DW_AT_decl_line
	.long	63                      ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	5                       ## Abbrev [5] 0x13b:0x5c DW_TAG_subprogram
	.quad	Lfunc_begin2            ## DW_AT_low_pc
Lset9 = Lfunc_end2-Lfunc_begin2         ## DW_AT_high_pc
	.long	Lset9
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	159                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	40                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
                                        ## DW_AT_external
	.byte	6                       ## Abbrev [6] 0x150:0xe DW_TAG_formal_parameter
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	120
	.long	189                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	40                      ## DW_AT_decl_line
	.long	722                     ## DW_AT_type
	.byte	6                       ## Abbrev [6] 0x15e:0xe DW_TAG_formal_parameter
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	116
	.long	227                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	40                      ## DW_AT_decl_line
	.long	63                      ## DW_AT_type
	.byte	6                       ## Abbrev [6] 0x16c:0xe DW_TAG_formal_parameter
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	112
	.long	202                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	40                      ## DW_AT_decl_line
	.long	63                      ## DW_AT_type
	.byte	6                       ## Abbrev [6] 0x17a:0xe DW_TAG_formal_parameter
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	108
	.long	236                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	40                      ## DW_AT_decl_line
	.long	63                      ## DW_AT_type
	.byte	7                       ## Abbrev [7] 0x188:0xe DW_TAG_variable
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	104
	.long	246                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	42                      ## DW_AT_decl_line
	.long	63                      ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	5                       ## Abbrev [5] 0x197:0x86 DW_TAG_subprogram
	.quad	Lfunc_begin3            ## DW_AT_low_pc
Lset10 = Lfunc_end3-Lfunc_begin3        ## DW_AT_high_pc
	.long	Lset10
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	172                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	48                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
                                        ## DW_AT_external
	.byte	6                       ## Abbrev [6] 0x1ac:0xe DW_TAG_formal_parameter
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	120
	.long	189                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	48                      ## DW_AT_decl_line
	.long	722                     ## DW_AT_type
	.byte	6                       ## Abbrev [6] 0x1ba:0xe DW_TAG_formal_parameter
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	116
	.long	202                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	48                      ## DW_AT_decl_line
	.long	63                      ## DW_AT_type
	.byte	6                       ## Abbrev [6] 0x1c8:0xe DW_TAG_formal_parameter
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	112
	.long	218                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	48                      ## DW_AT_decl_line
	.long	63                      ## DW_AT_type
	.byte	6                       ## Abbrev [6] 0x1d6:0xe DW_TAG_formal_parameter
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	108
	.long	248                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	48                      ## DW_AT_decl_line
	.long	63                      ## DW_AT_type
	.byte	6                       ## Abbrev [6] 0x1e4:0xe DW_TAG_formal_parameter
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	104
	.long	236                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	48                      ## DW_AT_decl_line
	.long	63                      ## DW_AT_type
	.byte	7                       ## Abbrev [7] 0x1f2:0xe DW_TAG_variable
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	100
	.long	227                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	50                      ## DW_AT_decl_line
	.long	63                      ## DW_AT_type
	.byte	7                       ## Abbrev [7] 0x200:0xe DW_TAG_variable
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	96
	.long	254                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	50                      ## DW_AT_decl_line
	.long	63                      ## DW_AT_type
	.byte	7                       ## Abbrev [7] 0x20e:0xe DW_TAG_variable
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	92
	.long	257                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	50                      ## DW_AT_decl_line
	.long	63                      ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	8                       ## Abbrev [8] 0x21d:0xb5 DW_TAG_subprogram
	.quad	Lfunc_begin4            ## DW_AT_low_pc
Lset11 = Lfunc_end4-Lfunc_begin4        ## DW_AT_high_pc
	.long	Lset11
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	184                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	79                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	63                      ## DW_AT_type
                                        ## DW_AT_external
	.byte	6                       ## Abbrev [6] 0x236:0xe DW_TAG_formal_parameter
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	112
	.long	264                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	79                      ## DW_AT_decl_line
	.long	63                      ## DW_AT_type
	.byte	6                       ## Abbrev [6] 0x244:0xe DW_TAG_formal_parameter
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	104
	.long	269                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	79                      ## DW_AT_decl_line
	.long	767                     ## DW_AT_type
	.byte	7                       ## Abbrev [7] 0x252:0xe DW_TAG_variable
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	100
	.long	225                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	81                      ## DW_AT_decl_line
	.long	63                      ## DW_AT_type
	.byte	7                       ## Abbrev [7] 0x260:0xe DW_TAG_variable
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	96
	.long	248                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	81                      ## DW_AT_decl_line
	.long	63                      ## DW_AT_type
	.byte	7                       ## Abbrev [7] 0x26e:0xe DW_TAG_variable
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	92
	.long	218                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	81                      ## DW_AT_decl_line
	.long	63                      ## DW_AT_type
	.byte	7                       ## Abbrev [7] 0x27c:0xe DW_TAG_variable
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	88
	.long	236                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	81                      ## DW_AT_decl_line
	.long	63                      ## DW_AT_type
	.byte	7                       ## Abbrev [7] 0x28a:0xe DW_TAG_variable
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	84
	.long	274                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	81                      ## DW_AT_decl_line
	.long	63                      ## DW_AT_type
	.byte	7                       ## Abbrev [7] 0x298:0xe DW_TAG_variable
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	80
	.long	280                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	81                      ## DW_AT_decl_line
	.long	63                      ## DW_AT_type
	.byte	7                       ## Abbrev [7] 0x2a6:0xe DW_TAG_variable
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	76
	.long	202                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	81                      ## DW_AT_decl_line
	.long	63                      ## DW_AT_type
	.byte	7                       ## Abbrev [7] 0x2b4:0xe DW_TAG_variable
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	72
	.long	227                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	81                      ## DW_AT_decl_line
	.long	63                      ## DW_AT_type
	.byte	9                       ## Abbrev [9] 0x2c2:0xf DW_TAG_variable
Lset12 = Ldebug_loc0-Lsection_debug_loc ## DW_AT_location
	.long	Lset12
	.long	189                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	96                      ## DW_AT_decl_line
	.long	772                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	4                       ## Abbrev [4] 0x2d2:0x5 DW_TAG_pointer_type
	.long	727                     ## DW_AT_type
	.byte	10                      ## Abbrev [10] 0x2d7:0xb DW_TAG_typedef
	.long	738                     ## DW_AT_type
	.long	195                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	14                      ## DW_AT_decl_line
	.byte	11                      ## Abbrev [11] 0x2e2:0x1d DW_TAG_structure_type
	.byte	8                       ## DW_AT_byte_size
	.byte	1                       ## DW_AT_decl_file
	.byte	12                      ## DW_AT_decl_line
	.byte	12                      ## Abbrev [12] 0x2e6:0xc DW_TAG_member
	.long	202                     ## DW_AT_name
	.long	63                      ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	13                      ## DW_AT_decl_line
	.byte	0                       ## DW_AT_data_member_location
	.byte	12                      ## Abbrev [12] 0x2f2:0xc DW_TAG_member
	.long	210                     ## DW_AT_name
	.long	63                      ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	13                      ## DW_AT_decl_line
	.byte	4                       ## DW_AT_data_member_location
	.byte	0                       ## End Of Children Mark
	.byte	4                       ## Abbrev [4] 0x2ff:0x5 DW_TAG_pointer_type
	.long	112                     ## DW_AT_type
	.byte	13                      ## Abbrev [13] 0x304:0xb DW_TAG_array_type
	.long	727                     ## DW_AT_type
	.byte	14                      ## Abbrev [14] 0x309:0x5 DW_TAG_subrange_type
	.long	783                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	15                      ## Abbrev [15] 0x30f:0x7 DW_TAG_base_type
	.long	286                     ## DW_AT_name
	.byte	8                       ## DW_AT_byte_size
	.byte	7                       ## DW_AT_encoding
	.byte	0                       ## End Of Children Mark
	.section	__DWARF,__debug_ranges,regular,debug
Ldebug_range:
	.section	__DWARF,__debug_macinfo,regular,debug
Ldebug_macinfo:
Lcu_macro_begin0:
	.byte	0                       ## End Of Macro List Mark
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	8                       ## Header Bucket Count
	.long	8                       ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.long	0                       ## Bucket 0
	.long	1                       ## Bucket 1
	.long	2                       ## Bucket 2
	.long	3                       ## Bucket 3
	.long	-1                      ## Bucket 4
	.long	5                       ## Bucket 5
	.long	-1                      ## Bucket 6
	.long	-1                      ## Bucket 7
	.long	-940495360              ## Hash in Bucket 0
	.long	275837705               ## Hash in Bucket 1
	.long	2090499946              ## Hash in Bucket 2
	.long	532166035               ## Hash in Bucket 3
	.long	1344012499              ## Hash in Bucket 3
	.long	355889141               ## Hash in Bucket 5
	.long	573931493               ## Hash in Bucket 5
	.long	-773375995              ## Hash in Bucket 5
	.long	LNames5-Lnames_begin    ## Offset in Bucket 0
	.long	LNames3-Lnames_begin    ## Offset in Bucket 1
	.long	LNames4-Lnames_begin    ## Offset in Bucket 2
	.long	LNames6-Lnames_begin    ## Offset in Bucket 3
	.long	LNames7-Lnames_begin    ## Offset in Bucket 3
	.long	LNames0-Lnames_begin    ## Offset in Bucket 5
	.long	LNames1-Lnames_begin    ## Offset in Bucket 5
	.long	LNames2-Lnames_begin    ## Offset in Bucket 5
LNames5:
	.long	95                      ## total_hits
	.long	1                       ## Num DIEs
	.long	42
	.long	0
LNames3:
	.long	110                     ## total
	.long	1                       ## Num DIEs
	.long	70
	.long	0
LNames4:
	.long	184                     ## main
	.long	1                       ## Num DIEs
	.long	541
	.long	0
LNames6:
	.long	147                     ## lru_replace
	.long	1                       ## Num DIEs
	.long	195
	.long	0
LNames7:
	.long	172                     ## add_address
	.long	1                       ## Num DIEs
	.long	407
	.long	0
LNames0:
	.long	116                     ## policy
	.long	1                       ## Num DIEs
	.long	91
	.long	0
LNames1:
	.long	135                     ## print_cache
	.long	1                       ## Num DIEs
	.long	131
	.long	0
LNames2:
	.long	159                     ## rand_replace
	.long	1                       ## Num DIEs
	.long	315
	.long	0
	.section	__DWARF,__apple_objc,regular,debug
Lobjc_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	1                       ## Header Bucket Count
	.long	0                       ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.long	-1                      ## Bucket 0
	.section	__DWARF,__apple_namespac,regular,debug
Lnamespac_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	1                       ## Header Bucket Count
	.long	0                       ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.long	-1                      ## Bucket 0
	.section	__DWARF,__apple_types,regular,debug
Ltypes_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	4                       ## Header Bucket Count
	.long	4                       ## Header Hash Count
	.long	20                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	3                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.short	3                       ## DW_ATOM_die_tag
	.short	5                       ## DW_FORM_data2
	.short	4                       ## DW_ATOM_type_flags
	.short	11                      ## DW_FORM_data1
	.long	0                       ## Bucket 0
	.long	-1                      ## Bucket 1
	.long	-1                      ## Bucket 2
	.long	2                       ## Bucket 3
	.long	193495088               ## Hash in Bucket 0
	.long	-113419488              ## Hash in Bucket 0
	.long	2090147939              ## Hash in Bucket 3
	.long	-168281421              ## Hash in Bucket 3
	.long	Ltypes0-Ltypes_begin    ## Offset in Bucket 0
	.long	Ltypes1-Ltypes_begin    ## Offset in Bucket 0
	.long	Ltypes2-Ltypes_begin    ## Offset in Bucket 3
	.long	Ltypes3-Ltypes_begin    ## Offset in Bucket 3
Ltypes0:
	.long	106                     ## int
	.long	1                       ## Num DIEs
	.long	63
	.short	36
	.byte	0
	.long	0
Ltypes1:
	.long	128                     ## double
	.long	1                       ## Num DIEs
	.long	124
	.short	36
	.byte	0
	.long	0
Ltypes2:
	.long	123                     ## char
	.long	1                       ## Num DIEs
	.long	117
	.short	36
	.byte	0
	.long	0
Ltypes3:
	.long	195                     ## cblock
	.long	1                       ## Num DIEs
	.long	727
	.short	22
	.byte	0
	.long	0
	.section	__DWARF,__apple_exttypes,regular,debug
Lexttypes_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	1                       ## Header Bucket Count
	.long	0                       ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	7                       ## DW_ATOM_ext_types
	.short	6                       ## DW_FORM_data4
	.long	-1                      ## Bucket 0

.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
