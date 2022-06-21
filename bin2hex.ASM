;binary to hex
assume cs:code,ds:data
data segment
    binary db "10011101$"
    var db 08h
    convert db 30h
    temp db ?
data ends
code segment
    start:
    mov ax,data
    mov ds,ax
    mov bl,00h ; sum
    mov dl,00h
    mov cl,04h 
    lea si,binary
    mov al,08h
       
    upper:
    mov dl,[si]
    sub dl,convert
    mul dl
    add bl,al
    mov al,var
    shr al,01h
    mov var,al
    inc si
    dec cl
    jnz upper
    
    mov cl,04h
    ror bl,cl
    
    mov cl,04h
    mov al,08h
    mov var,al
    
    lower:
    mov dl,[si]
    sub dl,convert
    mul dl
    add bl,al
    mov al,var
    shr al,01h
    mov var,al
    inc si
    dec cl
    jnz lower
    
    int 3
code ends
end start
    
; Alternative
;DATA SEGMENT
;        NUM2 DB "10011101$"
;		  LEN1 DW $-NUM2	
;DATA ENDS
;CODE SEGMENT
;ASSUME CS:CODE, DS:data
;START:   MOV AX,DATA
;			MOV DS,AX
;         LEA SI,NUM2
;			MOV AL,80H
;			MOV AH,00H
;			MOV BX,0000H
;			MOV DL,01H
;			MOV CX,LEN1
;			ADD CX,-1
;LOOP1:	MOV DH,[SI]
;			SUB DH,30H
;			CMP DH,DL
;			JZ POINT1
;POINT2:	MOV DH,02H
;			DIV DH
;			MOV AH,00H
;			INC SI
;			loop loop1
;			JMP exit
;POINT1:  MOV AH,00H
;		   ADD BX,AX
;			JMP POINT2
;EXIT:		MOV AX,BX
;			HLT
;CODE ENDS
;END START
 
    