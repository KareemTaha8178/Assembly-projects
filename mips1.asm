j main

Fact:
	addi $sp,$sp,-8
	sw $a0,4($sp)
	sw $ra,0($sp)
	slti $t0,$a0,1
	beq $t0,$zero,else
	addi $v0,$zero,1
	j EndIf
	
else:
	addi $a0,$a0,-1
	jal Fact
	addi $a0,$a0,1
	mul $v0,$a0,$v0
	j EndIf	
EndIf:
	lw $a0,4($sp)
	lw $ra,0($sp)
	addi $sp,$sp,8
jr $ra
main:
	addi $a0,$zero,5
	jal Fact
	
	
j EndProgram

EndProgram: