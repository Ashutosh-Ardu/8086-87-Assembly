; Factorial of a number
assume cs:code,ds:data
data segment
    num dw 07h
data ends
code segment
    start:
    mov ax,data
    mov ds,ax
    
    mov cx,num
    mov ax,01h
    
    factorial:
    mul cx
    dec cx
    jnz factorial
    
    int 3
code ends
end start   
  
  
