.globl main

.data

prompt_arr:
.asciiz "Enter a array of 10 numbers: \n"

comma:
.asciiz ", "

.whitespace:
.asciiz " "

newline:
.asciiz "\n"

out_arr:
.asciiz "Sorted Array: "

array:                                                  # Space for 40 bytes = 10 numbers
.align 2
.space 40

r1:
.asciiz "Recursive_sort1\n"

r2:
.asciiz "Recursive_sort2\n"

swapping:
.asciiz "Swapping : "


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

# la      $a0,            array
# la      $a1,            array
# addi    $a1,            $a1,        4

# jal     swap

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

    move    $a2,            $a0

    li      $v0,            4
    la      $a0,            swapping
    syscall 

    li      $v0,            1
    lw      $a0,            0($a2)
    syscall 

    li      $v0,            4
    la      $a0,            comma
    syscall 

    li      $v0,            1
    lw      $a0,            0($a1)
    syscall 

    li      $v0,            4
    la      $a0,            newline
    syscall 

    move    $a0,            $a2

    lw      $t0,            0($a0)                      # t0 <- a
    lw      $t1,            0($a1)                      # t1 <- b

    move    $t2,            $t0                         # temp = a
    move    $t0,            $t1                         # a = b
    move    $t1,            $t2                         # b = temp

    sw      $t0,            0($a0)                      # a <- t0
    sw      $t1,            0($a1)                      # b <- t1

    jr      $ra                                         # return to caller

recursive_sort:

    addi    $sp,            $sp,        -24
    sw      $ra,            20($sp)                     # save return address
    sw      $a1,            16($sp)                     # save a1 = left => sp + 16
    sw      $a2,            12($sp)                     # save a2 = right => sp + 12
    sw      $a1,            8($sp)                      # l = left => sp + 8
    sw      $a2,            4($sp)                      # r = right => sp + 4
    sw      $a1,            0($sp)                      # p = left => sp + 0

    move    $s0,            $a0                         # s0 = A

    # li      $v0,            1
    # move    $a0,            $a1
    # syscall 

    # li      $v0,            4
    # la      $a0,            comma
    # syscall 

    # li      $v0,            1
    # move    $a0,            $a2
    # syscall 

    # li      $v0,            4
    # la      $a0,            newline
    # syscall 


while_main:

    li $v0, 4
    la $a0, newline
    syscall

    li $v0, 1
    lw $a0, 8($sp)
    syscall

    li $v0, 4
    la $a0, comma
    syscall

    li $v0, 1
    lw $a0, 4($sp)
    syscall

    li $v0, 4
    la $a0, newline
    syscall

#   li $v0, 4
#     la $a0, newline
#     syscall


    lw      $t8,            8($sp)                      # t8 = l
    lw      $t9,            4($sp)                      # t9 = r

    slt     $t0,            $t8,        $t9             # t0 = l < r
    beq     $t0,            $zero,      exit_sort       # if l >= r goto exit_sort


# lw      $t0,            8($sp)                      # t0 = l
    sll     $t1,            $t8,        2               # t1 = 4 * l
    add     $t1,            $t1,        $s0             # t1 = 4 * l + s0, t1 = &A[l]
    lw      $t1,            0($t1)                      # t1 = A[l]

# lw      $t0,            4($sp)                      # t0 = r
    sll     $t2,            $t9,        2               # t2 = 4 * r
    add     $t2,            $t2,        $s0             # t2 = 4 * r + s0, t2 = &A[r]

    move    $a1,            $t2                         # a1 = &A[r], for swap(&A[p], &A[r])
    lw      $t2,            0($t2)                      # t2 = A[r]

    lw      $t0,            0($sp)                      # t0 = p
    sll     $t3,            $t0,        2               # t3 = 4 * p
    add     $t3,            $t3,        $s0             # t3 = 4 * p + s0, t3 = &A[p]

    move    $a0,            $t3                         # a0 = &A[p], for swap(&A[p], &A[r])
    lw      $t3,            0($t3)                      # t3 = A[p]


while_inner_1:
    bgt     $t1,            $t3,        while_inner_2   # if A[l] > A[p] goto while_inner_2

    lw      $t8,            8($sp)                      # t8 = l
    lw      $t9,            12($sp)                     # t9 = right
    bge     $t8,            $t9,        while_inner_2   # if l >= right goto while_inner_2

    addi    $t8,            $t8,        1               # l = l + 1
    sw      $t8,            8($sp)                      # Save l

    j       while_inner_1

while_inner_2:
    blt     $t2,            $t3,        while_body      # if A[r] < A[p] goto while_inner_1

    lw      $t8,            4($sp)                      # t8 = r
    lw      $t9,            16($sp)                     # t9 = p
    ble     $t8,            $t9,        while_body      # if r <= p goto while_inner_1

    addi    $t8,            $t8,        -1              # r = r - 1
    sw      $t8,            4($sp)                      # Save r

    j       while_inner_2

while_body:

    lw      $t8,            8($sp)                      # t8 = l
    lw      $t9,            4($sp)                      # t9 = r

    slt     $t0,            $t8,        $t9             # t0 = l < r
    bne     $t0,            $zero,      while_exit      # if l < r , goto while_exit

    jal     swap                                        # swap(A[p], A[r])

    # li      $v0,            4
    # la      $a0,            swapping
    # syscall 

    # li      $v0,            4
    # la      $a0,            newline
    # syscall 

    # li      $v0,            4
    # la      $a0,            r1
    # syscall 

    move    $a0,            $s0                         # 1st arg = A
    lw      $a1,            16($sp)                     # 2nd arg = left
    lw      $a2,            4($sp)                      # 3rd arg = r

    addi    $a2,            $a2,        -1              # 3rd arg = r - 1

    jal     recursive_sort                              # recursive_sort(A, left, r-1)

    # li      $v0,            4
    # la      $a0,            r2
    # syscall 

    move    $a0,            $s0                         # 1st arg = A
    lw      $a1,            4($sp)                      # 2nd arg = r
    lw      $a2,            12($sp)                     # 3rd arg = right

    addi    $a1,            $a1,        1               # 2nd arg = r + 1

    jal     recursive_sort                              # recursive_sort(A, r+1, right)

while_exit:

    lw      $t8,            8($sp)                      # t8 = l
    lw      $t9,            4($sp)                      # t9 = r

    sll     $t1,            $t8,        2               # t1 = 4 * l
    add     $t1,            $t1,        $s0             # t1 = 4 * l + s0, t1 = &A[l]
                                                        # lw      $t1,            0($t1)                      # t1 = A[l]

    sll     $t2,            $t9,        2               # t2 = 4 * r
    add     $t2,            $t2,        $s0             # t2 = 4 * r + s0, t2 = &A[r]
                                                        # lw      $t2,            0($t2)                      # t2 = A[r]

    move    $a0,            $t1                         # a0 = &A[l]
    move    $a1,            $t2                         # a1 = &A[r]

    jal     swap                                        # swap(A[l], A[r])

    j       while_main

exit_sort:

    lw      $ra,            20($sp)                     # restore return address
    addi    $sp,            $sp,        24
    jr      $ra                                         # return to caller
