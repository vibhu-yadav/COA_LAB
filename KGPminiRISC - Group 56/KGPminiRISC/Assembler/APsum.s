main:
    xor $20, $20            
    xor $21, $21
    addi $21, 4             # $21 = 4 = 5-1 = n-1

    # if n==5, set $21 to n-1 = 4
    
    xor $8, $8              # $8 = 0 = i
    
    xor $19, $19            # $19 = 0 = answer
    lw $19, 0($20)          # $19 = a = initial term
    
    xor $13, $13
    add $13, $19

    addi $20, 4
    
    xor $14, $14
    addi $14, 10
#    lw $14, 0($20)          # $14 = d = common difference

fori:
    xor $10, $10            # $10 = 0
    add $10, $8             # $10 = i
    comp $11, $21           # $11 = -4
    add $10, $11            # $10 = i - 4
    bz $10, exit            # if i - 4 == 0, exit
	
    add $13, $14
    add $19, $13            # ans = ans + a

    addi $8, 1              # i = i+1 
    b fori

exit:
    xor $16, $16            # to indicate completion
    addi $16, 1
