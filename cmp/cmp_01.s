SECTION .data
	equal db "equal",0dh,0ah
	elen equ ($ - equal)
	noequal db "no equal",0dh,0ah
	nlen equ ($ - noequal)

SECTION .text
    global _start

_start:
    mov eax, 4
	cmp eax, 4
	je equalText
	mov ecx, noequal
	mov edx, nlen
	jmp exit
	equalText:
	mov ecx, equal
	mov edx, elen
	exit:
	mov ebx, 1
	mov eax, 4

	int 80h

	mov eax, 1
	int 80h
