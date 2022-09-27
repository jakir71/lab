.MODEL SMALL
.STACK 100H
.DATA
MSG DB '?$'
NUM1 DB ?
NUM2 DB ?
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
        
        MOV AH,9
        LEA DX,MSG
        INT 21H
        
        MOV AH,1
        INT 21H
        SUB AL,48
        MOV NUM1,AL 
        
        MOV AH,1
        INT 21H
        SUB AL,48
        MOV NUM2,AL  
        
        CMP AL,NUM1
        JLE FIRST
        JMP SECOND
        
        FIRST:
        MOV AH,2
        MOV DL,NUM2
        ADD DL,48
        INT 21H  
        
        MOV AH,2
        MOV DL,NUM1
        ADD DL,48
        INT 21H 
        
        JMP EXIT
                
        SECOND:
        MOV AH,2
        MOV DL,NUM1
        ADD DL,48  
        INT 21H
        
        MOV AH,2
        MOV DL,NUM2
        ADD DL,48
        INT 21H
        
        JMP EXIT 
               
   EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN