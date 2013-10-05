	.data
	.align 3
newline:.asciiz "\n"
yes:	.asciiz "Yes"
no:	.asciiz	"No"
jtbl:	.dword yes, no

	.text
	.globl	main
main:
	dla	$a0,	jtbl
	ld	$a0,	0($a0)
	addiu	$a0,	$a0,	4
	jal	print

	dla	$a0,	newline
	jal	print

	ori	$v0,	$0,	1
	ori	$a0,	$0,	0
	syscall
