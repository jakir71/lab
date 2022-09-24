INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA 
A DB ?
.CODE

MAIN PROC  
       
       PRINT "EKY DIGIT NEO:"
              
      MOV AH,1
      INT 21H
      
      MOV A,AL
              
              PRINTN
              
      MOV AH,2
      MOV DL,A
      INT 21H
  
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN