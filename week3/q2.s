	.text
main:
	
	li	$v0, 0
	jr	$ra

    .data # 0x10000020
a:  .word   42 # 0x1000020
b:  .space  4  # 0x1000024
c:  .asciiz "abcde" # 1000028 6 bytes long 100002e
    .align  2
	#     aligns the next label to 2^n
# 100002e not divisible by 4 (not aligned to 2^2) round up to 1000030
d:  .byte   1, 2, 3, 4
e:  .word   1, 2, 3, 4
f:  .space  1


    int u;

u = 5;

li $t0, 5
sw $t0, u

lw $t1, u

lw reg, (reg2) loads from the address in reg2 into reg
lw reg, 4(reg2) loads from the address in reg2 + 4 into reg

u:  .word   0
u:  .space 4
    int v = 42;
    char w;
    char x = 'a';
    double y;
    int z[20]; 
z:	.space 80


lw reg, label loads a word (int) from label into reg
