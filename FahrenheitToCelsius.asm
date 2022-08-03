.data
input: .asciiz "Enter Temperature in Fahrenheit : "
output: .asciiz "Temperature in Celsius : "
FloatConstants: .float 0.0
	        .float 32.0
                .float 1.8
.text
# Preparing Constant floating point Registers
la $t0, FloatConstants
lwc1 $f9, 0($t0)
lwc1 $f10, 4($t0)
lwc1 $f11, 8($t0)
# Printing Input Message and getting user input
li $v0, 4
la $a0, input
syscall
li $v0, 6
syscall
# Storing user input temperature in $f1
add.s $f1, $f0, $f9
li $v0, 2
# Converting temperature from fahrenheit to celsius
sub.s $f1, $f1, $f10
div.s $f1, $f1, $f11
# Printing Output Message and display program output
li $v0, 4
la $a0, output
syscall
li $v0, 2
mov.s $f12, $f1
syscall