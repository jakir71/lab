INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA


MSG1 DB "ENTER A LOWER CASE LETTER $"
MSG2 DB  "IN UPPER CASE ITS IS: "
CHAR DB ?,'$'

.CODE

MAIN PROC
    ;INITALIZE DS
    MOV AX, @DATA       ;get data segment
    MOV DS,AX           ;initailize DS
    
    ;print user prompt   
    MOV AH,9            ;display sting function
    LEA DX,MSG1         ;get first message
    INT 21H            ;display first message 
   
    ;input a char and cover to upper case
    MOV AH,1            ;read character function
    INT 21H             ;read a small letter into AL
    SUB AL, 20H         ;convert it to upper case
    MOV CHAR, AL        ;and store it  
    
    PRINTN
    ;display on the next line 
    MOV AH,9            ;display message and uppercase
    LEA DX,MSG2         ;get second message  
    INT 21H             ;letter in front
    
    ;DOS EXIT
    MOV AH,4CH
    INT 21H             ;dos exit
    
MAIN ENDP
    END MAIN