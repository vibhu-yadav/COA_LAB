    .globl main


    .data

prompt1:
    .asciiz "Enter the first positive integer: "
prompt2:
    .asciiz "Enter the second positive integer: "
out1:
	.asciiz "The GCD of the two integers is : "
nl:
	.asciiz "\n"



    .text


main:

    li $v0, 4
    la $a0, prompt1
    syscall

	li $v0, 5
	syscall
	move $s0, $v0
	# A <- S0

    li $v0, 4
    la $a0, prompt2
    syscall

    li $v0, 5
    syscall
    move $s1, $v0
	# B <- S1
	
	li $a0,5
	
	beq $s0,0,case1
	b case2
	
	
case1:
	la $a0,($s1)
#	li $a0,100
	b printans
		
case2:
	
	while:
	
		beq $s1,0,exit
		
		bgt $s0,$s1,case21
		b case22
	
		case21:
			sub $s0,$s0,$s1
			j while
	
		case22:
			sub $s1,$s1,$s0
			j while
	
	exit:
		la $a0,($s0)
		b printans
	

printans:
	li $v0,1
	syscall	
