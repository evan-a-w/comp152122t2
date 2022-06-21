	.text

main:
	li	$t0, 0

main__loop1:
	bge	$t0, 10, main__loop1_false

	li	$v0, 5 # integer has been read into $v0
	syscall

	mul	$t1, $t0, 4
	sw	$v0, numbers($t1)

	add	$t0, $t0, 1
	j	main__loop1

main__loop1_false:
	li	$t0, 0

main__loop2:
	bge	$t0, 10, main__prologue

	mul	$t1, $t0, 4
	lw	$t2, numbers($t1)

	move	$a0, $t2
	li	$v0, 1
	syscall

	li	$a0, '\n'
	li	$v0, 11
	syscall

	add	$t0, $t0, 1
	j	main__loop2

main__prologue:
	li	$v0, 0
	jr	$ra

	.data
numbers:
	.word 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
