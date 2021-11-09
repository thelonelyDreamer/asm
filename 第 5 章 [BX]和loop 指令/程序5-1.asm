assume cs:codesg,ds:data,ss:stack

data segment

data ends

stack segment stack
	dw 16 dup (0)
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
		mov ax,0002H
		mov cx,11
	s:	add ax,ax
		loop s
		
	
		mov ax,4c00H
		int 21H
		
codesg ends

end start