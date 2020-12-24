SECTION .data
    equal db "equal",0dh,0ah
	equalLen equ ($ - equal)
	noequal db "no equal",0dh,0ah
	noequalLen equ ($ - noequal)
	greater db "greater",0dh,0ah
	greaterLen equ ($ - greater)
	less db "less",0dh,0ah
	lessLen equ ($ - less)
	zero db "zero",0dh,0ah
	zeroLen equ ($ - zero)
	nozero db "no zero",0dh,0ah
	nozeroLen equ ($ - nozero)
	nogreater db "no greater",0dh,0ah
	nogreaterLen equ ($ - nogreater)
	noless db "no less",0dh,0ah
	nolessLen equ($ - noless)

SECTION .text
    global _start

;je jne, jcxz jecxz jrcxz, ja jb, jnbe jnae, jae jbe, jnb jna, jg jl, jnle jnge, jge jle, jnl jng
_start:
    ; je
    mov eax, 5
	cmp eax, 5
	je equ0
	mov ecx, noequal
	mov edx, noequalLen
	jmp exit0
	equ0:
	mov ecx, equal
	mov edx, equalLen
	exit0:
	mov ebx, 1
	mov eax, 4
	int 80h

    ; jne
	mov eax, 5
	cmp eax, 4
	jne noequ0
	mov ecx, equal
	mov edx, equalLen
	jmp exit1
	noequ0:
	mov ecx, noequal
	mov edx, noequalLen
	exit1:
	mov ebx, 1
	mov eax, 4
	int 80h

	; jcxz cx=0
	mov cx, 0
	jcxz zero0
	mov ecx, nozero
	mov edx, nozeroLen
	jmp exit2
	zero0:
	mov ecx, zero
	mov edx, zeroLen
	exit2:
	mov ebx, 1
	mov eax, 4
	int 80h

	; jcxz cx != 0
	mov cx, 1
	jcxz zero1
	mov ecx, nozero
	mov edx, nozeroLen
	jmp exit3
	zero1:
	mov ecx, zero
	mov edx, zeroLen
	exit3:
	mov ebx, 1
	mov eax, 4
	int 80h

	; jecxz ecx = 0
	mov ecx, 0
	jecxz zero2
	mov ecx, nozero
	mov edx, nozeroLen
	jmp exit4
	zero2:
	mov ecx, zero
	mov edx, zeroLen
	exit4:
	mov ebx, 1
	mov eax, 4
	int 80h

	; jecxz ecx != 0
	mov ecx, 1
	jecxz zero3
	mov ecx, nozero
	mov edx, nozeroLen
	jmp exit5
	zero3:
	mov ecx, zero
	mov edx, zeroLen
	exit5:
	mov ebx, 1
	mov eax, 4
	int 80h

	; ja > 
	mov eax, 5
	cmp eax, 4
	ja greater0
	mov ecx, less
	mov edx, lessLen
	jmp exit6
	greater0:
	mov ecx, greater
	mov edx, greaterLen
	exit6:
	mov ebx, 1
	mov eax, 4
	int 80h

	; jb < 
	mov eax, 5
	cmp eax, 6
	jb less0
	mov ecx, greater
	mov edx, lessLen
	jmp exit7
	less0:
	mov ecx, less
	mov edx, lessLen
	exit7:
	mov ebx, 1
	mov eax, 4
	int 80h

	; jae >=
	mov eax, 5
	cmp eax, 5
	jae noless0
	mov ecx, nogreater
	mov edx, nogreaterLen
	jmp exit8
	noless0:
	mov ecx, noless
	mov edx, nolessLen
	exit8:
	mov ebx, 1
	mov eax, 4
	int 80h

	; jbe <=
	mov eax, 5
	cmp eax, 5
	jbe nogreater0
	mov ecx, noless
	mov edx, nolessLen
	jmp exit9
	nogreater0:
	mov ecx, nogreater
	mov edx, nogreaterLen
	exit9:
	mov ebx, 1
	mov eax, 4
	int 80h

	; jg >
	mov eax, 5
	cmp eax, 4
	jg greater2
	mov ecx, less
	mov edx, lessLen
	jmp exit10
	greater2:
	mov ecx, greater
	mov edx, greaterLen
	exit10:
	mov ebx, 1
	mov eax, 4
	int 80h

	; jl <
	mov eax, 5
	cmp eax, 6
	jl less2
	mov ecx, greater
	mov edx, greaterLen
	jmp exit11
	less2:
	mov ecx, less
	mov edx, lessLen
	exit11:
	mov ebx, 1
	mov eax, 4
	int 80h

	mov eax, 1
	int 80h
