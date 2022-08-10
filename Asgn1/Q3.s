	.globl main
	
	.data # Storing all the strings used for prompts and outputs inside data
	
prompt1:
	.asciiz "Enter a positive integer greater than equals to 10: "

invalid_input:
	.asciiz "Error!! Entered number is not greater than or equal to 10"	
	
prime:
	.asciiz "Entered number is a PRIME number."
	
composite:
	.asciiz "Entered number is a COMPOSITE number."

nl:
	.asciiz "\n"	
	
divisor:
	.asciiz "Smallest prime divisor is : "
	
	
	.text 
	
main:

    # Ask user to inter a integer greater than 10
	li $v0,4
	la $a0,prompt1
	syscall
	
	# Take input from user and store in S0
	li $v0,5
	syscall
	move $s0,$v0
	# S0 <= N [Number to be tested for primality]

    # Sanity Check of N >= 10
	blt $s0,10,invalid
	b valid
	
	invalid:
		la $a0,invalid_input
		b printans
	
	valid:

        # Checking if number is even or 2 by doing a right shift followed by left shift.
        # If the resulting number is same as original number, then it is even.
        # If the resulting number is different then it is odd.
		srl $s1,$s0,1
		sll $s1,$s1,1
		
		# $s1 <= left/right shifted N
		beq $s0,$s1,even
		b odd

        even:
			
            # Incase of number being even, it has to be composite 
            # since 2 is the only even prime and N >= 10

			li $v0,4
			la $a0,divisor
			syscall
			
			li $v0,1
			la $a0,2
			syscall

			li $v0,4
			la $a0,nl
			syscall

			la $a0,composite
			b printans
		
		odd:
			
			# S2 <= iterator (i)
            # We iterate over all the odd numbers from 3 to N
			li $s2,3

            # Assume the odd number to be prime
            la $a0,prime

			while:
				
				# S3 <= S2 * S2 [i**2]
				mul $s3,$s2,$s2

				# End loop if i**2 > N
				bgt $s3,$s0,exit

				# Check if i divides N
                div $s0,$s2
                mfhi $s4
                
				# S4 <= remainder of N/i
                beq $s4,0,comp
                addi $s2,$s2,2
                b while
                
                    comp:
                    
	                    li $v0,4
						la $a0,divisor
						syscall
                    	
                    	li $v0,1
                    	la $a0,($s2)
                    	syscall

						li $v0,4
						la $a0,nl
						syscall
                    
                        la $a0,composite
                        b printans
			
			exit:
		
	printans:

		li $v0,4
		syscall
