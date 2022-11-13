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

wm:
.asciiz "While main\n"

w1:
.asciiz "While inner 1\n"

w2:
.asciiz "While inner 2\n"

wb:
.asciiz "While body\n"

wc:
.asciiz "While continue\n"


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
                                                        # move    $a2,            $a0
                                                        # li      $v0,            4
                                                        # la      $a0,            swapping
                                                        # syscall

# li      $v0,            1
# lw      $a0,            0($a2)
# syscall

# li      $v0,            4
# la      $a0,            comma
# syscall

# li      $v0,            1
# lw      $a0,            0($a1)
# syscall

# li      $v0,            4
# la      $a0,            newline
# syscall

# move    $a0,            $a2

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

    li $v0, 1
    move $a0, $a1
    syscall

    li $v0, 4
    la $a0, comma
    syscall

    li $v0, 1
    move $a0, $a2
    syscall

    li $v0, 4
    la $a0, newline
    syscall

# t0 = l, t1 = r, t2 = p
# t3 = A[l], t4 = A[r], t5 = A[p]
# t7 = comparison result

    add     $t9,            $zero,      $zero

while_main:

    li      $v0,            4
    la      $a0,            wm
    syscall 

    li      $v0,            1
    lw      $a0,            8($sp)
    syscall 

    li      $v0,            4
    la      $a0,            comma
    syscall 

    li      $v0,            1
    lw      $a0,            4($sp)
    syscall 

    li      $v0,            4
    la      $a0,            comma
    syscall 

    li      $v0,            1
    lw      $a0,            0($sp)
    syscall 

    li      $v0,            4
    la      $a0,            newline
    syscall 

    lw      $t0,            8($sp)                      # t0 = l
    lw      $t1,            4($sp)                      # t1 = r
    lw      $t2,            0($sp)                      # t2 = p

# slt     $t7,            $t0,        $t1             # t7 = l < r
# beq     $t7,            $zero,      exit_sort       # if l >= r goto exit_sort

    bge     $t0,            $t1,        exit_sort       # if l >= r goto exit_sort

    addi    $t9,            $t9,        1
    bge     $t9,            100,        exit_sort       # if t9 >= 100 goto exit_sort

while_inner_1:

# li      $v0,            4
# la      $a0,            w1
# syscall

    sll     $t3,            $t0,        2               # t4 = l * 4
    add     $t3,            $t3,        $s0             # t4 = &A[l]
    lw      $t3,            0($t3)                      # t4 = A[l]

    sll     $t5,            $t2,        2               # t5 = p * 4
    add     $t5,            $t5,        $s0             # t5 = &A[p]
    lw      $t5,            0($t5)                      # t5 = A[p]

# sgt     $t7,            $t3,        $t5             # t7 = A[l] > A[p]
# bne     $t7,            $zero,      while_inner_2   # if A[l] > A[p] goto while_inner_2

    bgt     $t3,            $t5,        while_inner_2   # if A[l] > A[p] goto while_inner_2
    bge     $t0,            $a2,        while_inner_2   # if l >= right goto while_inner_2

# slt     $t7,            $t0,        $a2             # t7 = l < right
# beq     $t7,            $zero,      while_inner_2   # if l >= right goto while_inner_2

    addi    $t0,            $t0,        1               # l++
    sw      $t0,            8($sp)                      # l = l++

    j       while_inner_1

while_inner_2:

# li      $v0,            4
# la      $a0,            w2
# syscall

    sll     $t4,            $t1,        2               # t5 = r * 4
    add     $t4,            $t4,        $s0             # t5 = &A[r]
    lw      $t4,            0($t4)                      # t5 = A[r]

    sll     $t5,            $t2,        2               # t6 = p * 4
    add     $t5,            $t5,        $s0             # t6 = &A[p]
    lw      $t5,            0($t5)                      # t6 = A[p]

# slt     $t7,            $t4,        $t5             # t7 = A[r] < A[p]
# bne     $t7,            $zero,      while_body      # if A[r] < A[p] goto while_body

# sgt     $t7,            $t1,        $a1             # t7 = r > left
# beq     $t7,            $zero,      while_body      # if r <= left goto while_body

    blt     $t4,            $t5,        while_body      # if A[r] < A[p] goto while_body
    ble     $t1,            $a1,        while_body      # if r <= left goto while_body

    addi    $t1,            $t1,        -1              # r--
    sw      $t1,            4($sp)                      # r = r--

    j       while_inner_2

while_body:

# slt     $t7,            $t0,        $t1             # t7 = l < r
# bne     $t7,            $zero,      while_exit      # if l < r goto while_exit

# li      $v0,            4
# la      $a0,            wb
# syscall

    blt     $t0,            $t1,        while_continue  # if l < r goto while_continue

    sll     $t5,            $t2,        2               # t5 = p * 4
    add     $t5,            $t5,        $s0             # t5 = &A[p]

    sll     $t4,            $t1,        2               # t4 = r * 4
    add     $t4,            $t4,        $s0             # t4 = &A[r]

    move    $a0,            $t5                         # a0 = &A[p]
    move    $a1,            $t4                         # a1 = &A[r]

    jal     swap                                        # swap(&A[p], &A[r])

    move    $a0,            $s0                         # a0 = A
    lw      $a1,            16($sp)                     # a1 = left
    lw      $a2,            4($sp)                      # a2 = r

    addi    $a2,            $a2,        -1              # a2 = r - 1

    jal     recursive_sort                              # recursive_sort(A, left, r - 1)

    move    $a0,            $s0                         # a0 = A
    lw      $a1,            4($sp)                      # a1 = r
    lw      $a2,            12($sp)                     # a2 = right

    addi    $a1,            $a1,        1               # a1 = r + 1

    jal     recursive_sort                              # recursive_sort(A, r + 1, right)

    j       exit_sort

while_continue:

    sll     $t3,            $t0,        2               # t3 = l * 4
    add     $t3,            $t3,        $s0             # t3 = &A[l]

    sll     $t4,            $t1,        2               # t4 = r * 4
    add     $t4,            $t4,        $s0             # t4 = &A[r]

    move    $a0,            $t3                         # a0 = &A[l]
    move    $a1,            $t4                         # a1 = &A[r]

    jal     swap                                        # swap(&A[l], &A[r])

    j       while_main

exit_sort:

    lw      $ra,            20($sp)                     # restore return address
    addi    $sp,            $sp,        24
    jr      $ra                                         # return to caller