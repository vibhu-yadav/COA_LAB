.globl main


.data

input:
.asciiz "Enter 2 numbers.\n"

input1:
.asciiz "a = "

input2:
.asciiz "b = "

confirm:
.asciiz "Back here\n"

output:
.asciiz "After swapping, a = "

output2:
.asciiz " ,b = "

newline:
.asciiz "\n"

.text

main:

    li      $v0,    4
    la      $a0,    input
    syscall 

    li      $v0,    4
    la      $a0,    input1
    syscall 

    li      $v0,    5
    syscall 
    move    $s0,    $v0

    li      $v0,    4
    la      $a0,    input2
    syscall 

    li      $v0,    5
    syscall 
    move    $s1,    $v0

	move $a0, $s0
	move $a1, $s1

	jal swap

	move $s0, $a0
	
	li $v0, 4
	la $a0, confirm
	syscall

	li $v0, 4
	la $a0, output
	syscall

	li $v0, 1
	move $a0, $s0
	syscall

	li $v0, 4
	la $a0, output2
	syscall

	li $v0, 1
	move $a0, $a1
	syscall

	li $v0, 4
	la $a0, newline
	syscall

	j exit

swap:
# swap(&a,&b)

    # lw $t0, 0($a0) # t0 <- a
    # lw $t1, 0($a1) # t1 <- b

	move $t0, $a0
	move $t1, $a1

    move $t2, $t0 # temp = a
    move $t0, $t1 # a = b
    move $t1, $t2 # b = temp

	move $a0, $t0
	move $a1, $t1

    jr $ra # return to caller


exit:

	li $v0, 10
	syscall