#########################################################################
# @file build.sh
# @author xxx
# @mail xxx@baidu.com
# @date 2020-12-17 12:40:35
#########################################################################
#!/bin/bash
nasm -f elf $1.s
ld -m elf_i386 -e _main -o a.out $1.o