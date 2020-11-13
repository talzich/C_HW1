AR = ar
CFLAGS = -c -Wall

all: maind mains

#dynamic
maind: main.o libmyMath.so
	gcc $(CFLAGS) main.o ./libmyMath.so -o maind

#static
mains: main.o libmymath.a
	gcc $(CFLAGS) main.o libmyMath.a -o mains

#creating dynamic lib .so
libmyMath.so: power.o basicMath.o
	gcc power.o basicMath.o -shared -o libmyMath.so

#creating dynamic lib .a
libmyMath.a: power.o basicMath.o
	$(AR) power.o basicMath.o -rcs libmyMath.a

main.o: main.c myMath.h
	gcc $(CFLAGS) main.c

power.o: power.c myMath.h
	gcc $(CFLAGS) power.c

basicMath.o: basicMath.c myMath.h
	gcc $(CFLAGS) basicMath.c

.PHONY: clean all

clean:
	rm -rf *o prog1	
