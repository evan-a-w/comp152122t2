########################################################################
# COMP1521 22T2 -- Assignment 1 -- Connect Four!
#
#
# !!! IMPORTANT !!!
# Before starting work on the assignment, make sure you set your tab-width to 8!
# It is also suggested to indent with tabs only.
# Instructions to configure your text editor can be found here:
#   https://cgi.cse.unsw.edu.au/~cs1521/22T2/resources/mips-editors.html
# !!! IMPORTANT !!!
#
#
# This program was written by YOUR-NAME-HERE (z5555555)
# on INSERT-DATE-HERE
#
# Version 1.0 (05-06-2022): Team COMP1521 <cs1521@cse.unsw.edu.au>
#
########################################################################

#![tabsize(8)]

# Constant definitions.
# DO NOT CHANGE THESE DEFINITIONS

# MIPS doesn't have true/false by default
true  = 1
false = 0

# How many pieces we're trying to connect
CONNECT = 4

# The minimum and maximum board dimensions
MIN_BOARD_DIMENSION = 4
MAX_BOARD_WIDTH     = 9
MAX_BOARD_HEIGHT    = 16

# The three cell types
CELL_EMPTY  = '.'
CELL_RED    = 'R'
CELL_YELLOW = 'Y'

# The winner conditions
WINNER_NONE   = 0
WINNER_RED    = 1
WINNER_YELLOW = 2

# Whose turn is it?
TURN_RED    = 0
TURN_YELLOW = 1

########################################################################
# .DATA
# YOU DO NOT NEED TO CHANGE THE DATA SECTION
	.data

# char board[MAX_BOARD_HEIGHT][MAX_BOARD_WIDTH];
board:		.space  MAX_BOARD_HEIGHT * MAX_BOARD_WIDTH

# int board_width;
board_width:	.word 0

# int board_height;
board_height:	.word 0


enter_board_width_str:	.asciiz "Enter board width: "
enter_board_height_str: .asciiz "Enter board height: "
game_over_draw_str:	.asciiz "The game is a draw!\n"
game_over_red_str:	.asciiz "Game over, Red wins!\n"
game_over_yellow_str:	.asciiz "Game over, Yellow wins!\n"
board_too_small_str_1:	.asciiz "Board dimension too small (min "
board_too_small_str_2:	.asciiz ")\n"
board_too_large_str_1:	.asciiz "Board dimension too large (max "
board_too_large_str_2:	.asciiz ")\n"
red_str:		.asciiz "[RED] "
yellow_str:		.asciiz "[YELLOW] "
choose_column_str:	.asciiz "Choose a column: "
invalid_column_str:	.asciiz "Invalid column\n"
no_space_column_str:	.asciiz "No space in that column!\n"


############################################################
####                                                    ####
####   Your journey begins here, intrepid adventurer!   ####
####                                                    ####
############################################################


########################################################################
#
# Implement the following 7 functions,
# and check these boxes as you finish implementing each function
#
#  - [ ] main
#  - [ ] assert_board_dimension
#  - [ ] initialise_board
#  - [ ] play_game
#  - [ ] play_turn
#  - [ ] check_winner
#  - [ ] check_line
#  - [X] is_board_full	(provided for you)
#  - [X] print_board	(provided for you)
#
########################################################################


########################################################################
# .TEXT <main>
	.text
main:
	# Args:     void
	# Returns:
	#   - $v0: int
	#
	# Frame:    [$ra, ...]
	# Uses:     [...]
	# Clobbers: [...]
	#
	# Locals:
	#   - [...]
	#
	# Structure:
	#   main
	#   -> [prologue]
	#   -> body
	#   -> [epilogue]

main__prologue:
	begin			# begin a new stack frame
	push	$ra		# | $ra

main__body:
	# TODO ... complete this function

main__epilogue:
	pop	$ra		# | $ra
	end			# ends the current stack frame

	li	$v0, 0
	jr	$ra		# return 0;


########################################################################
# .TEXT <assert_board_dimension>
	.text
assert_board_dimension:
	# Args:
	#   - $a0: int dimension
	#   - $a1: int min
	#   - $a2: int max
	# Returns:  void
	#
	# Frame:    [...]
	# Uses:     [...]
	# Clobbers: [...]
	#
	# Locals:
	#   - [...]
	#
	# Structure:
	#   assert_board_dimension
	#   -> [prologue]
	#   -> body
	#   -> [epilogue]

