# Q3) Escreva um programa para ler dois números inteiros e mostrar na tela o maior deles,
# bem como a diferença entre eles (a diferença é sempre um valor positivo)

.text
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	
	slt $10, $8, $9 # se ($8 < $9) $10 <=1; senao $10<=0
	
	beq $10, $0, maior8
	add $4, $0, $9
	sub $11, $9, $8
	j imp
maior8:	add $4, $0, $8
	sub $11, $8, $9
	syscall

imp:	addi $2, $0, 1
	syscall

	addi $2, $0, 11
	add $4, $0, '\n'
	syscall	
	
	addi $2, $0, 1
      	add $4, $0, $11
      	syscall
	
	
	addi $2, $0, 10
	syscall
	