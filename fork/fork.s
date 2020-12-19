SECTION .data
    msg db "hello",0dh,0ah
	len equ ($ - msg)

SECTION .text
    global _start

_start:
    mov edx, len
	mov ecx, msg

	mov eax, 2
	int 80h

	mov ebx, 1
	mov eax, 4
	int 80h

	mov eax, 1
	int 80h
