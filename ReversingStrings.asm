;Reversing a String
assume cs:code,ds:data
data segment
    str1 db 'ashutosh$'
    len dw $-str1
    str2 db ?
data ends

code segment
    start:
    mov ax,data
    mov ds,ax
    
    mov cx,len
    add cx,-1
    
    lea si,str1
    lea di,str2
    
    add si,len
    add si,-2
    
    reverse:
    mov al,[si]
    mov [di],al
    dec si
    inc di
    loop reverse
    
    mov dl,'$'
    mov [di],dl
    
    mov ah,09h
    lea dx,str2
    int 21h
    
    mov ah,4ch
    int 21h
    
    int 3
code ends
end start