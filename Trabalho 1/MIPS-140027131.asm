.data
end: .word 8192, 8196, 8200
num: .word 20700
numN: .word -9347912
msg: .asciiz "Teste do simulador de Mars em C: "

.text
lw $t1, end
lw $t2, 20($t1)

lh $t3, num
lh $t4, 18($t1)
lhu $t5, numN
lhu $t6, 18($t1)

lb $t7, numN
lb $s0, 17($t1)
lb $s1, 18($t1)
lb $s2, 19($t1)
lbu $s3, numN
lbu $s4, 17($t1)
lbu $s5, 18($t1)
lbu $s6, 19($t1)

sw $t1, num
sw $t2, 0($t1)

sh $t3, 6($t1)
sh $t2, 24($t1)

sb $t3, 1($t1)
sb $t3, 2($t1)
sb $t2, 3($t1)
sb $t2, 4($t1)