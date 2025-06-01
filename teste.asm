.text
main: 	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	addi $2, $0, 5
	syscall
	
	add $9, $8, $2
	
	addi $8, $0, 2
	
	div $4, $9, $8 
	addi $2, $0, 1
	syscall
	
	addi $4, $0, ','
	addi $2, $0, 11
	syscall
	
	mfhi $8
	mul $4, $8, 5
	addi $2, $0, 1
	syscall
	
	
	 