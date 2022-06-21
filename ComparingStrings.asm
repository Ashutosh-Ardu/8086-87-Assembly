;comparing 2 strings
assume cs:code,ds:data
data segment
cr equ 13
lf equ 10
msg1 db cr,lf,"enter the string1 :$"
msg2 db cr,lf,"enter the string2 :$"
string1 db 0bh,12 dup(?)
string2 db 0bh,12 dup(?)
samemsg db cr,lf,"both are same$"
diffmsg db cr,lf,"different string$"
data ends
code segment
start:
mov ax,data
mov ds,ax

mov es,ax
lea dx,msg1
mov ah,09h
int 21h

lea dx,string1
mov ah,0Ah
int 21h

lea dx,msg2
mov ah,09h
int 21h

lea dx,string2
mov ah,0Ah
int 21h

lea si,string1
lea di,string2

cld
mov cx,09h
repe cmpsb
jz success
lea dx,diffmsg
jmp display

success:
lea dx,samemsg

display:
mov ah,09h
int 21h

mov ah,4ch
int 21h

code ends
end start