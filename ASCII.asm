 .MODEL SMALL
 .STACK 100H
 .DATA
 MSG DB 'The 256 ASCII Characters are : $'
 .CODE
 MAIN PROC
    
 MOV AX, @DATA ; initialize DS
 MOV DS, AX 
 
 MOV AH, 9
 LEA DX, MSG ; load and print PROMPT
 INT 21H 
 
 MOV CX, 256 ; initialize CX
 MOV DX, 0 ; initialize DL with 0 
 
ASCII:  
MOV AH, 2
 INT 21H
 INC DX
 DEC CX
 JNZ ASCII  
 
 MOV AH, 4CH ; return control to DOS
 INT 21H
 MAIN ENDP
 END MAIN