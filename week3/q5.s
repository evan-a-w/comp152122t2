	.data
numbers:
	.word 0,0,0,0,0,0,0,0,0,0

	.text
main:
	li	$t0, 0 # i in $t0

loop:
	beq	$t0, 10, end

	li	$v0, 5 # scanf("%d", &numbers[i])
	syscall

	mul	$t1, $t0, 4 # i * 4 in $t1

	sw	$v0, numbers($t1)
loop__step:
	add	$t0, $t0, 1

	j	loop
end:

	li	$v0, 0
	jr	$ra
