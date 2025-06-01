.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2 #num1
	
	slt $10, $8, $0 # se ($8 < 0) $10<=1; senao %10<=0;
	
	beq $10, $0, positivo
	mul $4, $8, $8 #quadrado de num1
	j imp
	
positivo:
	sll $4, $8, 1 #dobro de num1
	
imp:	addi $2, $0, 1
	syscall
	
	
	addi $2, $0, 10
	syscall
	