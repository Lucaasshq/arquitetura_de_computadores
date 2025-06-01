#Faça um programa que receba três notas (entre 0 e 100)
#e calcule a média ponderada dessas notas
#com pesos 1, 2 e 3.
#Informe a média e se o aluno foi aprovado, escreva
#após a média, a letra A.
#Caso o aluno seja reprovado, informe,
#após a média, a letra R.
#A média para aprovação é 60.

.text
main: addi $2, $0, 5
      syscall
      add $8, $0, $2 # nota1
     
      addi $2, $0, 5
      syscall
      add $9, $0, $2 # nota2
      sll $19, $9, 1
     
      addi $2, $0, 5
      syscall
      add $10, $0, $2 # nota3
      sll $20, $10, 1
      add $20, $20, $10
     
      add $21, $8, $19
      add $21, $21, $20
         
      addi $22, $0, 6
     
      div $21, $22
     
      mflo $22
     
      mflo $4
      addi $2, $0, 1
      syscall    # imprimo a media
     
      addi $23, $0, 60
     
      slt $24, $22, $23 #se ($22 < 60) $24<=1 senão $24=0
     
      beq $24, $0, apv
      addi $4, $0, 'R'
   
      j imp
       
apv:  addi $4, $0, 'A'        
     

imp:  addi $2, $0, 11
      syscall
     
     
fim:  addi $2, $0, 10
      syscall