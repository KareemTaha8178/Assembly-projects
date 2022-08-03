.data
Float_Constants:.float 0.0
	        .float 32.0
                .float 1.8
                .float 195.6
.text
j main

main:
la $s0, Float_Constants
lwc1 $f9, 0($s0)
lwc1 $f10, 4($s0)
lwc1 $f11, 8($s0)
lwc1 $f12, 12($s0)

sub.s $f1, $f12, $f10
div.s $f1, $f1, $f11

j EndProgram
EndProgram: