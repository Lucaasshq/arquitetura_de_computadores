# Q2) Faça um programa que solicite ao usuário um número para ser a referência e outro
# para ser a quantidade de valores a ser impresso no caso do programa da Q1. Para a
# mesma resposta, por exemplo, o usuário forneceria a referência 3 e a quantidade 10.

.text

main:   addi $2, $0, 5
        syscall
        add $20, $0, $2 #base

        addi $2, $0, 5
        syscall
        add $21, $0, $2 #qtd



        addi $8, $0, 0
        add $10, $0, $21
        add $9, $0, $20
test:   beq $8, $10, saifor

        add $4, $0, $9
        addi $2, $0, 1
        syscall
        add $9, $9, $20
       
        add $4, $0, '\n'
        addi $2, $0, 11
        syscall
       
        addi $8, $8, 1
        j test
saifor:
        addi $2, $0, 10
        syscall