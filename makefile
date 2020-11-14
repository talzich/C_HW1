AR = ar
CFLAGS = -c -Wall
CC = gcc

all: maind mains

#dynamic
maind: main.o libmyMath.so
	$(CC) $(CFLAGS) $< ./libmyMath.so -o maind

#static
mains: main.o libmyMath.a
	$(CC) $(CFLAGS) $? -o $@

#creating dynamic lib .so
libmyMath.so: power.o basicMath.o
	$(CC) $? -shared -o $@

#creating dynamic lib .a
libmyMath.a: power.o basicMath.o
	$(AR) $? -rcs libmyMath.a

main.o: main.c myMath.h
	$(CC) $(CFLAGS) $< -o $@

power.o: power.c myMath.h
	$(CC) $(CFLAGS) $< -o $@

basicMath.o: basicMath.c myMath.h
	$(CC) $(CFLAGS) $< -o $@

.PHONY: clean all

clean:
	rm -rf *o main
