# Q3) Fa�a um programa que implementa um la�o com um teste no in�cio que conte de 0 a
# 10 imprimindo esses n�meros, um em cada linha da sa�da.

.text
main:	addi $5, $0, 11
	add $6, $0, $0 #i=0
	
for:	beq $5, $6 saiFor # 10==i
	
	add $4, $0, $6
	addi $2, $0, 1
	syscall
	
	addi $4, $0, '\n'
	addi $2, $0, 11
	syscall

	add $6, $6, 1 # i++
	j for

saiFor:
