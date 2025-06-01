# Q2) Faça um programa para ler um número inteiro e imprimir o quadrado desse número.
.text
main:	addi $2, $0, 5
	syscall #ler número
	
	
	mul $9, $2, $2 #multiplica input x input = quadrado
	add $4, $0 $9 #colocar no registrador $4
	
	addi $2, $0, 1
	syscall #imprime na tela
	
	