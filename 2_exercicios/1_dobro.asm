.text
main:	addi $2, $0, 5
	syscall #ler numero
	
	add $8, $0, $2 #Copia o numero
	
	addi $9, $0, 2 #valor 2
dobro:	mul $10, $8, $9 # 2 x input
	
	add $4, $0, $10
	
	addi $2, $0, 1
	syscall