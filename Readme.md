# 编译

从汇编编译
```nasm
as -o hello.o hello.s
gcc -o hello hello.o
```

从 C 编译
```gcc
gcc -m32 -S hello.c
gcc -o hello hello.o
```
