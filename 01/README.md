```
# the -g -f elf64 configures debug symbols
nasm -g -f elf64 01.s -o program.o
ld program.o -o program
gdb ./program
```
