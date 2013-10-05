	.ktext 0x84000000
	.globl	main
main:
	ori	$v0,	$0,	1
	ori	$a0,	$0,	0
	syscall

