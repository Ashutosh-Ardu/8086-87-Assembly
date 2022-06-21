assume ds:data,cs:code
data segment
num1 db 9H
num2 db 3H
num3 db 3H
avg db ?
data ends
code segment
start:
mov ax,data
mov ds,ax
mov al,num1
add al,num2
add al,num3
mov ah,0H
mov dl,3H
div dl
mov avg,al
hlt
code ends
end start
