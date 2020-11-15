AR = ar
CFLAGS = -Wall -g
CC = gcc

all: maind mains

#dynamic
maind: main.o libmyMath.so
	$(CC) $(CFLAGS) -o maind main.o ./libmyMath.so

#static
mains: main.o libmyMath.a
	$(CC) $(CFLAGS) -o mains main.o libmyMath.a

mymathd: libmyMath.so

mymaths: libmyMath.a

#creating dynamic lib .so
libmyMath.so: power.o basicMath.o
	$(CC) -shared -o libmyMath.so power.o basicMath.o

#creating dynamic lib .a
libmyMath.a: power.o basicMath.o
	$(AR) -rcs libmyMath.a power.o basicMath.o

main.o: main.c myMath.h
	$(CC) $(CFLAGS) -c main.c

power.o: power.c myMath.h
	$(CC) $(CFLAGS) -c power.c

basicMath.o: basicMath.c myMath.h
	$(CC) $(CFLAGS) -c basicMath.c

.PHONY: clean

clean:
	rm -rf *.o maind mains *.a *.so
