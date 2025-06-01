# Q11) Faça um programa que leia 1 inteiro entre 100 e 999 e o imprima escrito de trás para
# frente. Exemplo: 384 gera uma saída 483

.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $10, $0, 10
	
	div $8, $10
	mfhi $20 #unidade
	mflo $8
	
	div $8, $10
	mfhi $21 #dezena
	mflo $8
	
	div $8, $10
	mfhi $22
	mflo $8
	
	
	addi $2, $0, 10
	syscall