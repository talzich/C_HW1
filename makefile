
prog1: main.o
	gcc main.o -o prog1
main.o: main.c power.c myMath.h
	gcc -c main.c	
