;area of a square
data segment
    org 1000H
    side dd 5.0233
    sqarea dd 01 dup(?)
data ends

code segment
    assume cs:code,ds:data
    .8087
    start:
    mov ax,data
    mov ds,ax
    
    finit
    fld side  ; loading the side value in st(0)
    fst st(4) ; loading the same value in st(4)
    fmul st(0),st(4) ; st(0) * st(4)
    fst sqarea  ; pushing the final answer 
hlt
code ends    
end start
end