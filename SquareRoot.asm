; square root of a number
assume cs:code,ds:data
data segment
    num dw 0064h
data ends
code segment
    start:
    mov ax,data
    mov ds,ax
    
    mov bx,num
    mov cx,00h
    
    l1:
    mov ax,cx
    mul cx
    cmp ax,bx
    jz store
    inc cx
    jnz l1
    
    store:
    int 3
code ends
end start

 checking whether the is odd or even
assume cs:code,ds:data
data segment
    num dw 88h
    msg1 db "Even","$"
    msg2 db "Odd","$"
data ends

code segment
    start:
    mov ax,data
    mov ds,ax
    
    mov ax,num
    ror ax,01h
    jc odd
    
    lea dx,msg1
    jmp show
    
    odd:
    lea dx,msg2

    show:
    mov ah,09h
    int 21h   
    mov ah,4ch
    int 21h    
        
    int 3
       
code ends
end start