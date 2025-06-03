#Faça um programa que possua um vetor (apelide de A)
# que armazene 6 números inteiros. O programa deve
# executar os seguintes passos:
#a) Atribua os seguintes valores a esse vetor:
#   1, 0, 5, -2, -5, 7.
#b) Armazene em uma variável inteira (simples)
#   a soma entre os valores das posições
#   A[0], A[1] e A[5] do vetor e
#   mostre na tela esta soma.
#c) Modifique o vetor na posição 4,
#   atribuindo a esta posição o valor 100.
#d) Mostre na tela cada valor do vetor A,
#   um em cada linha.
.data
A: .word 0, 0, 0, 0, 0, 0



.text
main: lui $8, 0x1001
#===== ini da letra a ======
      addi $9, $0, 1
      sw $9, 0($8)
      addi $9, $0, 0
      sw $9, 4($8)
      addi $9, $0, 5
      sw $9, 8($8)
      addi $9, $0, -2
      sw $9, 12($8)
      addi $9, $0, -5
      sw $9, 16($8)
      addi $9, $0, 7
      sw $9, 20($8)
#===fim da letra a===========

      lw $9, 0($8)
      lw $10, 4($8)
      lw $11, 20($8)

      add $4, $9, $10
      add $4, $4, $11
      addi $2, $0, 1
      syscall
      addi $4, $0, '\n'
      addi $2, $0, 11
      syscall
#===fim da letra b===========      
      addi $10, $0, 100
      sw $10, 16($8)
#===fim da letra b===========

      addi $9, $0, 6
      addi $10, $0, 0
test: beq $9, $10, fim

      lw $4, 0($8)
      addi $2, $0, 1
      syscall
               
      addi $4, $0, '\n'
      addi $2, $0, 11
      syscall
   
      addi $8, $8, 4
     
      addi $10, $10, 1            
      j test                                      
fim:  addi $2, $0, 10
      syscall