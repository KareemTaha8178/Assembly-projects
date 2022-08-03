.data
	input:.asciiz"enter Fahrenheit degree: "
	output: .asciiz"the celsius degree: "
	diff:.float 32.0
	fiveovernine:.float 1.8 
.text
	#printing my massage
	li $v0,4
	la $a0,input
	syscall
	#taking input
	li $v0,6
	syscall
	#loading constants
	l.s $f2,diff
	l.s $f3,fiveovernine
	sub.s $f0,$f0,$f2
	div.s $f0,$f0,$f3
	#output
	li $v0,4
	la $a0,output
	syscall
	#printing float
	li $v0,2
	mov.s $f12,$f0
	syscall
	