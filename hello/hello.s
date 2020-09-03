SECTION .data
msg db "HelloWorld!!!"
msglen equ ($ - msg)

SECTION .text
global _start

_start:
	mov edx,msglen
	mov ecx,msg
	mov ebx,1
	mov eax,4
	int 80h
