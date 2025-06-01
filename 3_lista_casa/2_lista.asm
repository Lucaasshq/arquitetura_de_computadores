# Q2) Faça um programa para ler um número inteiro. Se o número for positivo, imprima o
# dobro do número, se for negativo, imprima o quadrado do número.

.text
main:	addi $2, $0, 5
	syscall
	
	slt $10, $2, $0
	beq $10, $0, posit
	
	mul $4, $2, $2
	j print
	
	
posit:	
	sll $4, $2, 1
	
print:	addi $2, $0, 1
	syscall
	
	