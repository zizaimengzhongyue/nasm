# 编译

```nasm
nasm -f elf hello.s
ld -m elf_i386 hello.o -o hello
```

# 增加 debug 信息
```nasm
nasm -f elf -g hello.s
ld -m elf_i386 -o a.out hello.o
gdb a.out
```
