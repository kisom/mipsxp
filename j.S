	.text
	.globl	main
main:	.ent	main
	ori	$v0,	$0,	1
	ori	$a0,	$0,	0
	syscall
	.end	main
