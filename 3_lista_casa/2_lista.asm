# Q2) Fa�a um programa para ler um n�mero inteiro. Se o n�mero for positivo, imprima o
# dobro do n�mero, se for negativo, imprima o quadrado do n�mero.

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
	
	