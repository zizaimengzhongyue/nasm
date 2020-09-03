SECTION .text
    global _main ;_main 是程序入口

_main:
    mov eax, '3' ;将 3 写入 eax 寄存器，4 写入 ebx 寄存器
	sub eax, '0'
	mov ebx, '4'
	sub ebx, '0'
	add eax, ebx ; 计算 eax 和 ebx 的和，并将结果写入 sum 变量
	add eax, '0'
	mov [sum], eax

;系统调用 sys_write，该系统调用有三个参数，分别是输出长度，输出内容和输出格式
	mov edx, 1 ; 输出长度为 1，写入 edx 寄存器
	mov ecx, sum ; 输出内容为 sum，写入 ecx 寄存器
	mov ebx, 1 ; 输出格式为 stdout，写入 ebx 寄存器
	mov eax, 4 ; 系统调用为4，代表 write，系统调用定义在 /usr/include/asm-i386/unistd.h 文件中
	int 80h ; 系统中断
	
	mov eax, 1 ; 系统调用为 1，代表 exit，参考 /usr/include/asm-i386/unistd.h
	int 80h ; 中断

SECTION .bss
	sum resb 1 ; 声明 resb 变量，预留 1 个字节的空间
