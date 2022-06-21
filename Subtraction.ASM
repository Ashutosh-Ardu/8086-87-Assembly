codeseg segment
assume cs:codeseg
start:
mov ax,000AH
mov bx,0002H
sub ax,bx
hlt
codeseg ends
end start
