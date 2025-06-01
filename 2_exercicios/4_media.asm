#	Q4) Faça um programa para ler duas notas de um aluno do IFRN em um curso semestral.
#	Esse programa deverá apresentar a média desse aluno, após as duas provas.
.text
main:	addi $2, $0, 5 #ler numero
	syscall
	
	add $8, $0, $2   #copia para $8
	
	addi $2, $0, 5 #ler numero
	syscall 
	
	add $9, $0, $2  #copia para $9
	
	addi $10, $0, 2 #peso 1
	addi $11, $0, 3 #peso 2
	add $16, $10, $11 #soma de peso

media:	mul $12, $8, $10 # $8 x 2
	mul $13, $9, $11 # #9 x 3
	
	add $14, $12, $13
	div $14, $16
	mflo $15
	
	add $4, $0, $15
	
	addi $2, $0, 1
	syscall
	
	
	
	
   