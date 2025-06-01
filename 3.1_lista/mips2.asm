# Q1) Faça um programa que calcule e mostre os 10 primeiros números múltiplos de 3,
# considerando valores maiores que 0

.text
main:	addi $5,$0, 10
	add $6, $0, $0 # i=0
	add $7, $0, $0 # mult_index=0
for:	beq $5,$6, sai # i==10 sai 
	
	addi $8, $0, 3
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
	
