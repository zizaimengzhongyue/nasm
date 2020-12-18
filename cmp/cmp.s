SECTION .data
    h db "hello", 0dh,0ah
	w db "world", 0dh,0ah
	d db "default", 0dh,0ah

SECTION .text
    global _start

_start:
    mov ecx, d
	mov edx, 9
	mov eax, 1
	cmp eax, 1
	jle world
	mov ecx, h
	mov edx, 7
	jmp exit
	world:
	mov ecx, w
	mov edx, 7
	exit:

	mov ebx, 1
	mov eax, 4
	int 80h

    mov ecx, d
	mov edx, 9
	mov eax, 1
	cmp eax, 0
	jle world2
	mov ecx, h
	mov edx, 7
	jmp exit2
	world2:
	mov ecx, w
	mov edx, 7
	exit2:

	mov ebx, 1
	mov eax, 4
	int 80h

	mov eax, 1
	int 80h
