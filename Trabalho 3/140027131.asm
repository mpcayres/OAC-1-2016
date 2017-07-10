.data
 menuP: .asciiz "\nEntre com uma string: "
 menu0: .asciiz "\n\n1. Entrar string\n2. Caixa alta\n3. Caixa baixa\n4. Tamanho\n5. Conta caracteres\n6. Conta dígitos\n7. Concatena\n8. Encerra\nInsira a opção desejada: "
 menuE: .asciiz "\nDigite um valor entre 1 e 8: "
 endS:  .ascii "\0"
 opNum: .word 0 	# opção do menu
 sMed:  .word 0 	# tamanho encontrado
 sMax:  .word 100 	# tamanho máximo da string
 minD:  .ascii "0"
 maxD:  .ascii "9"
 minUp: .ascii "A"
 maxUp: .ascii "Z"
 minLw: .ascii "a"
 maxLw: .ascii "z"
 str:   .asciiz " " 	# espaço onde a string será salva
 
.text
 leStr: li  $v0, 4 	# imprime informação para entrar com string
 	la  $a0, menuP
 	syscall
 	li  $v0, 8	# lê a string inserida
 	la  $a0, str
 	lw  $a1, sMax
 	syscall
 	loopS:	lb   $t5, 0($a0)	# pega caracter
 		addi $a0, $a0, 1	# próximo caracter
 		bnez $t5, loopS		# condição de parada - fim da palavra
 		lb   $t5, endS
 		sb   $t5, -2($a0)	# retira \n utilizado para entrada da string
 	
 menu:  li  $v0, 4 	# imprime menu
 	la  $a0, menu0
 	syscall
 	
 aval:	li  $v0, 5	# lê opção do menu
 	syscall
 	sw  $v0, opNum
 	lw  $t1, opNum
 	
 	li  $t2, 1		# roda a opção do menu desejada
        beq $t1, $t2, case1
 	li  $t2, 2
        beq $t1, $t2, case2
        li  $t2, 3
        beq $t1, $t2, case3
        li  $t2, 4
        beq $t1, $t2, case4
        li  $t2, 5
        beq $t1, $t2, case5
        li  $t2, 6
        beq $t1, $t2, case6
        li  $t2, 7
        beq $t1, $t2, case7
        li  $t2, 8
        beq $t1, $t2, case8
        
 li  $v0, 4 		# caso em que não foi digitado uma das possíveis opções
 la  $a0, menuE
 syscall
 j   aval
 
 case1: j  leStr	# ler string nova
 
 case2: la  $t6, str	# onde começa o string
 	loop2:  lb   $t5, 0($t6)	# pega caracter
 		addi $t6, $t6, 1	# próximo caracter
 		beqz $t5, fim2		# condição de parada - fim da palavra
 		lb   $t4, maxLw		# valor máximo - z
 		bgt  $t5, $t4, loop2
 		lb   $t4, minLw		# valor mínimo - a
 		blt  $t5, $t4, loop2
 		lb   $t7, minUp		# Upper Case A
 		sub  $t5, $t5, $t4	# a -> A
 		add  $t5, $t5, $t7
 		sb   $t5, -1($t6)	# salva mudança
 		bnez $t5, loop2		# condição de parada - fim da palavra
 		fim2:   li  $v0, 4 	# imprime resultado
 			la  $a0, str
 			syscall
 			j   menu	# retorna ao menu
 
 case3: la  $t6, str	# onde começa o string
 	loop3:  lb   $t5, 0($t6)	# pega caracter
 		addi $t6, $t6, 1	# próximo caracter
 		beqz $t5, fim3		# condição de parada - fim da palavra
 		lb   $t4, maxUp		# valor máximo - Z
 		bgt  $t5, $t4, loop3
 		lb   $t4, minUp		# valor mínimo - A
 		blt  $t5, $t4, loop3
 		lb   $t7, minLw		# Lower Case a
 		sub  $t5, $t5, $t4	# A -> a
 		add  $t5, $t5, $t7
 		sb   $t5, -1($t6)	# salva mudança
 		bnez $t5, loop3		# condição de parada - fim da palavra
 		fim3:   li  $v0, 4 	# imprime resultado
 			la  $a0, str
 			syscall
 			j   menu	# retorna ao menu
 
 case4: li  $t3, 0	# espaço para contagem do tamanho
 	la  $t6, str	# onde começa o string
 	loop4:  lb   $t5, 0($t6)	# pega caracter
 		addi $t6, $t6, 1	# próximo caracter
 		addi $t3, $t3, 1	# aumenta contagem
 		bnez $t5, loop4		# condição de parada - fim da palavra
 		addi $t3, $t3, -1
 		sw   $t3, sMed		# guarda o tamanho
 		li   $v0, 1		# imprime o tamanho
 		lw   $a0, sMed
 		syscall
 		j   menu		# retorna ao menu
 
 case5: li  $t3, 0	# espaço para contagem do tamanho
 	la  $t6, str	# onde começa o string
 	loop5:  lb   $t5, 0($t6)		# pega caracter
 		addi $t6, $t6, 1	# próximo caracter
 		beqz $t5, fim5		# condição de parada - fim da palavra
 		lb   $t4, minD		# valor mínimo - 0
 		blt  $t5, $t4, cond2
 		lb   $t4, maxD		# valor máximo - 9
 		bgt  $t5, $t4, cond2
 		j cont5
 		cond2:  lb   $t4, minUp		# valor mínimo - A
 			blt  $t5, $t4, cond3
 			lb   $t4, maxUp		# valor máximo - Z
 			bgt  $t5, $t4, cond3
 			j cont5
 		cond3:  lb   $t4, minLw		# valor mínimo - a
 			blt  $t5, $t4, loop5
 			lb   $t4, maxLw		# valor máximo - z
 			bgt  $t5, $t4, loop5
 		cont5:  addi $t3, $t3, 1	# aumenta contagem
 			bnez $t5, loop5		# condição de parada - fim da palavra
 			addi $t3, $t3, -1
 		fim5:   sw   $t3, sMed		# guarda o tamanho
 			li   $v0, 1		# imprime o tamanho
 			lw   $a0, sMed
 			syscall
 			j   menu		# retorna ao menu
 
 case6: li  $t3, 0	# espaço para contagem do tamanho
 	la  $t6, str	# onde começa o string
 	loop6:  lb   $t5, 0($t6)	# pega caracter
 		addi $t6, $t6, 1	# próximo caracter
 		beqz $t5, fim6		# condição de parada - fim da palavra
 		lb   $t4, minD		# valor mínimo - 0
 		blt  $t5, $t4, loop6
 		lb   $t4, maxD		# valor máximo - 9
 		bgt  $t5, $t4, loop6
 		addi $t3, $t3, 1	# aumenta contagem
 		bnez $t5, loop6		# condição de parada - fim da palavra
 		addi $t3, $t3, -1
 		fim6:   sw  $t3, sMed		# guarda o tamanho
 			li  $v0, 1		# imprime o tamanho
 			lw  $a0, sMed
 			syscall
 			j   menu		# retorna ao menu
 		
 case7: la   $t6, str	# onde começa o string
 	li   $a0, 0
 	loop7:	lb   $t5, 0($t6)	# pega caracter
 		addi $t6, $t6, 1	# próximo caracter
 		bnez $t5, loop7		# condição de parada - fim da palavra
 		bnez $a0, fim7
 		addi $t6, $t6, -1	# final da string original
 	li   $v0, 4 	# imprime informação para entrar com string
 	la   $a0, menuP
 	syscall
 	li   $v0, 8	# lê a string inserida
 	move $a0, $t6 
 	lw   $a1, sMax
 	syscall
 	j    loop7
 	fim7:   lb  $t5, endS
 		sb  $t5, -2($t6)	# retira \n utilizado para entrada da string
 		li  $v0, 4 		# imprime resultado
 		la  $a0, str
 		syscall
 		j    menu		# retorna ao menu
 
 case8: li  $v0, 10	# finaliza a execução
 	syscall
