CC = gcc
CFLAGS = -std=gnu11 -Wall -Wextra -O2
SRCS = main.c snake.c terminal.c food.c
TARGET = bin/snake

$(TARGET): $(SRCS)
	mkdir -p bin
	$(CC) $(CFLAGS) -o $@ $^

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(TARGET)

.PHONY: run clean
