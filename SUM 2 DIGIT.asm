INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA 
MSG DB "ENTER 2 NUMBER$"
MSG1 DB "SUM IS:$"  
MSG2 DB "SUB IS:$"
A DB ?
B DB ?
.CODE 


MAIN PROC
           
        MOV AX,@DATA
        MOV DS,AX
        
        MOV AH,9
        LEA DX,MSG
        INT 21H  
        
        PRINTN 
    
        MOV AH,1
        INT 21H
        MOV A,AL
        SUB A,48
                 
         MOV AH,1
        INT 21H
        MOV B,AL
        SUB B,48
                
        PRINTN
        
        MOV AH,9
        LEA DX,MSG1
        INT 21H 
        
        MOV BH,A
        ADD BH,B
        ADD BH,48
        MOV AH,2
        MOV DL,BH
        INT 21H 
            
        PRINTN
        
        MOV AH,9
        LEA DX,MSG2
        INT 21H
        
        MOV BH,A
        SUB BH,B
        ADD BH,48 
        MOV AH,2
        MOV DL, BH
        INT 21H  
        
        
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN