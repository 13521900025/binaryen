	.text
	.file	"/b/build/slave/linux/build/src/buildbot/work/gcc/gcc/testsuite/gcc.c-torture/execute/20001111-1.c"
	.globl	foo
	.type	foo,@function
foo:                                    # @foo
	.param  	i32
	.result 	i32
	.local  	i32
# BB#0:                                 # %entry
	i32.const	$1=, 0
	i32.load8_u	$push0=, next_buffer($1)
	i32.const	$push1=, 52783
	i32.select	$push2=, $pop0, $pop1, $1
	i32.add 	$push3=, $pop2, $0
	return  	$pop3
func_end0:
	.size	foo, func_end0-foo

	.globl	bar
	.type	bar,@function
bar:                                    # @bar
# BB#0:                                 # %entry
	return
func_end1:
	.size	bar, func_end1-bar

	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32
# BB#0:                                 # %entry
	i32.const	$0=, 0
	block   	BB2_2
	i32.load8_u	$push0=, next_buffer($0)
	i32.const	$push2=, 0
	i32.eq  	$push3=, $pop0, $pop2
	br_if   	$pop3, BB2_2
# BB#1:                                 # %if.then
	call    	abort
	unreachable
BB2_2:                                  # %if.end4
	i32.const	$push1=, 1
	i32.store8	$discard=, next_buffer($0), $pop1
	call    	exit, $0
	unreachable
func_end2:
	.size	main, func_end2-main

	.type	next_buffer,@object     # @next_buffer
	.lcomm	next_buffer,1

	.ident	"clang version 3.8.0 "
	.section	".note.GNU-stack","",@progbits