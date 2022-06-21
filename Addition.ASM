codeseg segment
assume cs:codeseg
start:
mov ax,05H
mov bx,05H
add ax,bx
hlt
codeseg ends
end start         
