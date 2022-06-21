;Combination
assume cs:code,ds:data
data segment
    n dw 08h
    r dw 04h
    top dw ?
    bottom dw ?
data ends
code segment
    start:
    mov ax,data
    mov ds,ax
    
    mov cx,n
    mov ax,01h
    
    factorial:
    mul cx
    dec cx
    jnz factorial
    
    mov top,ax
    
    mov cx,n
    mov dx,r
    sub cx,dx
    mov ax,01h
    
    factorial1:
    mul cx
    dec cx
    jnz factorial1
    
    mov bottom,ax
    mov cx,r
    mov  ax,01h
    
    factorial2:
    mul cx
    dec cx
    jnz factorial2
    
    mov cx,bottom
    mul cx
    mov cx,ax           
    
    mov ax,top
    div cx
        
    int 3
    
code ends
end start