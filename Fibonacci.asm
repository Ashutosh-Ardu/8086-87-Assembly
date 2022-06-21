; Fibonacci Series     
assume cs:code,ds:data
data segment
RES DB ?
CNT DB 0AH       
data ends
code segment
START: 
MOV AX,data
MOV DS,AX
LEA SI,RES
MOV CL,CNT       
MOV AX,00H       
MOV BX,01H       


L1:
ADD AX,BX
MOV [SI],AX
MOV AX,BX
MOV BX,[SI]
INC SI
LOOP L1

INT 3H
code ends           
END START