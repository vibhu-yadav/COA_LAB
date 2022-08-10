.globl main

# Various useful strings useful for interacting with the user.
.data

prompt:	.asciiz "Enter a positive integer: "
out1:	.asciiz "The sum of the first "
out2:	.asciiz " integers is "
winput:	.asciiz "Error!! Input integer must be positive.\n"
nl:		.asciiz "\n"


.text

main:

# Prompt user to enter a positive integer
    li      $v0,    4
    la      $a0,    prompt
    syscall 

# Save the input in a register
# S0 <= N
    li      $v0,    5
    syscall 
    move    $s0,    $v0
    
# Check whether input is positive and jump to instruction blocks accordingly.
	ble     $s0,    0,      invalid
    b       valid

invalid:

	li      $v0,    4
	la      $a0,    winput
	syscall 

# If invalid input, return to main
	b       main

valid:

# S1 <= (N-1)
# sum of first N terms = (N*(N-1)) / 2
    sub     $s1,    $s0,    1
    mul     $s1,    $s1,    $s0
    srl     $s1,    $s1,    1

# Output the sum of the first N terms
    li      $v0,    4
    la      $a0,    out1
    syscall 

    li      $v0,    1
    la      $a0,    ($s0)
    syscall 

    li      $v0,    4
    la      $a0,    out2
    syscall 

    li      $v0,    1
    la      $a0,    ($s1)
    syscall 

    li      $v0,    4
    la      $a0,    nl
    syscall 


