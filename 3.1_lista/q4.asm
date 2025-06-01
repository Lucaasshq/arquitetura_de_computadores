# Q4) Faça um programa que leia do usuário um intervalo fechado e imprima os números
# pares desse intervalo (inclusive os limites).
.text
main:	
	addi $2, $0, 5
	syscall
	add $8, $0, $2 # num 1
	
	addi $2, $0, 5 # num 2
	syscall
	add $9, $0, $2
	
	add $5, $0, $8 # i=num1
	add $6, $0, $9 # lenght
	 
for:	bgt $5, $6 saiFor
	
	#pares
	addi $4, $0 , 2
	div $5, $4
	mfhi $10
	beq $10, $0, par
	
	addi $5, $5, 1
	j for	
par: 
	add $4, $0, $5
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall
	
	addi $5, $5, 1
	j for
		
saiFor: