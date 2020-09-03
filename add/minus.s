SECTION .text
    global _main

_main:
    mov eax, '6'
	sub eax, '0'
	mov ebx, '4'
	sub ebx, '0'
	sub eax, ebx
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
