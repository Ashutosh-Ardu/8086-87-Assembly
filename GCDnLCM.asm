; GCD and LCM of two numbers
assume cs:code,ds:data 
data segment
    n1 dw 0008h
    n2 dw 0003h
data ends
code segment
    start:
    mov ax,data
    mov ds,ax
    
    mov ax,n1
    mov bx,n2
    
    compare:
    cmp ax,bx
    je ans
    jb swap
    
    division:
    mov dx,0000h
    div bx
    cmp dx,0000h
    je ans
    mov ax,dx
    jmp compare
    
    swap:
    xchg ax,bx
    jmp division
    
    ans:
    mov cx,bx
    mov ax,n1
    mov bx,n2
    mul bx
    div cx
    
    int 3
code ends
end start