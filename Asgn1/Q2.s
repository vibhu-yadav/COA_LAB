.globl main

# Various useful strings useful for interacting with the user.
.data

prompt1: .asciiz "Enter the first positive integer: "
prompt2: .asciiz "Enter the second positive integer: "
out1:	.asciiz "The GCD of the two integers is : "
winput: .asciiz "Error!! Enter a positive integer. \n"
nl: .asciiz "\n"

.text

input1:
# Prompt user to enter a positive integer (A)
	li      $v0,        4
	la      $a0,        prompt1
	syscall 

# Save the input into a register
# S0 <= A (input)
	li      $v0,        5
	syscall 
	move    $s0,        $v0

	ble    	$s0,      	0, 		invalid1
	b 		input2


	# Case when A is entered as <= 0
	invalid1:

		# Alert for error and prompt user to enter again
		li      $v0,        4
		la      $a0,        winput
		syscall 

		# Prompt user to enter a positive integer (A)
		b       input1


input2:
# Prompt user to enter a positive integer (B)
	li      $v0,        4
	la      $a0,        prompt2
	syscall 

# Save the input into a register
# S1 <= B
	li      $v0,        5
	syscall 
	move    $s1,        $v0

	ble   	$s1,      	$zero, 		invalid2
	b 		main

	# Case when B is entered as <= 0
	invalid2:

		# Alert for error and prompt user to enter again
		li      $v0,        4
		la      $a0,        winput
		syscall 
		
		# Prompt user to enter a positive integer (B)
		b       input2


main:

# Prepare output string
	li 		$v0,        4
	la 		$a0,        out1
	syscall

	# If-Else based on whether (A == 0)
    beq     $s0,        0,          A0
    b       Anot0

A0:
	# If A == 0, gcd(A,B) = B
    la      $a0,        ($s1)
    b       printans


Anot0:
	# If A != 0, use the gcd algorithm
	
	while:

		# If B == 0, stop the loop
		beq     $s1,        0,          exit

		# Branch on whether A > B
		bgt     $s0,        $s1,        AgB
		b       AlB

	# If A > B
	AgB:
		# do A = A - B
		sub     $s0,        $s0,        $s1
		b       while

	# Else if A <= B
	AlB:
		# do B = B - A
		sub     $s1,        $s1,        $s0
		b       while

	exit:
		# Exit the gcd calculation
		# Final value of A will be the GCD
		la      $a0,        ($s0)
		b       printans


printans:
	# Print the GCD
	li      $v0,        1
	syscall 
