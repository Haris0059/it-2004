all: main

main: main.c
	gcc -Wall -g -o main main.c

valgrind:
	valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes  ./main 5

run:
	./main
