max:
max__prologue:
	# a in $a0
	# length in $a1
	# first_element will be in $s0 (a[0])
	push	$ra
	push	$s0

	lw	$s0, ($a0) # first_element = a[0], in $s0

	bgt	$a1, 1, length_greater_than_one
	move	$v0, $s0
	j	max__epilogue
length_greater_than_one:	
	
	# &a[0] into $a0	
	add	$a0, $a0, 4
	# length - 1 into $a1
	sub	$a1, $a1, 1
	jal	max # result will be in $v0 (max_so_far in $v0)

	bgt	$v0, $s0, max__epilogue # if max_so_far > first_element return max_so_far

	move	$v0, $s0 # return first_element

max__epilogue:
	pop	$s0
	pop	$ra

	jr	$ra
