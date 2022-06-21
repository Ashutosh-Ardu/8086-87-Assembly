codeseg segment
assume cs:codeseg
start:
mov ax,0016H
mov bx,000BH
div bx
hlt
codeseg ends
end start
