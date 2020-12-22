SECTION .data
    greater db "greater",0dh,0ah
	glen equ ($ - greater)
	less db "less",0dh,0ah
	llen equ ($ - less)

SECTION .text
    global _start

_start:
    mov eax,4
	cmp eax, 5
	jl lessText
	mov ecx, greater
	mov edx, glen
	jmp exit
	lessText:
	mov ecx, less
	mov edx, llen
	exit:
	mov ebx, 1
	mov eax, 4
	int 80h

	mov eax, 1
	int 80h
