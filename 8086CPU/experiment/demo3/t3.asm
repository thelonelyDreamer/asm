
assume cs:codesg

codesg segment
	
	
	mov ax,2000H
	mov ss,ax
	mov sp,0
	mov ax,8900H
	push ax
	mov ax,9900H
	push ax
	pop ax
	pop bx
	push ax
	push bx
	pop ax
	pop bx
	
	mov ax,4c00H
	int 21H
codesg ends

end