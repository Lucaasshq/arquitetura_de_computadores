# Q6) Fa�a um programa que leia um n�mero inteiro entre 0 e 999 e imprima esse n�mero
# com 3 algarismos. Ex.: 23 gera uma sa�da 023. 8 gera uma sa�da 008.

.text
main:  addi $2, $0, 5
	syscall
	
      	addi $8, $0, 100
 	addi $9, $0, 10	#valores para divis�o seguinte
	
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