.data


   	n1: .asciiz "enter your first number: "
    
	
	n2: .asciiz "enter your second number: "
	n3: .asciiz "enter your third number: "

    
	result: .asciiz "result is "



.text
  
  
	#getting first input.


	li $v0, 4
   
    
	
	la $a0, n1

     
	syscall

  

	li $v0, 5

    
	syscall

   
	
move $t0, $v0

 
   
	
	
	#getting second input.

 
	li $v0, 4

    
	la $a0, n2

    
	syscall
	li $v0, 5
    
	
	syscall

    
	move $t1, $v0




	#getting third input.

 
	li $v0, 4

    
	la $a0, n3
    
	syscall
	li $v0, 5
    
	
	syscall

    
	move $t2, $v0


    
	
	addi $t1, $t1, 8
	add $t1, $t1, $t2
	mul $t1, $t1, 3

	
	#calculate and print out the result.

    
	la $a0, result
    
	
	li $v0, 4

    
	syscall

    
	sub $t3, $t0, $t1

    
	move $a0, $t3

    
	li $v0, 1

    
	syscall


    
	#end program.

    
	li $v0, 10

    
	syscall

#c = a + 3*(b+2)



#d = a - 3 * (b + c + 8)
