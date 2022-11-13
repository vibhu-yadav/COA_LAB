.globl main

.data

prompt_arr:
.asciiz "Enter a array of 10 numbers: \n"

prompt_k:
.asciiz "Enter the value of k: "

comma:
.asciiz ", "                                        # Comma

nl:                                                 # Newline
.asciiz "\n"

inv_k:
.asciiz "Invalid value!! k must be between 1 and 10\n"

out_arr:
.asciiz "The Sorted array is: "

out_k1:
.asciiz "The largest number is: "

out_k2:
.asciiz "The 2nd largest number is: "

out_k3:
.asciiz "The 3rd largest number is: "

out_k_gen1:
.asciiz "The "

out_k_gen2:
.asciiz "th largest number is: "

array:                                                # Space for 40 bytes = 10 numbers
.align 2
.space 40

len:                                                # Size of array
.word 10

.text

main:

# Ask user to input 10 integers to populate the array
input1:

    li      $v0,            4
    la      $a0,            prompt_arr
    syscall 

    la      $s0,            array                   # Load address of array
    lw      $s1,            len                     # Load length of array
    li      $s2,            0                       # S2 = 0, to iterate over the array

# Read a array of 10 numbers
read_arr:

    beq     $s2,            $s1,        sort_array  # Break when all 10 numbers have been read

    li      $v0,            5
    syscall 

    sw      $v0,            0($s0)                  # S0 points to the location in array where to store next integer
    addi    $s0,            $s0,        4           # Increment pointer of S0 to next position
    addi    $s2,            $s2,        1           # Increment the count of numbers that have been read

    j       read_arr

# We sort the array in ascending order
sort_array:

    li      $t1,            0                       # t1 <= (i) = 0, initialise i for iterating the outer loop

    la      $s0,            array                   # Load address of array
    lw      $s1,            len                     # Load length of array

# The outer loop of sort_array
forI:

    beq     $t1,            $s1,        read_k      # Break when i == len
    add     $t1,            $t1,        1           # i = i + 1 , increment i

    li      $t2,            0                       # t2 <= (j) = 0, initialise j for iterating the inner loop
    move    $s5,            $s0                     # Store another access to array, we'll use this to iterate
    move    $s6,            $s0                     # Store another access to array, we'll use this to iterate
    add     $s6,            $s6,        4           # S6 stays one step ahead of S5, this is done to facilitate arr[j] v/s arr[j+1] comparisons.

# The inner loop of sort_array
forJ:

    sub     $t3,            $s1,        $t1         # $t3 = len - i
    beq     $t2,            $t3,        forI        # Break when j == len - i

    lw      $t4,            0($s5)                  # t4 = arr[j]
    lw      $t5,            0($s6)                  # t5 = arr[j+1]

    bge     $t4,            $t5,        swap        # If arr[j] > arr[j+1], swap
    b       next_iter                               # Else continue to next iteration

swap:

    move    $t9,            $t4                     # t9 <= temp, temp = arr[j]
    move    $t4,            $t5                     # arr[j] = arr[j+1]
    move    $t5,            $t9                     # arr[j+1] = temp

    sw      $t4,            0($s5)                  # Store updated value of arr[j]
    sw      $t5,            0($s6)                  # Store updated value of arr[j+1]

    b       next_iter                               # continue the loop

next_iter:

    add     $t2,            $t2,        1           # j = j + 1
    add     $s5,            $s5,        4           # $s5 = &array + (j+1)
    add     $s6,            $s6,        4           # $s6 = &array + (j+2)

    j       forJ


read_k:

# Read the value of k
    li      $v0,            4
    la      $a0,            prompt_k
    syscall 

# S3 <= K
    li      $v0,            5
    syscall 
    add     $s3,            $v0,        $zero       # Store value of K in S3

    bge     $v0,            $s2,        invalid_k   # Break if k is greater than the length of the array
    ble     $v0,            $zero,      invalid_k   # Break if k is negative
    b       print_arr

invalid_k:

    li      $v0,            4
    la      $a0,            inv_k                   # Notify the user that K is not in the bounds [1,10]
    syscall 

    j       read_k                                  # Prompt the user to re-enter K



print_arr:

    la      $s0,            array                   # Load address of array
    lw      $s1,            len                     # Load length of array
    li      $s2,            0                       # s2 = 0, to iterate over the array

    li      $v0,            4
    la      $a0,            out_arr                 # Display text before printing the sorted array
    syscall 

print_arr_loop:

    beq     $s2,            $s1,        print_k     # Done with printing array

    li      $v0,            1
    lw      $t0,            0($s0)                  # Load array element to print
    la      $a0,            ($t0)
    syscall                                         # Print to console

    li      $v0,            4
    la      $a0,            comma                   # Display a comma for separating integers
    syscall 

    addi    $s0,            $s0,        4           # Increment S0 to point to the next element
    addi    $s2,            $s2,        1           # Increment value of S2
    j       print_arr_loop                          # Continue the loop

# Print the kth largest element
print_k:

    li      $v0,            4
    la      $a0,            nl
    syscall                                         # Newline for previous print_arr


# Printing the messages about displaying K largest number depending on value of K
# Could this have been done in a single statement? Yes. But If we're implementing sanity checks on integer value,
# I believe we ought to pay the same respect to english grammar.
    beq     $s3,            1,          k1
    beq     $s3,            2,          k2
    beq     $s3,            3,          k3
    b       else

# Case of K = 1
k1:
    li      $v0,            4
    la      $a0,            out_k1 
    syscall 

    b       exit

# Case of K = 2
k2:
    li      $v0,            4
    la      $a0,            out_k2
    syscall 

    b       exit

# Case of K = 3
k3:
    li      $v0,            4
    la      $a0,            out_k3
    syscall 

    b       exit

# Generic Case
else:
    li      $v0,            4
    la      $a0,            out_k_gen1
    syscall 

    li      $v0,            1
    la      $a0,            ($s3)
    syscall 

    li      $v0,            4
    la      $a0,            out_k_gen2
    syscall 

    b       exit


exit:

    la      $s0,            array                   # Load address of array

    mul     $s3,            $s3,        4           # s1 = k * 4 (offset of kth number in bits)

    add     $s0,            $s0,        40          # Move S0 to point to array[10] (the end of array)
    sub     $s0,            $s0,        $s3         # Decrement S0 to point to array[10-K], where K follows 1-based indexing

    lw      $t0,            0($s0)
    la      $a0,            ($t0)
    li      $v0,            1
    syscall 

    li      $v0,            10
    syscall 
