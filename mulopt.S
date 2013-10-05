	.text
	.globl	main
main:
	li	$a0,	2
	li	$a1,	2
	mult	$a0,	$a1
	li	$t0,	0
	li	$t1,	10
for:
	beq	$t0,	$t1,	done
	addi	$t0,	$t0,	1
	j	for
done:
	mflo	$a0
	addi	$a0,	$a0,	1
	li	$v0,	1
	syscall
