# Q7) Fa�a um programa que leia n�meros inteiros diferentes de zero e calcule a soma dos
# valores positivos. O la�o do programa termina quando o usu�rio digita um valor zero.
# Em seguida o programa imprime a soma dos valores positivos digitados.
.text
do:	addi $2, $0, 5
	syscall
	srl $9, $2, 31 # verifica ultimo bit =1 negativo =0 positivo
	bne $9, $0, while # se $9 !=0 while = negativo
	add $9, $9, $2 #soma
while:	bne $2, $0, do # verifica se num=0

fim: 	add $4, $0, $9 #imprimi soma
	addi $2, $0, 1
	syscall
	