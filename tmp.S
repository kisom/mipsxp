.data
filename:.asciiz	"tmp.out"
filedata:.asciiz	"hello\n"
.text
.globl	main

main:
	li	$v0,	5
	dla	$a0,	filename
	li	$a1,	513
	li	$a2,	420
	syscall

	move	$t8,	$v0

	li	$v0,	4
	move	$a0,	$t8
	dla	$a1,	filedata
	li	$a2,	6
	syscall

	li	$v0,	1
	li	$a0,	0
	syscall


