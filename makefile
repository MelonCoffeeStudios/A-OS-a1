CC=gcc 
CFLAGS=-Wall

# all: mywc.c
mywc: mywc.o
mywc.o: mywc.c

clean:
	rm -f mywc mywc.o
run: mywc
	./mywc