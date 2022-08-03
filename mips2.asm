.data
arr1: .byte 'K'
arr2: .byte

.text
j main

strcpy:
	#store a0
	addi $sp,$sp,-4
	sw $s0,0($sp)
	add $s0,$zero,$zero
	jal L1
	
L1:
	add $t1,$s0,$a1
	lb $t2,0($t1)
	add $t3,$s0,$a0
	sb $t2,0($t3)
	beq $t2,$zero,L2
	addi $s0,$s0,1
	jal L1
	
L2:
	lw $s0,0($sp)
	addi $sp,$sp,4
jr $ra

main:
	la $a0,arr1
	la $a1,arr2
	jal strcpy
	
j EndProgram

EndProgram:
	