# Q12) Faça um programa que imprima os n primeiros números da série de Fibonacci, sendo n
# fornecido pelo usuário.

.text
main: addi $2, $0, 5
      syscall
      add $8, $0, $2 # n
     
      addi $10, $0, 1
      addi $11, $0, 1
     
      addi $9, $0, 0 # i = 0
test: beq $9, $8, fim
      add $4, $0, $10
      addi $2, $0, 1
      syscall
      addi $4, $0, ' '
      addi $2, $0, 11
      syscall
   
      add $12, $11, $10
     
      add $10, $0, $11
      add $11, $0, $12
         
      addi $9, $9, 1 # i = 1 + 1          
      j test          
fim: addi $2, $0, 10
     syscall