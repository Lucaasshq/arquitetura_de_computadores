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
	j imp
maior8:	add $4, $0, $8
	syscall

imp:	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall
	