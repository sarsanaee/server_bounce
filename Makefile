CC = gcc
CFLAGS = -O3 -g -Wall -Wno-unused-result
OBJ = main.o log.o
OUTPUT = server

.PHONY: clean

default: $(OBJ)
	$(CC) -o $(OUTPUT) $(OBJ)

clean:
	rm $(OBJ) $(OUTPUT)

$(OBJ): %.o: %.c
	echo $< --> $@
	$(CC) $(CFLAGS) -o $@ -c $<


