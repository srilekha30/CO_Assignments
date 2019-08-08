.data
	b: .word 1
	a: .word 1
.text
	li $v0,5
	syscall
	move $t0,$v0
	lw $t1,a
	lw $t2,b
	loop:
		beq $t0,$t2,EXIT
		mul $t1,$t1,$t0
		subi $t0,$t0,1
		j loop
	EXIT:
		move $a0,$t1
		li $v0,1
		syscall
		
	
		
