SECTION .data
    odd db "odd",0dh,0ah
	ol equ ($ - odd)
	even db "even",0dh,0ah
	el equ ($ - even)

SECTION .text
    global _start

_start:
    mov ecx, odd
	mov eax, 1 
	shr eax, 1
	cmp eax, 0
	jle od
	mov ecx, even
	mov edx, el
	jmp exit
	od:
	mov ecx, odd
	mov edx, ol
	exit:

	mov ebx, 1
	mov eax, 4
	int 80h

	mov ecx, odd
	mov eax, 1
	mov eax, 2
	shr eax, 1
	cmp eax, 0
	jle od2
	mov ecx, even
	mov edx, el
	jmp exit2
	od2:
	mov ecx, odd
	mov edx, ol
	exit2:

	mov ebx, 1
	mov eax, 4
	int 80h

	mov eax, 1
	int 80h
