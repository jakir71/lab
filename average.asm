.MODEL SMALL
.DATA
        VAL1    DB      ?
        NL1     DB      0AH,0DH,"ENTER HOW MANY NO U WANT:$"
        NL2     DB      0AH,0DH,"ENTER NO:$"
        NL3     DB      0AH,0DH,"AVEARGE:$"
.CODE
MAIN    PROC
        MOV AX,@DATA
        MOV DS,AX
        
        MOV AH,9
        LEA DX,NL1
        INT 21H

        MOV AH,1
        INT 21H
        SUB AL,48

        MOV CL,AL
        MOV BL,AL
        MOV AL,0
        MOV VAL1,AL

LBL1:   
        MOV AH,9
        LEA DX,NL2 
        INT 21H

        MOV AH,1
        INT 21H
        SUB AL,48

        ADD AL,VAL1
        MOV VAL1,AL
        LOOP LBL1

LBL2:   
        MOV AH,9
        LEA DX,NL3
        INT 21H

        MOV AX,0
        MOV AL,VAL1
        DIV BL
        ADD AX,48
        MOV DX,AX
        MOV AH,2
        INT 21H

        MOV AH,4CH
        INT 21H

MAIN    ENDP
        END     MAIN