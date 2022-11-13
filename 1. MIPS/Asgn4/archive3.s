# Assignment - 4
# Problem - 1
# Semester - 5 (autumn 2022-2023)
# Group No. - 56
# Names of group numbers - Utsav Mehta (20CS10069), Vibhu Yadav (20CS10072)

# This program takes input a array of 10 integers and sorts them in ascending order using a
# recursive sorting algorithm. Then, it takes input a number and searches for it in the sorted
# array using a recursive search algorithm. If the number is found, it prints the index of the
# number in the array (0-based indexing). If the number is not found, it prints -1.

.globl main

.data

prompt_arr:
.asciiz "Enter an array of 10 numbers: "                        # Asks user to input an array of 10 numbers

prompt_n:
.asciiz "Enter the number to be searched: "                     # Asks user to input a number to be searched

found:
.asciiz " is FOUND in the array at index "                      # Prints the output if number is found

not_found:
.asciiz " is NOT FOUND in the array.\n"                         # Prints the output if number is not found

sorted_array:
.asciiz "Sorted Array: "                                        # Prints the sorted array

comma:
.asciiz ", "                                                    # Prints a comma for formatting the output

newline:
.asciiz "\n"                                                    # Prints a newline for formating the output

array:                                                          # Space for 40 bytes = 10 numbers
.align 2
.space 40

len:                                                            # Size of array
.word 10

n:                                                              # Number to tbe searched
.word 0

.text

# Main Function


main:

# Ask user to input 10 integers to populate the array
input1:

    li      $v0,                4                               # Prompt
    la      $a0,                prompt_arr
    syscall 

    li      $v0,                4
    la      $a0,                newline
    syscall 

    la      $s0,                array                           # Load address of array
    lw      $s1,                len                             # Load length of array
    li      $s2,                0                               # S2 = 0, to iterate over the array

# Read a array of 10 numbers
read_arr:

    beq     $s2,                $s1,            read_n          # Break when all 10 numbers have been read

    li      $v0,                5
    syscall 

    sw      $v0,                0($s0)                          # S0 points to the location in array where to store next integer
    addi    $s0,                $s0,            4               # Increment pointer of S0 to next position
    addi    $s2,                $s2,            1               # Increment the count of numbers that have been read

    j       read_arr

read_n:

    li      $v0,                4
    la      $a0,                prompt_n
    syscall 

    li      $v0,                5
    syscall 
    sw      $v0,                n

call_sort:

    la      $a0,                array
    li      $a1,                0
    li      $a2,                9

    jal     recursive_sort

    j       print_arr

print_arr:

    li      $v0,                4
    la      $a0,                sorted_array
    syscall 

    la      $s0,                array                           # Load address of array
    lw      $s1,                len                             # Load length of array
    li      $s2,                0                               # S2 = 0, to iterate over the array

# Print the sorted array

print_arr_loop:

    beq     $s2,                $s1,            call_search     # Break when all 10 numbers have been printed

    lw      $a0,                0($s0)                          # Load the next number from the array
    li      $v0,                1
    syscall 

    li      $v0,                4
    la      $a0,                comma
    syscall 

    addi    $s0,                $s0,            4               # Increment pointer of S0 to next position
    addi    $s2,                $s2,            1               # Increment the count of numbers that have been printed

    j       print_arr_loop

# Calling the recursive_search function
call_search:

    li      $v0,                4                               # Load value of 4 in v0 to indicate print_string
    la      $a0,                newline                         # Load address of newline
    syscall                                                     # print newline

    la      $a0,                array                           # a0 = &array, 1st argument
    li      $a1,                0                               # a1 = 0, 2nd argument
    li      $a2,                9                               # a2 = 9, 3rd argument
    lw      $a3,                n                               # a3 = n (key), 4th argument

    jal     recursive_search                                    # call recursive_search(A,0,9,n);
    move    $s0,                $v0                             # store result of search in s0

    beq     $s0,                -1,             not_present     # if result = -1, print message saying not found
    j       present                                             # Else, print the index of the key

# Case of number not found
not_present:

    li      $v0,                1                               # Load value of 1 in v0 to indicate print_int
    lw      $a0,                n                               # Load value of n in a0
    syscall                                                     # Print n

    li      $v0,                4                               # Load value of 4 in v0 to indicate print_string
    la      $a0,                not_found                       # Load address of not_found
    syscall                                                     # print not_found

    j       exit                                                # Exit the program

