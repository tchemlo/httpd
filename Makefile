CC = gcc
CFLAGS = -std=c99 -pedantic -Wall -Wextra -Werror
EXEC = httpd

all: $(EXEC)

httpd: httpd.o main.o
	$(CC) -o hello hello.o main.o $(LDFLAGS)

httpd.o: httpd.c
	$(CC) -o hello.o -c hello.c $(CFLAGS)

httpd.o: httpd.c httpd.h
	$(CC) -o main.o -c main.c $(CFLAGS)

clean:
	rm -rf *.o
