# Q2) Faça um programa que solicite ao usuário um número para ser a referência e outro
# para ser a quantidade de valores a ser impresso no caso do programa da Q1. Para a
# mesma resposta, por exemplo, o usuário forneceria a referência 3 e a quantidade 10.
.text
main:	
	addi $2, $0, 5
	syscall
	add $12, $0, $2

	addi $2, $0, 5 # qtd
	syscall

	add $5,$0, $2
	add $6, $0, $0 # i=0
	add $7, $0, $0 # mult_index=0
for:	beq $5,$6, sai # i==qtd sai 	
	add $8, $0, $12  # referencia de multiplo
	div $7, $8 # mult_index % 3
	mfhi $9
	beq $9, $0 mult3 # resto == 0 é mult3
	
	addi $7, $7, 1 # senao mult_index++
	j for
mult3:
	add $4, $0, $7 # $4=multiplo
	addi $2, $0, 1 # imprimi
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	addi $6, $6, 1 # i++
	addi $7, $7, 1 # senao mult_index++
	j for	
sai:
	addi $2, $0, 10
	syscall
	