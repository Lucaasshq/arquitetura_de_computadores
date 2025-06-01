#	Q7) Faça um programa que leia um número entre 0 e 9999 e imprima cada algarismo em
#	uma linha diferente.
#	Ex.: 3219 imprime
#	9
#	1
#	2
#	3
#	Ex.: 123
#	3
#	2
#	1
#	0


.text
main:	addi $2, $0, 5
	syscall
	
	add $8, $0, $2 #copia
	
	addi $9, $0 10 # 10
	
	div $2, $9 # input / 10
	mflo $10
	
	mfhi $14
	
	div $10, $9
	mfhi $15
	mflo $11
	
	div $11, $9
	mfhi $16
	
	
	
	
	
	