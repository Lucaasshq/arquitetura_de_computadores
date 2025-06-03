.text
main:	addi $2, $0, 5
	syscall
	
	jal dobro
	
	addi $2, $0, 1
	syscall
	
	addi $2, $0, 10
	syscall
	
#====================================
# função para somar dois inteiros
# Entradas: $4 e $5, $6
# Saída: $2
# Uso de registradores:  




dobro: