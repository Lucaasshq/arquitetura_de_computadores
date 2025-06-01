# Q6) Faça um programa que leia números inteiros e calcule a soma. O laço do programa
#termina quando o usuário digita um valor negativo. Em seguida o programa imprime a
#soma dos valores digitados.
.text

main:   addi $9, $9, 0

do:     addi $2, $0, 5
        syscall
        srl $8, $2, 31
        bne $8, $0, sai
        add $9, $9, $2
        j do    

sai:    add $4, $0, $9
        addi $2, $0, 1
        syscall          
       
       
        addi $2, $0, 10
        syscall
