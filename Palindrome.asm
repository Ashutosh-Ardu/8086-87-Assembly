; palindrome
assume cs:code,ds:data
data segment
    string db 'tenet','$'
    ;msg db 'input the string:','$'
    ;string db 0bh,12 dup(?)
    string1 db 'STRING IS PALINDROME','$'
    string2 db 'STRING IS NOT A PALINDROME','$'
data ends

code segment
    
    start:
    mov ax,data
    mov ds,ax
    
    lea si,string
    
    loop1:
    mov al,[si]
    cmp al,'$'
    je label1
    inc si
    jmp loop1
    
    label1:
    lea di,string ; original string
    dec si ; reversed string
    
    loop2:
    cmp si,di
    jl output1
    mov al,[si]
    mov bl,[di]
    cmp al,bl
    jne output2
    
    dec si
    inc di
    jmp loop2
    
    output1:
    lea dx,string1
    mov ah,09h
    int 21h
    jmp term
    
    output2:
    lea dx,string2
    mov ah,09h
    int 21h
    
    term:
    mov ah,4ch
    int 21h
    
    int 3
code ends
end start
    
    
