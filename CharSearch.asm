; Search for a particular character in a string
assume cs:code,ds:data
data segment
    ;var1 db "ashutosh$"  
    var1 db 0bh,12 dup(?)
    ;var2 db "q$" 
    var2 db 0bh,12 dup(?)
    len db $-var1
    inp  db "enter the string:$"
    inp1 db "enter the character:$"
    msg1 db "Found$"
    msg2 db "Not Found$"
data ends
code segment
    start:
    mov ax,data
    mov ds,ax
    
    lea dx,inp
    mov ah,9h
    int 21h
    
    lea dx,var1
    mov ah,0Ah
    int 21h
    
    mov dl,09h
    mov ah,2
    int 21h
    
    lea dx,inp1
    mov ah,9h
    int 21h
    
    mov ah,1
    int 21h
    
    mov bl,al
    
     mov dl,09h
    mov ah,2
    int 21h
    
    
    
    mov cl,len
    dec cl
    dec cl
    
     
    
    compare:  
    mov al,[si]
    cmp al,bl
    je loop1
    inc si
    dec cl
    jnz compare
    lea dx,msg2
    jmp print
    
    loop1:
    lea dx,msg1
    
    print:
    mov ah,09h
    int 21h
    
    mov ah,4ch
    int 21h
    
    int 3
code ends
end start
       