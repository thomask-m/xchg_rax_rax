```
nasm -f elf64 -g -felf64 00.s -o program.o
ld program.o -o program
gdb ./program
```
