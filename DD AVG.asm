.MODEL SMALL
.STACK 100H
.DATA

    A   DB  ?
    B   DB  ?
    
    MSG1    DB  'Enter the first number: $'
    MSG2    DB  10,13,'Enter the second number: $'
    MSG3    DB  10,13,'Average is: $'
    POINT   DB  '.5$'


.CODE

MAIN PROC
    
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 9
    LEA DX, MSG1    
    INT 21H
    
    MOV BH, 0               ; initialize BH as 0 for previous digit
    MOV BL, 10D                 ; store 10 in BL to multiply and make number

INPUT1:

    MOV AH, 1
    INT 21H
    
    CMP AL, 13D             ; check if ENTER is pressed (input is carriage-return or 13D)
    JE SECOND                   ; then take second number 

NUMBER1:
                            
    SUB AL, 30H             ; make the number decimal range
    MOV CL, AL                  ; store AL in CL
    MOV AL, BH              ; get the previous digit in AL
    
    MUL BL                  ; multiply with 10 to make it tenth (or doshok)
    ADD AL, CL                  ; add doshok and ekok to combine number
    MOV BH, AL              ; store number in BH as previous number
    
    JMP INPUT1              ; take input as long as ENTER is not pressed
    
SECOND:
    
    MOV A, BH               ; store the first number in A
    
    MOV AH, 9
    LEA DX, MSG2    
    INT 21H
    
    MOV BH, 0               ; initialize BH as 0 for previous digit
    MOV BL, 10D                 ; store 10 in BL to multiply and make number

INPUT2:

    MOV AH, 1
    INT 21H
    
    CMP AL, 13D             ; check if ENTER is pressed (input is carriage-return or 13D)
    JE CALCULATE

NUMBER2:
                            
    SUB AL, 30H             ; make the number decimal range
    MOV CL, AL                  ; store AL in CL
    MOV AL, BH              ; get the previous digit in AL
    
    MUL BL                  ; multiply with 10 to make it tenth (or doshok)
    ADD AL, CL                  ; add doshok and ekok to combine number
    MOV BH, AL              ; store number in BH as previous number
    
    JMP INPUT2              ; take input as long as ENTER is not pressed
    
    
CALCULATE:
                            
    MOV B, BH               ; store the second number in B
                                
    MOV AX, 0                   ; clear AX register
    MOV AL, A               ; copy AL in A
    
    ADD AL, B
    
    MOV CL, 2               ; copy 2 in CL to divide the number
    DIV CL                      ; divide the number by 2
    
    MOV CH, AH              ; store the remainder in CH
    MOV AH, 0                   ; clear AH
    AAM                                ; adjust the quotient (vaag-fol) in AH and AL
    
    MOV BL, AL              ; copy second digit in BL
    MOV BH, AH                  ; copy first digit in BH
    
    MOV AH, 9
    LEA DX, MSG3
    INT 21H
    
    MOV AH, 2               ; print 1st digit
    MOV DL, BH
    ADD DL, 30H
    INT 21H
    
    MOV AH, 2               ; print 2nd digit
    MOV DL, BL
    ADD DL, 30H
    INT 21H 
    
    CMP CH, 0               ; if remainder is not 0
    JNE FLOAT                   ; then add '.5' with it
    JMP EXIT
    
FLOAT:
    
    MOV AH, 9               ; print '.5' with the result
    LEA DX, POINT
    INT 21H
                                   
EXIT:
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN
    
    
 ;SINGLE DIGIT AVG
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