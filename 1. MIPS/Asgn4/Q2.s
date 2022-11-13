.globl main

.data

prompt_arr:
.asciiz "Enter a array of 10 numbers: \n"

comma:
.asciiz ", "

newline:
.asciiz "\n"

out_arr:
.asciiz "Sorted Array: "

array:                                                  # Space for 40 bytes = 10 numbers
.align 2
.space 40

len:                                                    # Size of array
.word 10

.text

main:

# Ask user to input 10 integers to populate the array
input1:

    li      $v0,            4
    la      $a0,            prompt_arr
    syscall 

    la      $s0,            array                       # Load address of array
    lw      $s1,            len                         # Load length of array
    li      $s2,            0                           # S2 = 0, to iterate over the array

# Read a array of 10 numbers
read_arr:

    beq     $s2,            $s1,        call_sort       # Break when all 10 numbers have been read

    li      $v0,            5
    syscall 

    sw      $v0,            0($s0)                      # S0 points to the location in array where to store next integer
    addi    $s0,            $s0,        4               # Increment pointer of S0 to next position
    addi    $s2,            $s2,        1               # Increment the count of numbers that have been read

    j       read_arr

call_sort:

    la      $a0,            array
    li      $a1,            0
    li      $a2,            9

    jal     recursive_sort

    j       print_arr

print_arr:

    li      $v0,            4
    la      $a0,            out_arr
    syscall 

    la      $s0,            array                       # Load address of array
    lw      $s1,            len                         # Load length of array
    li      $s2,            0                           # S2 = 0, to iterate over the array

# Print the sorted array

print_arr_loop:

    beq     $s2,            $s1,        exit            # Break when all 10 numbers have been printed

    lw      $a0,            0($s0)                      # Load the next number from the array
    li      $v0,            1
    syscall 

    li      $v0,            4
    la      $a0,            comma
    syscall 

    addi    $s0,            $s0,        4               # Increment pointer of S0 to next position
    addi    $s2,            $s2,        1               # Increment the count of numbers that have been printed

    j       print_arr_loop

exit:

    li      $v0,            10
    syscall 


swap:
                                                        # swap(&a,&b)
    lw      $t0,            0($a0)                      # t0 <- a
    lw      $t1,            0($a1)                      # t1 <- b

    move    $t2,            $t0                         # temp = a
    move    $t0,            $t1                         # a = b
    move    $t1,            $t2                         # b = temp

    sw      $t0,            0($a0)                      # a <- t0
    sw      $t1,            0($a1)                      # b <- t1

    jr      $ra                                         # return to caller


recursive_sort:

    addi    $sp,            $sp,        -20
    sw      $a1,            16($sp)                     # save a1 = left => sp + 16
    sw      $a2,            12($sp)                     # save a2 = right => sp + 12
    sw      $ra,            8($sp)                     # save return address
    sw      $s1,           4($sp)                     
    sw      $s2,           0($sp)

    move    $s0,            $a0                         # s0 = A

    add     $t9,            $zero,      $zero

    lw      $s1,            16($sp)                      # t0 = l
    lw      $s2,            12($sp)                      # t1 = r

while_main:
    bge     $s1,            $s2,        exit_sort       # if l >= r goto exit_sort

while_inner_1:

    sll     $t3,            $s1,        2               # t4 = l * 4
    add     $t3,            $t3,        $s0             # t4 = &A[l]
    lw      $t3,            0($t3)                      # t4 = A[l]

    lw      $t4,            16($sp)                      # t4 = left
    sll     $t5,            $t4,        2               # t5 = p * 4
    add     $t5,            $t5,        $s0             # t5 = &A[p]
    lw      $t5,            0($t5)                      # t5 = A[p]

    bgt     $t3,            $t5,        while_inner_2   # if A[l] > A[p] goto while_inner_2
    lw      $t4,            12($sp)
    bge     $s1,            $t4,        while_inner_2   # if l >= right goto while_inner_2

    addi    $s1,            $s1,        1               # l++

    j       while_inner_1

while_inner_2:
    sll     $t4,            $s2,        2               # t5 = r * 4
    add     $t4,            $t4,        $s0             # t5 = &A[r]
    lw      $t4,            0($t4)                      # t5 = A[r]

    lw      $t2,            16($sp)                    
    sll     $t5,            $t2,        2               # t6 = p * 4
    add     $t5,            $t5,        $s0             # t6 = &A[p]
    lw      $t5,            0($t5)                      # t6 = A[p]

    blt     $t4,            $t5,        while_body      # if A[r] < A[p] goto while_body
    lw      $t4,            16($sp)
    ble     $s2,            $t4,        while_body      # if r <= left goto while_body

    addi    $s2,            $s2,        -1              # r--

    j       while_inner_2

while_body:

    blt     $s1,            $s2,        while_continue  # if l < r goto while_continue

    lw      $t4,            16($sp)
    sll     $t5,            $t4,        2               # t5 = p * 4
    add     $t5,            $t5,        $s0             # t5 = &A[p]

    sll     $t4,            $s2,        2               # t4 = r * 4
    add     $t4,            $t4,        $s0             # t4 = &A[r]

    move    $a0,            $t5                         # a0 = &A[p]
    move    $a1,            $t4                         # a1 = &A[r]
    jal     swap                                        # swap(&A[p], &A[r])

    move    $a0,            $s0                         # a0 = A
    lw      $a1,            16($sp)                     # a1 = left
    addi    $a2,            $s2,        -1              # a2 = r - 1
    jal     recursive_sort                              # recursive_sort(A, left, r - 1)

    move    $a0,            $s0                         # a0 = A
    addi    $a1,            $s2,        1               # a1 = r + 1
    lw      $a2,            12($sp)                     # a2 = right
    jal     recursive_sort                              # recursive_sort(A, r + 1, right)

    j       exit_sort

while_continue:

    sll     $t3,            $s1,        2               # t3 = l * 4
    add     $t3,            $t3,        $s0             # t3 = &A[l]

    sll     $t4,            $s2,        2               # t4 = r * 4
    add     $t4,            $t4,        $s0             # t4 = &A[r]

    move    $a0,            $t3                         # a0 = &A[l]
    move    $a1,            $t4                         # a1 = &A[r]

    jal     swap                                        # swap(&A[l], &A[r])

    j       while_main

exit_sort:

    lw      $ra,            8($sp)                     # restore return address
    lw      $s1,            4($sp)                     # restore s1
    lw      $s2,            0($sp)                     # restore s2
    addi    $sp,            $sp,        20
    jr      $ra                                         # return to caller
