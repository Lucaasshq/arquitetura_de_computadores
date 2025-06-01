# Q6) Faça um programa que leia a idade (em anos) e o tempo de serviço de um trabalhador.
# Informe se ele pode se aposentar (imprima S se sim, e N se não). As condições para
# aposentadoria são: 1) ter, ao menos, 65 anos; OU 2) ter trabalhado 40 anos; OU ter
# pelo menos 60 anos e mais de 35 anos.

.text
main:	
	addi $2, $0, 5
	syscall
	add $8, $0, $2 #idade
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2 # anos de trabalho
	
	#condição para aposentadoria
	# 65 anos
	# 40 trabalho
	# 60 anos e mais 35
	
	addi $20, $0, 65
	addi $21, $0, 40
	
	slt $10, $8, $20 # se $8 < $20 $10=1 senao $10=0
	beq $10, $0, idade65 # vai para poder se aposentar
	
	
	slt $11, $9, $21 # se $9 < $21 $10=1 se nao $10=0
	beq $11, $0, trabalho40 # vai para aposentar
	addi $4, $0, 'N' # senão n pode
	j print
	
idade65:
	addi $4, $0, 'S'

trabalho40:
	addi $4, $0, 'S'
	
print:
	addi $2, $0, 11
	syscall
	
	
	
	