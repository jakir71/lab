.model small
.stack 100h

.data

msg db 0ah,0dh,'THE Multiplication Is=$'

.code

main proc
   
    mov ah,1
    int 21h
   
    mov bl,al
   
    sub bl,30h
   
    mov ah,1
    int 21h
   
    mov cl,al
    sub cl,30h
   
   
    mov ax,@data
    mov ds,ax
    lea dx,msg
    mov ah,9
    int 21h
     
   
   
    mov al,bl 
   
    mul cl
   
    mov dl,al
   
    add dl,30h
   
   
    mov ah,2
    int 21h
   
    main endp
end main