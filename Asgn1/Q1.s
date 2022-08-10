    .globl main


    .data

prompt:
    .asciiz "Enter a positive integer: "
out1:
    .asciiz "The sum of the first "
out2:
	.asciiz " integers is "
nl:
	.asciiz "\n"


    .text

main:

    li $v0, 4
    la $a0, prompt
    syscall

	li $v0, 5
	syscall
	move $s0, $v0
	
	sub $s1,$s0,1
	mul $s1,$s1,$s0
	srl $s1,$s1,1

	li $v0,4
	la $a0, out1
	syscall
	
	li $v0,1
	la $a0,($s0)
	syscall
	
	li $v0,4
	la $a0,out2
	syscall
			
	li $v0,1
	la $a0,($s1)
	syscall
	
	li $v0,4
	la $a0,nl
	syscall
	
	
	