present:

    li      $v0,                1                               # Load value of 1 in v0 to indicate print_int
    lw      $a0,                n                               # Load value of n in a0
    syscall                                                     # Print n

    li      $v0,                4                               # Load value of 4 in v0 to indicate print_string
    la      $a0,                found                           # Load value of found in a0
    syscall                                                     # Print found

    li      $v0,                1                               # Load value of 1 in v0 to indicate print_int
    move    $a0,                $s0                             # Load the index of key in a0
    syscall                                                     # Print the index

    li      $v0,                4                               # Load value of 4 in v0 to indicate print_string
    la      $a0,                newline                         # Load address of newline to print
    syscall                                                     # Print newline

    j       exit                                                # Exit the program


exit:

    li      $v0,                10                              # Load value of 10 in v0 to indicate exit
    syscall                                                     # Make system call to exit execution

swap:
                                                                # swap(&a,&b)
    lw      $t0,                0($a0)                          # t0 <- a
    lw      $t1,                0($a1)                          # t1 <- b

    move    $t2,                $t0                             # temp = a
    move    $t0,                $t1                             # a = b
    move    $t1,                $t2                             # b = temp

    sw      $t0,                0($a0)                          # a <- t0
    sw      $t1,                0($a1)                          # b <- t1

    jr      $ra                                                 # return to caller


recursive_sort:

    addi    $sp,                $sp,            -20
    sw      $a1,                16($sp)                         # save a1 = left => sp + 16
    sw      $a2,                12($sp)                         # save a2 = right => sp + 12
    sw      $ra,                8($sp)                          # save return address
    sw      $s1,                4($sp)
    sw      $s2,                0($sp)

    move    $s0,                $a0                             # s0 = A

    add     $t9,                $zero,          $zero

    lw      $s1,                16($sp)                         # t0 = l
    lw      $s2,                12($sp)                         # t1 = r

while_main:
    bge     $s1,                $s2,            exit_sort       # if l >= r goto exit_sort

while_inner_1:

    sll     $t3,                $s1,            2               # t4 = l * 4
    add     $t3,                $t3,            $s0             # t4 = &A[l]
    lw      $t3,                0($t3)                          # t4 = A[l]

    lw      $t4,                16($sp)                         # t4 = left
    sll     $t5,                $t4,            2               # t5 = p * 4
    add     $t5,                $t5,            $s0             # t5 = &A[p]
    lw      $t5,                0($t5)                          # t5 = A[p]

    bgt     $t3,                $t5,            while_inner_2   # if A[l] > A[p] goto while_inner_2
    lw      $t4,                12($sp)
    bge     $s1,                $t4,            while_inner_2   # if l >= right goto while_inner_2

    addi    $s1,                $s1,            1               # l++

    j       while_inner_1

while_inner_2:
    sll     $t4,                $s2,            2               # t5 = r * 4
    add     $t4,                $t4,            $s0             # t5 = &A[r]
    lw      $t4,                0($t4)                          # t5 = A[r]

    lw      $t2,                16($sp)
    sll     $t5,                $t2,            2               # t6 = p * 4
    add     $t5,                $t5,            $s0             # t6 = &A[p]
    lw      $t5,                0($t5)                          # t6 = A[p]

    blt     $t4,                $t5,            while_body      # if A[r] < A[p] goto while_body
    lw      $t4,                16($sp)
    ble     $s2,                $t4,            while_body      # if r <= left goto while_body

    addi    $s2,                $s2,            -1              # r--

    j       while_inner_2

while_body:

    blt     $s1,                $s2,            while_continue  # if l < r goto while_continue

    lw      $t4,                16($sp)
    sll     $t5,                $t4,            2               # t5 = p * 4
    add     $t5,                $t5,            $s0             # t5 = &A[p]

    sll     $t4,                $s2,            2               # t4 = r * 4
    add     $t4,                $t4,            $s0             # t4 = &A[r]

    move    $a0,                $t5                             # a0 = &A[p]
    move    $a1,                $t4                             # a1 = &A[r]
    jal     swap                                                # swap(&A[p], &A[r])

    move    $a0,                $s0                             # a0 = A
    lw      $a1,                16($sp)                         # a1 = left
    addi    $a2,                $s2,            -1              # a2 = r - 1
    jal     recursive_sort                                      # recursive_sort(A, left, r - 1)

    move    $a0,                $s0                             # a0 = A
    addi    $a1,                $s2,            1               # a1 = r + 1
    lw      $a2,                12($sp)                         # a2 = right
    jal     recursive_sort                                      # recursive_sort(A, r + 1, right)

    j       exit_sort

