.text
main:	addi $2, $0, 5 #Ler um inteiro e amazena no registrador $2
	syscall      
	
	add $8, $0 $2 #Copiando valor que esta no $2 para o $8
	
	addi $2, $0, 5 ##Ler um inteiro e amazena no registrador $2
	syscall
	
soma:	add $9, $8, $2 #soma os números lidos
	add $4, $0, $9 #copia $4 <- $9
	
	addi $2, $0, 1
	syscall #imprime o valor da soma
	
	addi $2, $0 10
	syscall #Termina execução do programa