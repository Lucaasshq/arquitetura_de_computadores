# Q5) Faça um programa que leia 10 valores e imprima a sua soma.
.text
main:	
	addi $9, $0, 10 	# $9 = 4
	add $8, $0, $0 	# $8 = 0; i=0
	add $10 , $0, $0
for:	beq $8, $9, sai	# se i == 4 sai:
	
	addi $2,$0, 5
	syscall
	add $10, $10, $2
	
	addi $8, $8, 1	# i = i + 1
	j for

sai:
	add $4, $0, $10
	addi $2, $0, 1
	syscall 