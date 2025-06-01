# Q8) Faça um programa que leia números inteiros diferentes de zero e encontre o menor
# valor digitado e o maior valor digitado. O programa informa o maior e o menor, um em
# cada linha, quando o usuário digitar um 0.
.text
mian:		addi $2, $0, 5
		syscall
		add $8, $0, $2	#maior
		add $9, $0, $2	#menor
		
while:		beq $2, $0, fim
		slt $15, $2, $8  #verificação se maior
		bne $15, $0, menor	
		add $8, $0,$2
	
menor:		slt $16, $2, $9  #verificação se menor
		beq $16, $0, lerMaisUm	
		add $9, $0,$2
	
lerMaisUm: 	addi $2, $0, 5
	  	syscall
	  	j while	

fim:     	addi $4, $0, 'M'
		addi $2, $0, 11
		syscall
		addi $4, $0, ':'
		addi $2, $0, 11
		syscall
		addi $4, $0, ' '
		addi $2, $0, 11
		syscall
		add $4, $0, $8
		addi $2, $0, 1
		syscall
		addi $4, $0, '\n'
		addi $2, $0, 11
		syscall
		addi $4, $0, 'm'
		addi $2, $0, 11
		syscall
		addi $4, $0, ':'
		addi $2, $0, 11
		syscall
		addi $4, $0, ' '
		addi $2, $0, 11
		syscall
		add $4, $0, $9
		addi $2, $0, 1
		syscall