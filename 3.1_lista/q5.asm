# Q6) Fa�a um programa que leia n�meros inteiros e calcule a soma. O la�o do programa
# termina quando o usu�rio digita um valor negativo. Em seguida o programa imprime a
# soma dos valores digitados.
.text
main:	
	addi $2, $0, 5 #ler num1
	syscall
	srl $8, $2, 31 # verifica se ele � negatico verificando ultimo bit
	addi $9, $0, 0 # soma
	
for:	bne $8, $0, sai # se ultimo bit for != 0 ele sai senao ele continua
	add $9, $9, $2 # soma $9, $9 + #1
	addi $2, $0, 5 # ler 
	syscall 
	srl $8, $2, 31 # verifica se � negativo ultimo bit != 0 � negativo
	j for
	

sai:
	add $4, $0, $9 # mostra soma
	add $2, $0, 1
	syscall