assume cs:code,ds:data 
data segment
    num dw 5ah
    b db 02h
    output db ?
data ends
code segment
    start:
    mov ax,data
    mov ds,ax
    lea si,output
    
    mov ax,num
    and ax,0f0h
    mov cl,04h
    ror  ax,cl
    mov bx,ax
    
    mov ax,num
    and ax,0fh
    
    mov cx,04h
    bin:
    div b
    add ah,30h
    mov [si],ah
    inc si
    mov ah,00h
    dec cx
    jnz bin
    
    mov ax,bx
    mov cx,04h
    binlower:
    div b
    add ah,30h
    mov [si],ah
    inc si
    mov ah,00h
    dec cx
    jnz binlower
    
    
    mov cx,09h
    
    l1:
    mov dx,[si]
    mov ah,02h
    int 21h
    dec si
    loop l1
    
    mov ah,4ch
    int 21h
    hlt
code ends
end start
