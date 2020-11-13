CFLAGS = -c -Wall

all: prog1

prog1: main.o power.o basicMath.o
	gcc main.o power.o basicMath.o -o prog1

main.o: main.c myMath.h
	gcc $(CFLAGS) main.c

power.o: power.c myMath.h
	gcc $(CFLAGS) power.c

basicMath.o: basicMath.c myMath.h
	gcc $(CFLAGS) basicMath.c

clean:
	rm -rf *o prog1	
