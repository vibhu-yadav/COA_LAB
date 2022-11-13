.globl main

.data

input:
.asciiz "Input a positive number: "

newline:
.asciiz "\n"

output:
.asciiz "Factorial(N) = "

.text

main:

    li      $v0,        4
    la      $a0,        input
    syscall 

    li      $v0,        5
    syscall 
    move    $s0,        $v0

    move    $a0,        $s0
    jal     factorial
    move    $s1,        $v0

    li      $v0,        4
    la      $a0,        output
    syscall 

    li      $v0,        1
    move    $a0,        $s1
    syscall 

    li      $v0,        10
    syscall 

factorial:

    addi    $sp,        $sp,    -8
    sw      $ra,        4($sp)
    sw      $a0,        0($sp)

# a0 = n

    slti    $t0,        $a0,    2
    beq     $t0,        $zero,  recur

    addi    $v0,        $zero,  1       # v0 = 1, return 1
    addi    $sp,        $sp,    8
    jr      $ra

recur:

    addi    $a0,        $a0,    -1      # n = n - 1
    jal     factorial # Get factorial(n - 1) in $v0

    lw $a0, 0($sp)
    lw $ra, 4($sp)

    addi   $sp,        $sp,    8
    mul    $v0,        $v0,    $a0      # v0 = v0 * n
    jr     $ra
