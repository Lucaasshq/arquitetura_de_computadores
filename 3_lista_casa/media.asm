# Q5) Fa�a um programa que receba tr�s notas (entre 0 e 100) e calcule a m�dia ponderada
# dessas notas com pesos 1, 2 e 3. Informe a m�dia e se o aluno foi aprovado, escreva
# ap�s a m�dia o a letra A. Caso o aluno seja reprovado, informe, ap�s a m�dia, a letra R.
# A m�dia para aprova��o � 60.


.text
main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2 # nota1
	
	addi $2, $0, 5
	syscall
	add $9, $0, $2 # nota2
	sll $19, $9, 1 # nota2 x 2
	
	addi $2, $0, 5
	syscall
	add $10, $0, $2 # nota3
	add $20, $10, $10 #
	add $20, $20, $10
	add $21, $20, $19
	add $21, $21, $8 #soma das notas
	
	addi $22, $0, 6 # peso 1 + 2 + 3
	div $21, $22
	mflo $23
	
	add $4, $0, $23
	addi $2, $0, 1
	syscall # imprimir media
	
	addi $24, $0, 60
	slt $25, $23, $24 #(se $23 < $24) $25=1 senao $25=0
	
	bne $25, $0, reprovado
	addi $4, $0, 'A'
	j print
	
	
reprovado:
	addi $4, $0, 'R'

print: 
	addi $2, $0, 11
	syscall

fim:   addi $2, $0, 10
       syscall
	