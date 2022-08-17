.globl main

.data

one:
.asciiz "1"

two:
.asciiz "2"

three:
.asciiz "3"

.text

main:

    li      $v0,    4
    la      $a0,    one
    syscall 

    jal     print

    li      $v0,    4
    la      $a0,    three
    syscall

print:

    li      $v0,    4
    la      $a0,    two
    syscall 
    
    move  

