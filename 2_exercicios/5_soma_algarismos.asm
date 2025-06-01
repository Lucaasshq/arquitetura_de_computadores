#	Q5) Faça um programa que leia um número inteiro entre 0 e 999 e imprima a soma dos
#	algarismos desse número. Ex.: 358 gera uma saída de 16, pois 3+5+8 = 16
.text
main:	addi $2, $0 ,5
	syscall
	
	addi $8, $0,100
	addi $9, $0, 10
	
	div $2, $8 #pegar primeiro número
	mflo $10 #resultadp de $2 / $8
	
	mfhi $11 # 7
	div $11, $9 # 61 / 10 = 6
	mflo $12 # 6
	mfhi $13 # resto da div = 1
	
soma:	add $4, $10, $12 # 7 + 6 + 1 = 14
	add $4 $4, $13
	
	addi $2, $0, 1
	syscall # imprime 14
	
	
	
	

	