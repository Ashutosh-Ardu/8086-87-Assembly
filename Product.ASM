codeseg segment
assume cs:codeseg
start:
mov ax,000AH
mov bx,000AH
mul bx
hlt
codeseg ends
end start
