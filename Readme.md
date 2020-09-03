# 编译

从汇编编译
```nasm
nams -f elf hello.s
ld -m elf_i386 hello.o -o hello
```

从 C 编译
```gcc
gcc -m32 -S hello.c
gcc -o hello hello.o
```
