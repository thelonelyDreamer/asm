assume cs:code,ds:data

data segment
		db '123456789012'
data ends


code segment
		mov ax,data
		mov ds,ax
		mov bx,0
		
		mov dx,0
		
		mov cx,12
		
	s:	mov al,[bx]
		mov ah,0
		add dx,ax
		inc bx
		loop s
		
		mov ax,4c00H
		int 21H
		
code ends
end