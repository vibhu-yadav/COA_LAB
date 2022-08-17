.globl main

.data

prompt1:	.asciiz "Enter first number:"
prompt2:	.asciiz "Enter second number:"
invalid_input:		.asciiz "Invalid input!!"
nl: 	.asciiz "\n"
.text

main:

input1:
# Prompt user to enter first number
    li      $v0,    4
    la      $a0,    prompt1
    syscall 

# Input first number
    li      $v0,    5
    syscall 
    move    $s0,    $v0

    srl     $t0,    $s0,            16
    bne     $t0,    $0,             validate1

validate1:
    li      $v0,    4
    la      $a0,    invalid_input
    syscall 

	li      $v0,    4
	la      $a0,    nl
	syscall

    b       input1

input2:
# Prompt user to enter second number
    li      $v0,    4
    la      $a0,    prompt2
    syscall 

# Input second number
    li      $v0,    5
    syscall 
    move    $s1,    $v0

#     srl     $t0,    $s1,            16
#     bne     $t0,    $0,             invalid_input

# validate2:
#     li      $v0,    4
#     la      $a0,    invalid_input
#     syscall 

# 	li      $v0,    4
# 	la      $a0,    nl
# 	syscall

#     b       input2