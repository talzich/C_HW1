prog: prog.o
	gcc -o prog prog.o

prog.o: prog.c power.o basicMath.o
	gcc -c prog.c

power.o: power.c myMath.h
	gcc -c power.c

basicMath.o: basicMath.c myMath.h
	gcc -c basicMath.c
