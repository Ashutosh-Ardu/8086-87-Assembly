; converting BCD to ASCII
; applicable for input ranging from:-
; 00H - 99H
assume cs:code
code segment
  start:
  mov al,49h
  mov ah,al
  mov cl,04h
  and al,0FH
  ror ah,cl
  and ah,0FH
  add ax,3030h
  hlt
code ends
end start