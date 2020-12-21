SECTION .text
    global _start

_start:
    mov eax, '5'
	sub eax, '0'
	mov ecx, '4'
	sub ecx, '0'

	run:
	inc eax
	loop run
	add eax, '0'
	mov [result], eax

	mov edx, 1
	mov ecx, result
	mov ebx, 1
	mov eax, 4
	int 80h

	mov eax, 1
	int 80h

SECTION .bss
    result resb 1
