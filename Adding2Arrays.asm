;adding 2 arrays
assume cs:code,ds:data,es:extra
data segment
    A db 35h,36h,37h,38h ; first array
    B db 45h,46h,47h,48h ; second array
data ends
extra segment
    Z db ? ; to store final result
extra ends
code segment
    start:
    mov ax,data ; data seg initialization
    mov ds,ax
    
    mov es,ax ; extra seg initialization
    mov bx,0000h
    mov cl,04h
    lea di,Z
    
    up:
    mov al,A[bx]
    add al,B[bx]
    
    inc bx
    stosb ; stores the result in ES:DI
    dec cl
    jnz up
    
    int 03h
code ends
end start