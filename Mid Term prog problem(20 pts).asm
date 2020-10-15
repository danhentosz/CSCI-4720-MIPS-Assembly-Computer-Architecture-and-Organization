.data
nums1: .space 12
nums2: .space 12
.text
main:
addi $s0,$zero,5
addi $s1,$zero,10
addi $s2,$zero,15

addi $s3,$zero,92
addi $s4,$zero,31
addi $s5,$zero,30

addi $t0,$zero,0
sw $s0,nums1($t0)
addi $t0,$zero,4
sw $s1,nums1($t0)
addi $t0,$zero,8
sw $s2,nums1($t0)

addi $t0,$zero,0
sw $s3,nums2($t0)
addi $t0,$zero,4
sw $s4,nums2($t0)
addi $t0,$zero,8
sw $s5,nums2($t0)

addi $t0,$zero,0
while:
beq $t0,12,exit
lw $t7,nums1($t0)
lw $t8,nums2($t0)
slt $t6,$t7,$t8
beq $t6,1,do
back:
addi $t0,$t0,4
j while
exit:
li $v0,1
move $a0,$t4
syscall

#end
li $v0,10
syscall

do:
addi $t4,$t4,1
j back