assert_board_dimension__prologue:
assert_board_dimension__body:

	# TODO ... complete this function

assert_board_dimension__epilogue:
	jr	$ra		# return;


########################################################################
# .TEXT <initialise_board>
	.text
initialise_board:
	# Args:     void
	# Returns:  void
	#
	# Frame:    [...]
	# Uses:     [...]
	# Clobbers: [...]
	#
	# Locals:
	#   - [...]
	#
	# Structure:
	#   initialise_board
	#   -> [prologue]
	#   -> body
	#   -> [epilogue]

initialise_board__prologue:
initialise_board__body:

	# TODO ... complete this function

initialise_board__epilogue:
	jr	$ra		# return;


########################################################################
# .TEXT <play_game>
	.text
play_game:
	# Args:     void
	# Returns:  void
	#
	# Frame:    [...]
	# Uses:     [...]
	# Clobbers: [...]
	#
	# Locals:
	#   - [...]
	#
	# Structure:
	#   play_game
	#   -> [prologue]
	#   -> body
	#   -> [epilogue]

play_game__prologue:
play_game__body:

	# TODO ... complete this function

play_game__epilogue:
	jr	$ra		# return;


########################################################################
# .TEXT <play_turn>
	.text
play_turn:
	# Args:
	#   - $a0: int whose_turn
	# Returns:  void
	#
	# Frame:    [...]
	# Uses:     [...]
	# Clobbers: [...]
	#
	# Locals:
	#   - [...]
	#
	# Structure:
	#   play_turn
	#   -> [prologue]
	#   -> body
	#   -> [epilogue]

play_turn__prologue:
play_turn__body:

	# TODO ... complete this function

play_turn__epilogue:
	jr	$ra		# return;


########################################################################
# .TEXT <check_winner>
	.text
check_winner:
	# Args:	    void
	# Returns:
	#   - $v0: int
	#
	# Frame:    [...]
	# Uses:     [...]
	# Clobbers: [...]
	#
	# Locals:
	#   - [...]
	#
	# Structure:
	#   check_winner
	#   -> [prologue]
	#   -> body
	#   -> [epilogue]

check_winner__prologue:
check_winner__body:

	# TODO ... complete this function

check_winner__epilogue:
	jr	$ra		# return;


########################################################################
# .TEXT <check_line>
	.text
check_line:
	# Args:
	#   - $a0: int start_row
	#   - $a1: int start_col
	#   - $a2: int offset_row
	#   - $a3: int offset_col
	# Returns:
	#   - $v0: int
	#
	# Frame:    [...]
	# Uses:     [...]
	# Clobbers: [...]
	#
	# Locals:
	#   - [...]
	#
	# Structure:
	#   check_line
	#   -> [prologue]
	#   -> body
	#   -> [epilogue]

check_line__prologue:
check_line__body:

	# TODO ... complete this function

check_line__epilogue:
	jr	$ra		# return;


########################################################################
# .TEXT <is_board_full>
# YOU DO NOT NEED TO CHANGE THE IS_BOARD_FULL FUNCTION
	.text
is_board_full:
	# Args:     void
	# Returns:
	#   - $v0: bool
	#
	# Frame:    []
	# Uses:     [$v0, $t0, $t1, $t2, $t3]
	# Clobbers: [$v0, $t0, $t1, $t2, $t3]
	#
	# Locals:
	#   - $t0: int row
	#   - $t1: int col
	#
	# Structure:
	#   is_board_full
	#   -> [prologue]
	#   -> body
	#   -> loop_row_init
	#   -> loop_row_cond
	#   -> loop_row_body
	#     -> loop_col_init
	#     -> loop_col_cond
	#     -> loop_col_body
	#     -> loop_col_step
	#     -> loop_col_end
	#   -> loop_row_step
	#   -> loop_row_end
	#   -> [epilogue]

is_board_full__prologue:
is_board_full__body:
	li	$v0, true

is_board_full__loop_row_init:
	li	$t0, 0						# int row = 0;

is_board_full__loop_row_cond:
	lw	$t2, board_height
	bge	$t0, $t2, is_board_full__epilogue		# if (row >= board_height) goto is_board_full__loop_row_end;

is_board_full__loop_row_body:
is_board_full__loop_col_init:
	li	$t1, 0						# int col = 0;

is_board_full__loop_col_cond:
	lw	$t2, board_width
	bge	$t1, $t2, is_board_full__loop_col_end		# if (col >= board_width) goto is_board_full__loop_col_end;

is_board_full__loop_col_body:
	mul	$t2, $t0, MAX_BOARD_WIDTH			# row * MAX_BOARD_WIDTH
	add	$t2, $t2, $t1					# row * MAX_BOARD_WIDTH + col
	lb	$t3, board($t2)					# board[row][col];
	bne	$t3, CELL_EMPTY, is_board_full__loop_col_step	# if (cell != CELL_EMPTY) goto is_board_full__loop_col_step;

	li	$v0, false
	b	is_board_full__epilogue				# return false;

is_board_full__loop_col_step:
	addi	$t1, $t1, 1					# col++;
	b	is_board_full__loop_col_cond			# goto is_board_full__loop_col_cond;

is_board_full__loop_col_end:
is_board_full__loop_row_step:
	addi	$t0, $t0, 1					# row++;
	b	is_board_full__loop_row_cond			# goto is_board_full__loop_row_cond;

is_board_full__loop_row_end:
is_board_full__epilogue:
	jr	$ra						# return;


########################################################################
# .TEXT <print_board>
# YOU DO NOT NEED TO CHANGE THE PRINT_BOARD FUNCTION
	.text
print_board:
	# Args:     void
	# Returns:  void
	#
	# Frame:    []
	# Uses:     [$v0, $a0, $t0, $t1, $t2]
	# Clobbers: [$v0, $a0, $t0, $t1, $t2]
	#
	# Locals:
	#   - `int col` in $t0
	#   - `int row` in $t0
	#   - `int col` in $t1
	#
	# Structure:
	#   print_board
	#   -> [prologue]
	#   -> body
	#   -> for_header_init
	#   -> for_header_cond
	#   -> for_header_body
	#   -> for_header_step
	#   -> for_header_post
	#   -> for_row_init
	#   -> for_row_cond
	#   -> for_row_body
	#     -> for_col_init
	#     -> for_col_cond
	#     -> for_col_body
	#     -> for_col_step
	#     -> for_col_post
	#   -> for_row_step
	#   -> for_row_post
	#   -> [epilogue]

print_board__prologue:
print_board__body:
	li	$v0, 11			# syscall 11: print_int
	la	$a0, '\n'
	syscall				# printf("\n");

print_board__for_header_init:
	li	$t0, 0			# int col = 0;

print_board__for_header_cond:
	lw	$t1, board_width
	blt	$t0, $t1, print_board__for_header_body	# col < board_width;
	b	print_board__for_header_post

print_board__for_header_body:
	li	$v0, 1			# syscall 1: print_int
	addiu	$a0, $t0, 1		#              col + 1
	syscall				# printf("%d", col + 1);

	li	$v0, 11			# syscall 11: print_character
	li	$a0, ' '
	syscall				# printf(" ");

print_board__for_header_step:
	addiu	$t0, 1			# col++
	b	print_board__for_header_cond

print_board__for_header_post:
	li	$v0, 11
	la	$a0, '\n'
	syscall				# printf("\n");

print_board__for_row_init:
	li	$t0, 0			# int row = 0;

print_board__for_row_cond:
	lw	$t1, board_height
	blt	$t0, $t1, print_board__for_row_body	# row < board_height
	b	print_board__for_row_post

print_board__for_row_body:
print_board__for_col_init:
	li	$t1, 0			# int col = 0;

print_board__for_col_cond:
	lw	$t2, board_width
	blt	$t1, $t2, print_board__for_col_body	# col < board_width
	b	print_board__for_col_post

print_board__for_col_body:
	mul	$t2, $t0, MAX_BOARD_WIDTH
	add	$t2, $t1
	lb	$a0, board($t2)		# board[row][col]

	li	$v0, 11			# syscall 11: print_character
	syscall				# printf("%c", board[row][col]);
	
	li	$v0, 11			# syscall 11: print_character
	li	$a0, ' '
	syscall				# printf(" ");

print_board__for_col_step:
	addiu	$t1, 1			# col++;
	b	print_board__for_col_cond

print_board__for_col_post:
	li	$v0, 11			# syscall 11: print_character
	li	$a0, '\n'
	syscall				# printf("\n");

print_board__for_row_step:
	addiu	$t0, 1
	b	print_board__for_row_cond

print_board__for_row_post:
print_board__epilogue:
	jr	$ra			# return;

