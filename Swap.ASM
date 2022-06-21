assume ds:data,cs:code
data segment
NUM1 DB 9H
NUM2 DB 7H
data ends
code segment
START:
MOV AX,DATA
MOV DS,AX
MOV AH,0H
MOV AL,NUM1
MOV BL,NUM2
xchg al,bl
mov num1,al
mov num2,bl
mov cl,num1
mov dl,num2
HLT
code ends
END START
