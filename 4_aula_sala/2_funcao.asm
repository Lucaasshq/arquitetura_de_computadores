.text
main:	addi $2, $0, 5
	syscall
	add $4, $0, $2
	
	addi $2, $0, 5
	syscall
	add $5, $0, $2
	jal adder
	add $4, $0, $2
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall

# funcao para somar dois numeros
# entradas $4, $5
# saida: $2
# registradores manipulados	
adder:	add $2, $4, $5
	jr $31
