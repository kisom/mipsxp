	.data
hi:	.asciiz	"Hello!\n"

	.text
sayhi:	ori	$v0,	$0,	4
	ori	$a0,	$0,	1
	dla	$a1,	hi
	ori	$a0,	$0,	7
	syscall
	jr	$ra
	nop

main:	ori	$t0,	$0,	0
	ori	$t1,	$0,	10
	jal	$sayhi
	addi	$t0,	$t0,	1
	bne	$t0,	$t1,	-32
	nop

	ori	$v0,	$0,	1
	ori	$a0,	$0,	0
	syscall
