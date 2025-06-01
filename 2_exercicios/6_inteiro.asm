# Q6) Faça um programa que leia um número inteiro entre 0 e 999 e imprima esse número
# com 3 algarismos. Ex.: 23 gera uma saída 023. 8 gera uma saída 008.

.text
main:  addi $2, $0, 5
	syscall
	
      	addi $8, $0, 100
 	addi $9, $0, 10	#valores para divisão seguinte
	
	div $2, $8
	mflo $4
	
	add $2, $0, 1
	syscall
	
	mfhi $4
	
	div $4, $9
	mflo $4
	
	add $2, $0, 1
	syscall
	
	
	mfhi $4
	add $2, $0, 1
	syscall