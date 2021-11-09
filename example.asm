assume cs:codesg,ds:data,ss:stack

data segment

data ends

stack segment stack
	dw 0
stack ends

codesg segment

start:	
		;准备栈段
		mov ax,stack
		mov ss,ax
		mov sp,16		;栈段的长度，通常为16的倍数
		
		;准备数据段
		mov ax,data
		mov ds,ax
		
		;代码段
		sub al,al
		mov al,10H
		add al,90H
		mov al,80H
		add al,80H
		mov al,0FCH
		add al,05H
		mov al,7DH
		add al,0BH
	
	mov ax,4c00H
	int 21H
	
codesg ends

end start