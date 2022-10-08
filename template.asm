assume cs:codesg,ds:data,ss:stack

data segment
	dd 100001H
	dw 100
	dw 0
data ends

stack segment stack
	db 16 dup (0)
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
		mov ax,data
		mov ds,ax
		mov ax,ds:[0]
		mov dx,ds:[2]
		div word ptr ds:[4]
		mov ds:[6],ax
	
	mov ax,4c00H
	int 21H
	
codesg ends

end start