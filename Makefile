# El makefile para construir la libreria de mbash

CC = gcc
CFLAGS = -Wall -Wextra -c 
AR = ar
ARFLAGS = rcs
SRC = src

libmbash.a : mbtype.o parser.o lexer.o eval.o
  $(AR) $(ARFLAGS) libmbash.a mbtype.o parser.o lexer.o eval.o

mbtype.o: $(SRC)/mbtype.c
  $(CC) $(CFLAGS) -o mbtype.o $(SRC)/mbtype.c

parser.o: $(SRC)/parser.c
  $(CC) $(CFLAGS) -o parser.o $(SRC)/parser.c

lexer.o: $(SRC)/lexer.c
  $(CC) $(CFLAGS) -o lexer.o $(SRC)/lexer.c

eval.o: $(SRC)/eval.c
  $(CC) $(CFLAGS) -o eval.o $(SRC)/eval.c


.PHONY: clean

clean: 
  rm -rf *.o
  rm -rf libmbash.a
