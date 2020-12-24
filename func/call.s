SECTION .data
    newline db 0dh,0ah
	newlineLen equ ($ - newline)
	outer db "outer",0dh,0ah
	outerLen equ ($ - outer)
	inner db "inner",0ah,0dh
	innerLen equ ($ - inner)

SECTION .txt
    global _start

SECTION .txt
sumF:
    mov eax, '5'
	sub eax, '0'
	mov ebx, '4'
	sub ebx, '0'
	add eax, ebx
	add eax, '0'
	mov [sum], eax
	mov ecx, sum
	mov edx, 1
	mov ebx, 1
	mov eax, 4
	int 80h
	mov ecx, newline
	mov edx, newlineLen
	mov ebx, 1
	mov eax, 4
	int 80h
	ret

innerF:
    pushad
	mov ecx, inner
	mov edx, innerLen
	mov ebx, 1
	mov eax, 4
	int 80h
	popad
	ret

SECTION .txt
_start:
    call sumF
	mov eax, 1

	mov ecx, outer
	mov edx, outerLen
	mov ebx, 1
	mov eax, 4
	
	call innerF
	int 80h

	mov eax, 1
	int 80h
   

SECTION .bss
    sum resb 1
