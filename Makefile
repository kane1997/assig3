all: elf32

target: elf32
elf32: savegame.c
	gcc -O0 -fno-builtin -fno-stack-protector -m32 -Wall -std=c11 -ggdb -z execstack -o savegame.out savegame.c

target: clean
clean: savegame.out
	rm savegame.out

