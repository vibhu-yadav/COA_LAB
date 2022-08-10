.globl main

.data

prompt:
.asciiz "Enter a positive integer : "

invalid_input:
.asciiz "Error!! Entered number is not positive.\n"

out0:
.asciiz "Entered number is not a perfect number.\n"

out1:
.asciiz "Entered number is a perfect number.\n"

nl:
.asciiz "\n"

sum:
.asciiz "Sum of Divisors including itself is: "

.text

main:

# Prompt user for input
    li      $v0,        4
    la      $a0,        prompt
    syscall 

# Read input
    li      $v0,        5
    syscall 
    move    $s0,        $v0
                                                    # S0 <= N [number to check]

# Sanity check the number to be positive

    blt     $s0,        0,              invalid
    b       valid

invalid:

    la      $a0,        invalid_input
    b       printans

valid:

# S1 <= Sum of divisors
    li      $s1,        0

# S2 <= Iterator (i)
    li      $s2,        1

# We iterate from i = 1 to i*i <= N

while:

# Checker : S3 <= i**2
    mul     $s3,        $s2,            $s2

# Break if i**2 > N
    bgt     $s3,        $s0,            exit

# Check if i divides N
    div     $s0,        $s2
    mfhi    $s4
    mflo    $s5

# If i (and thus N/i) is a divisor, add them to sum
    beq     $s4,        0,              divisor
    add     $s2,        $s2,            1
    b       while

divisor:

# Add i to sum of divisors
    add     $s1,        $s1,            $s2

# Add (N/i) to sum of divisors
    add     $s1,        $s1,            $s5

    add     $s2,        $s2,            1
    j       while

exit:

# Print Sum to check
# li $v0,4
# la $a0,sum
# syscall

# li $v0,1
# la $a0,($s1)
# syscall

# li $v0,4
# la $a0,nl
# syscall

# Check if sum of divisors(including N) is equal to 2*N
    srl     $s1,        $s1,            1
    beq     $s1,        $s0,            perfect
    la      $a0,        out0
    b       printans


perfect:
                                                    # Update the output to be "perfect"
    la      $a0,        out1
    b       printans


printans:

# Print the answer
    li      $v0,        4
    syscall 

# Exit (QTspim needs us to explicitly exit, MARS doesnt)
    li      $v0,        10
    syscall 