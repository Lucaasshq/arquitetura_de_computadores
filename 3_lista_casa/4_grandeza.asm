# Q4) Faça um programa que leia dois números e escreva a relação de grandeza entre eles.
# Ex. 345 e 23 gera a saída 345>23. Ex.: 24 e 38 gera a saída 24<38. Ex.: 12 e 12 gera a
# saída 12=12

.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2 # num1
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2 # num2
	
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	
	sub $12, $8, $9
	bne $12, $0, diferentes
	
igual:	addi $4, $0, '='
	j print

	
diferentes:
	slt $10, $8, $9 # se ($8 < $9) $10=1 senao $10=0
	beq $10, $0 maior9
	addi $4, $0, '<'
	j print

maior9: 
	addi $4,$0 '>'
	
print:
	addi $2, $0, 11
	syscall
	
	add $4, $0, $9
	addi $2, $0, 1
	syscall
