.data #
.word 3
.word 6
.word 0
.word 67
.word 1
.word -4

.text
main:	lui $8, 0x1001 # $8 <= Ox1001
	lw $9, 0($8)
	
	addi $2, $0, 5
	syscall
	sw $2, 0($8)