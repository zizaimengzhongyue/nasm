SECTION .data
    greater db "greater",0dh,0ah
	glen equ ($ - greater)
	less db "less",0dh,0ah
	llen equ ($ - less)

SECTION .text
    global _start

_start:
    mov eax,4
	cmp eax, 3
	jl big
	mov ecx, less
	mov edx, llen
	jmp exit
	big:
	mov ecx, greater
	mov edx, glen
	exit:
	mov ebx, 1
	mov eax, 4
	int 80h

	mov eax, 1
	int 80h
