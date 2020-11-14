AR = ar
CFLAGS = -c -Wall
CC = gcc

all: maind mains

#dynamic
maind: main.o libmyMath.so
	$(CC) $(CFLAGS) main.o ./libmyMath.so -o maind

#static
mains: main.o libmyMath.a
	$(CC) $(CFLAGS) main.o libmyMath.a -o mains

#creating dynamic lib .so
libmyMath.so: power.o basicMath.o
	$(CC) power.o basicMath.o -shared -o libmyMath.so

#creating dynamic lib .a
libmyMath.a: power.o basicMath.o
	$(AR) power.o basicMath.o -rcs libmyMath.a

main.o: main.c myMath.h
	$(CC) $(CFLAGS) main.c

power.o: power.c myMath.h
	$(CC) $(CFLAGS) power.c

basicMath.o: basicMath.c myMath.h
	$(CC) $(CFLAGS) basicMath.c

.PHONY: clean all

clean:
	rm -rf *o prog1
