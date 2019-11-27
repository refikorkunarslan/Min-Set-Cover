.data
	myArray: .space 24
	message: .asciiz "Space Set \n"
	mees: .asciiz "RESULT \n"
	newLine: .byte '\n'
	comma : .byte ','

	
.text
	main:
  		addi $s0, $zero, 1
  		addi $s1, $zero, 2
		addi $s2, $zero, 3
		addi $s3, $zero, 4
		addi $s4, $zero, 5
		addi $s5, $zero, 6
		
			
		addi $t0, $zero, 0  
	
		sw $s0, myArray($t0)
			addi $t0, $t0, 4
		sw $s1, myArray($t0)
			addi $t0, $t0, 4
		sw $s2, myArray($t0)
			addi $t0, $t0, 4
		sw $s3, myArray($t0)
			addi $t0, $t0, 4
		sw $s4, myArray($t0)
			addi $t0, $t0, 4
		sw $s5, myArray($t0)
		
		addi $t7,$zero,0
		
		addi $t1,$zero,2
		 li $v0,1
			
		
		beq $t1,$s0, count
		beq $t1,$s1, count
		beq $t1,$s2, count
		beq $t1,$s3, count
		beq $t1,$s4, count
		beq $t1,$s5, count
		count:
			add $t7, $t7, 1

		#addi $t8,$zero, 0
		
		#jal compare

		addi $t0, $zero, 0
		addi $t4, $zero, 1
		addi $t5, $zero, 4
		 
		
		beq $t4,$s0,count1
		beq $t4,$s1,count1
		beq $t4,$s2,count1
		beq $t4,$s3,count1
		beq $t4,$s4,count1
		beq $t4,$s5,count1
		beq $t5,$s0,count1
		beq $t5,$s1,count1
		beq $t5,$s2,count1
		beq $t5,$s3,count1
		beq $t5,$s4,count1
		beq $t5,$s5,count1
	
		count1:
			addi $t8, $t8, 2	
			
		slt $s7,$t7,$t8
		beq $s7,$zero,bigger
		
		bigger:
			add $t1,$zero, $t4
			add $t2,$zero, $t5
		
			add $t4,$zero, 0
			add $t5,$zero, 0
		
		addi $a1,$zero, 1
		addi $a2,$zero, 5
		addi $a3,$zero, 6
		
		addi $t8,$zero, 0
		beq $a1,$s0,count2
		beq $a1,$s1,count2
		beq $a1,$s2,count2
		beq $a1,$s3,count2
		beq $a1,$s4,count2
		beq $a1,$s5,count2
		beq $a2,$s0,count2
		beq $a2,$s1,count2
		beq $a2,$s2,count2
		beq $a2,$s3,count2
		beq $a2,$s4,count2
		beq $a2,$s5,count2
		beq $a3,$s0,count2
		beq $a3,$s1,count2
		beq $a3,$s2,count2
		beq $a3,$s3,count2
		beq $a3,$s4,count2
		beq $a3,$s5,count2
		count2:
			add $t7, $t7, 2
			
		slt $s7,$t7,$t8
		beq $s7,$zero,bigger1
		
		bigger1:
			add $t1,$zero, $a1
			add $t2,$zero, $a2
			add $t3,$zero, $a3
		
			add $t4,$zero, 0
			add $t5,$zero, 0
			
		addi $t4,$zero, 2
		addi $t5,$zero, 3
		addi $k0,$zero, 5
		addi $k1,$zero, 6
		
		beq $t4,$s0,count3
		beq $t4,$s1,count3
		beq $t4,$s2,count3
		beq $t4,$s3,count3
		beq $t4,$s4,count3
		beq $t4,$s5,count3
		beq $t5,$s0,count3
		beq $t5,$s1,count3
		beq $t5,$s2,count3
		beq $t5,$s3,count3
		beq $t5,$s4,count3
		beq $t5,$s5,count3
		beq $k0,$s0,count3
		beq $k0,$s1,count3
		beq $k0,$s2,count3
		beq $k0,$s3,count3
		beq $k0,$s4,count3
		beq $k0,$s5,count3
		beq $k1,$s0,count3
		beq $k1,$s1,count3
		beq $k1,$s2,count3
		beq $k1,$s3,count3
		beq $k1,$s4,count3
		beq $k1,$s5,count3
		count3:
		 	add $t8, $t8, 4	
		slt $s7,$t7,$t8
		beq $s7,$zero,bigger2
		
		bigger2:
			add $t1,$zero, $t4
			add $t2,$zero, $t5
			add $t3,$zero, $k0
			add $t4,$zero, $k1
													
			add $a1,$zero, 0
			add $a2,$zero, 0
			add $a3,$zero, 0
			
			
		beq $t1,$s0,remove
		beq $t1,$s1,remove1
		beq $t1,$s2,remove2
		beq $t1,$s3,remove3
		beq $t1,$s4,remove4
		beq $t1,$s5,remove5
		beq $t2,$s0,remove
		beq $t2,$s1,remove1
		beq $t2,$s2,remove2
		beq $t2,$s3,remove3
		beq $t2,$s4,remove4
		beq $t2,$s5,remove5
		beq $t3,$s0,remove
		beq $t3,$s1,remove1
		beq $t3,$s2,remove2
		beq $t3,$s3,remove3
		beq $t3,$s4,remove4
		beq $t3,$s5,remove5
		beq $t4,$s0,remove
		beq $t4,$s1,remove1
		beq $t4,$s2,remove2
		beq $t4,$s3,remove3
		beq $t4,$s4,remove4
		beq $t4,$s5,remove5
	
		remove3:
			addi $s3,$zero, 0

		remove:
			addi $s0,$zero, 0
	        remove1:
			addi $s1,$zero, 0
			
		remove2:
			addi $s2,$zero, 0
			
		remove4:
			addi $s4,$zero, 0
			
		remove5:
			addi $s5,$zero, 0
			
		
		move $s1,$s3
		addi $s3, $zero ,0
		addi $a1, $zero, 0
		addi $k0,$zero, 2
		beq  $k0,$s0,countdown
		
		
		
		addi $s6,$zero, 1
		addi $s7,$zero, 4
				
		beq  $s6,$s0,countdown1
		beq  $s6,$s1,countdown1
		      
		beq  $s7,$s0,countdown1
		beq  $s7,$s1,countdown1
		countdown:
			addi $a1,$a1,1
		countdown1:
			addi $a2,$a2,2	
		
		
		
		li $v0, 4
		la $a0,message
		syscall
		
		
		
					
			
		while:
			beq $t0, 24, exit
			lw  $t6, myArray($t0)
			addi $t0,$t0,4
			
			
			li $v0, 1
			move $a0, $t6
			syscall
			
			li $v0, 4
			la $a0, comma
			syscall
		
			
	   
	   		j while
	   	exit:
	   		li $v0, 4
			la $a0, newLine
			syscall
			
			li $v0, 4
			la $a0, mees
			syscall 
			
			
			li $v0, 1
			move $a0, $t1
			syscall
			
			li $v0, 4
			la $a0, comma
			syscall
			
			li $v0, 1
			move $a0, $t2
			syscall
			
			li $v0, 4
			la $a0, comma
			syscall
			
			li $v0, 1
			move $a0, $t3
			syscall
			
			li $v0, 4
			la $a0, comma
			syscall
			
			li $v0, 1
			move $a0, $t4
			syscall
			
			li $v0, 4
			la $a0, newLine
			syscall
	   		
	   		li $v0, 1
			move $a0, $s0
			syscall
			
			li $v0, 4
			la $a0, comma
			syscall
			
			li $v0, 1
			move $a0, $s1
			syscall
			
			
			
			
	 		
	 		li $v0, 10
	 		syscall
	   
	  
	
	

	 
	
	
		
		
			
  		
	 	
		
