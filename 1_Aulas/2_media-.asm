.text	#Notas
main:	addi $8, $0, 55
	addi $9, $0, 70
	
	#pesos
	addi $10, $0, 2
	addi $11 $0, 3
	
	#Operação
	mul $12, $8, $10
	mul $13, $9, $11
	
	#soma
	add $14, $12, $13
	
	# valor 5
	addi $15, $0, 5
	
	#divisão
	div $14, $15
	
	mflo $16