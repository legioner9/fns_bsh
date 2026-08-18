CC = gcc
CC_FLAGS = -w -Werror -Wall

hello.o: main.c  
	gcc -c $(CC_FLAGS) main.c -o hello.o 

utils.o: utils.c
	gcc -c $(CC_FLAGS) utils.c -o utils.o

clear:
	rm -fv *.cxe
	rm -fv *.o

hello.cxe: hello.o utils.o
	gcc $(CC_FLAGS) hello.o utils.o -o hello.cxe

hello_g: main.c 
	gcc -g -o hello_g.cxe main.c 

hello_gdb: hello_g.cxe
	gdb -tui hello_g.cxe