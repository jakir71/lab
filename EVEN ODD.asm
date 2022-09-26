INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
    MSG1 DB "ODD$"
    MSG2 DB "EVEN$"
    NUM DB ?
 
.CODE
   MOV AX , @DATA  ; Initializing Data Segment
   MOV DS , AX
 
   MOV AH , 1      ; Taking 1 number as input
   INT 21H
   MOV NUM , AL    ; Storing input result
 
   ROR AL , 1      ; Rotate Right by 1 bit
   JC EL           ; Jump If Carry   i.e odd
   PRINTN
    LEA DX , MSG2  ; Even
    JMP EXIT       ; JUMP FOR EXIT
 EL:
 PRINTN
    LEA DX , MSG1  ; Odd
 
EXIT:
   MOV AH,9    ; Service routine to display Result
   INT 21H
 
   MOV AH , 4CH    ; Service Routine for exit
   INT 21H
END
