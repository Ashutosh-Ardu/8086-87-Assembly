; volume of a sphere
data segment
    org 1000H
    side dd 5.0233
    constant dd 1.333
    vol dd 01 dup(?)
data ends

code segment
    assume cs:code,ds:data
    .8087
    start:
    mov ax,data
    mov ds,ax
    
    finit
    fld side ; loading the side on st(0)
    fst st(4); loading the side on st(4)
    fmul st(0),st(4) ;r^2 stored in st(0)
    fmul st(0),st(4) ;r^3 stored in st(0)
    
    fld constant ; loading 4/3 value
    fmul ; 4/3 * r^3
    fldpi ; pi is pushed 
    fmul ; pi * 4/3 * r^3
    fst vol ; final answer pushed in vol
hlt
code ends
end start
end
    