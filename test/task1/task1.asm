assume ds:codeseg
codeseg segment
		mov ax,1000H
		mov ds,ax
		mov ax,2200H
		mov ss,ax
		mov ax,[0]
		add ax,[2]
		mov bx,[4]
		add bx,[6]
		push ax
		push bx
		pop ax
		pop bx
		push ax
		push bx
		push ds:[4]
		push ds:[6]
codeseg ends

end