OBJS = rubysh.o
CC = gcc
DEBUG = -g
CFLAGS = -c $(DEBUG)

shell : $(OBJS)
	$(CC) $(OBJS) -o shell

Execute.o : minish.c
	$(CC) $(CFLAGS) rubysh.c -o rubysh.o

clean:
	-rm -f *.o shell

