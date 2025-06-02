.text

main:	addi $2, $0, 5
	syscall
	add $4, $0, $2
	jal fat

return: add $4, $0, $2
	addi $2, $0, 1
	syscall
	add $2, $0, 10
fim:	syscall 
	

# Rotina para calcular o fatorial
# Entrada: $4,
# Saida: $2,
# usa ( sem preservar ): $8
# obs.: não checa maior que um na entrada

fat:	add $2, $4, $0 # $2 = numero; fat
	addi $8, $4, -1 # $8 = numero - 1, i
		 
mtl:	mul $2, $2, $8 # $2 = $2,$8; fat=fat*i
	addi $8, $8, -1 # $8 = $8 -1; i--
	bne $8, $0, mtl # se ($8 != 0) mtl
	jr $31
