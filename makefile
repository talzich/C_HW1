prog: prog.o power.o basicMath.o
	gcc prog.o power.o basicMath.o -o prog

prog.o: prog.c myMath.h
	gcc -Wall -c prog.c

power.o: power.c myMath.h
	gcc -Wall -c power.c

basicMath.o: basicMath.c myMath.h
	gcc -Wall -c basicMath.c
