	.data
flag:
	.byte
    '#', '#', '#', '#', '#', '.', '.', '#', '#', '#', '#', '#',
    '#', '#', '#', '#', '#', '.', '.', '#', '#', '#', '#', '#',
    '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.',
    '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.',
    '#', '#', '#', '#', '#', '.', '.', '#', '#', '#', '#', '#',
    '#', '#', '#', '#', '#', '.', '.', '#', '#', '#', '#', '#'

	.text
main:
	li	$t0, 0 # row = 0

row_loop:
row_loop_cond:
	beq	$t0, 6, row_loop_end # while (row < 6)

	li	$t1, 0 # col = 0
col_loop:
col_loop_cond:
	beq	$t1, 12, col_loop_end # while (col < 12)

col_loop_body:
	# flag[row][col]
	mul	$t2, $t0, 12	# r * row_size
	add	$t3, $t2, $t1   # $t3 = r * row_size + c

	# la	$t4, flag	
	# add	$t4, $t3, $t4	# $t4 = &flag[row][col]

	# lb	$a0, ($t4)
	lb	$a0, flag($t3) # alternative $a0 = flag[row][col]

	jal	function
	
	li	$v0, 11
	syscall			# printf("%c", flag[row][col])

	add	$t1, $t1, 1 # col++
	j	col_loop
col_loop_end
	
	li	$a0, '\n'
	li	$v0, 11
	syscall			# printf("%\n")

	add	$t0, $t0, 1 # row++
	j	row_loop
row_loop_end:


	li	$v0, 0
	jr	$ra

int sum(int a, int b) 

sum(0, 1)

	li	$a0, 0
	li	$a1, 1
	jal	sum

# a0 might not be 0
# a1 might not be 1