while_continue:

    sll     $t3,                $s1,            2               # t3 = l * 4
    add     $t3,                $t3,            $s0             # t3 = &A[l]

    sll     $t4,                $s2,            2               # t4 = r * 4
    add     $t4,                $t4,            $s0             # t4 = &A[r]

    move    $a0,                $t3                             # a0 = &A[l]
    move    $a1,                $t4                             # a1 = &A[r]

    jal     swap                                                # swap(&A[l], &A[r])

    j       while_main

exit_sort:

    lw      $ra,                8($sp)                          # restore return address
    lw      $s1,                4($sp)                          # restore s1
    lw      $s2,                0($sp)                          # restore s2
    addi    $sp,                $sp,            20
    jr      $ra                                                 # return to caller

# Search Function
# recursive_search(A,start,end,key);

recursive_search:

    addi    $sp,                $sp,            -20             # Allocate space for storing 5 variables => 4 params, $ra and mid1,mid2

    sw      $ra,                0($sp)                          # Store return address
    sw      $a0,                4($sp)                          # Store reference to array
    sw      $a1,                8($sp)                          # Store start index
    sw      $a2,                12($sp)                         # Store end index
    sw      $a3,                16($sp)                         # Store key to be searched

# t0 = start, t1 = end, t2 = key
# t3 = mid1, t4 = mid2, t5 = (end-start) / 3
# t6 = A[mid1], t7 = A[mid2]

    move    $t0,                $a1                             # t0 = start
    move    $t1,                $a2                             # t1 = end
    move    $t2,                $a3                             # t2 = key

search_while:

    bgt     $t0,                $t1,            return_false    # if start > end, return -1

    sub     $t5,                $t1,            $t0             # t5 = (end-start)
    addi    $t9,                $zero,          3               # t9 = 3
    div     $t5,                $t9                             # t5 = (end-start) / 3

    mflo    $t5                                                 # t5 = (end-start) / 3

    add     $t3,                $t0,            $t5             # t3 = mid1 = start + (end-start) / 3
    sub     $t4,                $t1,            $t5             # t4 = mid2 = end - (end-start) / 3

    sll     $t6,                $t3,            2               # t6 = 4 * mid1
    add     $t6,                $t6,            $a0             # t6 = &A[mid1]
    lw      $t6,                0($t6)                          # t6 = A[mid1]

    sll     $t7,                $t4,            2               # t7 = 4 * mid2
    add     $t7,                $t7,            $a0             # t7 = &A[mid2]
    lw      $t7,                0($t7)                          # t7 = A[mid2]

# Case of key == A[mid1]
match1:

    bne     $t2,                $t6,            match2          # if key != A[mid1], goto match2

    move    $v0,                $t3                             # return mid1

    j       return                                              # return to caller

# Case of key == A[mid2]
match2:

    bne     $t2,                $t7,            less_mid1       # if key != A[mid2], goto less_mid1

    move    $v0,                $t4                             # return mid2

    j       return                                              # return to caller

# Case of key < A[mid1]
less_mid1:

    bge     $t2,                $t6,            greater_mid2    # break if key >= A[mid1]
                                                                # If key < A[mid1], continue
    move    $a1,                $t0                             # a1 = start
    move    $a2,                $t3                             # a2 = mid1
    addi    $a2,                $a2,            -1              # a2 = mid1 - 1
    move    $a3,                $t2                             # a3 = key

    jal     recursive_search                                    # recursive_search(A,start,mid-1,key);

    j       return                                              # return to caller

# Case of key > A[mid2]
greater_mid2:

    ble     $t2,                $t7,            else            # break if key <= A[mid2]
                                                                # If key > A[mid2], continue

    move    $a1,                $t4                             # a1 = mid2
    addi    $a1,                $a1,            1               # a1 = mid2 + 1
    move    $a2,                $t1                             # a2 = end
    move    $a3,                $t2                             # a3 = key

    jal     recursive_search                                    # recursive_search(A,mid2+1,end,key);

    j       return                                              # return to caller

# When all "else" fails :)
else:

    move    $a1,                $t3                             # a1 = mid1
    addi    $a1,                $a1,            1               # a1 = mid1 + 1
    move    $a2,                $t4                             # a2 = mid2
    addi    $a2,                $a2,            -1              # a2 = mid2 - 1
    move    $a3,                $t2                             # a3 = key

    jal     recursive_search                                    # recursive_search(A,mid1+1,mid2-1,key);

    j       return                                              # return to caller

# When not found, return -1
return_false:

    li      $v0,                -1                              # return -1
    j       return                                              # return to caller

# Returning back to caller
return:

    lw      $ra,                0($sp)                          # restore return address
    addi    $sp,                $sp,            20              # restore stack pointer
    jr      $ra                                                 # return to caller




