	.globl main

	.data

getK:		.asciiz		"Enter value of k: "
getarr:		.asciiz		"Please, Enter 10 integers : "
result:		.asciiz		"Kth largest element in the array is : "
newline:	.asciiz 	"\n"
spaceBar:	.asciiz		" "
arr:		
	.align 2
	.space		40
k: 			.word		0

	.text

main:
	subu	$sp, $sp, 32		# Creating stack frame of size 32 bytes
	sw  	$ra, 20($sp)		# saving the return address
	sw  	$fp, 16($sp)		# save the old frame pointer
	addi 	$fp, $sp, 28		# set up the new frame pointer

	li 		$v0, 4				# print "Enter 10 integers : " on console
	la 		$a0, getarr
	syscall

	la		$t0, arr
	move 	$t1, $t0
	li 		$s0, 0				# using register s0 as a counter to loop 10 times
	b 		forIn

forIn:
	beq		$s0, 10, getInK		# if done taking input then break
	li 		$v0, 5				# reading integer
	syscall
	sw		$v0, ($t1)			# storing the input
	addi	$s0, $s0, 1			# decrementing counter
	addi	$t1, $t1, 4
	b		forIn				# continuing the loop

getInK:
	li 		$v0, 4				# print "Enter value of k: " on console
	la 		$a0, getK
	syscall

	li		$v0, 5				# read K
	syscall
	la		$t2, k				
	sw		$v0, ($t2)			# store the value at address of K
	
	la		$a0, arr			# load the address of array to pass as the first argument
	lw 		$a1, ($t2)
	# jal 	find_k_largest		# calling the find_k_largest function

	move 	$t4, $v0			# store the answer in t4 register to further use v0

	li		$v0, 4				# print result message
	la		$a0, result
	syscall

	li 		$v0, 1				# print answer
	move 	$a0, $t4
	syscall

	li      $v0, 4          	# print two newlines
    la      $a0, newline
    syscall
    li      $v0, 4
    la      $a0, newline
    syscall

	b 		end

display:
	li		$s0, 0				#setting counter to 0
	move 	$t1, $t0
	b		forOut

forOut:
	beq		$s0,10,end

	li		$v0, 1
	lw		$a0, ($t1)
	syscall

	li 		$v0, 3
	lw		$a0, spaceBar
	syscall

	addi	$t1, $t1, 4
	addi	$s0, $s0, 1
	b		forOut

end:
	lw		$ra, 20($sp)		# restore %ra
	lw		$fp, 16($sp)		# restore %fp
	addi	$sp, $sp, 32		# pop stack	
	jr		$ra					# jump to $ra

find_k_largest:
	subu	$sp, $sp, 32		# Creating stack frame of size 32 bytes
	sw  	$ra, 20($sp)		# saving the return address
	sw  	$fp, 16($sp)		# save the old frame pointer
	addi 	$fp, $sp, 28		# set up the new frame pointer

	jal 	sort				# calling the sort function to sort in ascending order

	move 	$t1, $t0			# using t1 to point to current element of array
	li 		$s0, 0				# using s0 as a counter of number of elements travelled
	li 		$a2, 10
	subu	$a1, $a2, $a1		# as we are iterating in an ascending array, thus k largest = n - k smallest
	b 		forK				# iterating on the array to find K largest

forK:
	beq		$s0, $a1, ret		# if found k largest element then return
	addi	$t1, $t1, 4			# else keep iterating
	addi	$s0, $s0, 1
	b		forK

ret:
	lw		$v0, ($t1)			# put the return value in v0 register
	b		end					# unwind the stack

sort:
	subu	$sp, $sp, 32		# Creating stack frame of size 32 bytes
	sw  	$ra, 20($sp)		# saving the return address
	sw  	$fp, 16($sp)		# save the old frame pointer
	addi 	$fp, $sp, 28		# set up the new frame pointer

	li		$s0, 0				# counter for iterating
	b		forSort

forSort:
	beq		$s0, 10, display
	li 		$s1, 0
	move 	$t1, $t0
	b 		forSortinner

forSortinner:
	li		$s3, 9
	sub		$s2, $s3, $s0
	beq		$s1, $s2, forSortI
	lw 		$t4, ($a0)
	lw		$t5, 4($a0)
	bgt		$t4, $t5, callSwap	
	
forSortI:
	addi	$s0, $s0, 1
	b 		forSort

forSortJ:
	addi	$s1, $s1, 1
	addi 	$t1, $t1, 4
	b		forSortinner

callSwap:
	move	$a0, $t1
	jal 	swap
	b		forSortJ

swap:
	subu	$sp, $sp, 32		# Creating stack frame of size 32 bytes
	sw  	$ra, 20($sp)		# saving the return address
	sw  	$fp, 16($sp)		# save the old frame pointer
	addi 	$fp, $sp, 28		# set up the new frame pointer

	lw 		$t4, ($a0)
	lw		$t5, 4($a0)
	sw		$t5, ($a0)
	sw		$t4, 4($a0)

	b 		end