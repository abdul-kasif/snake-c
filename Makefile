CC = gcc
CFLAGS = -std=gnu11 -Wall -Wextra -O2
SRCS = main.c snake.c terminal.c
TARGET = snake

$(TARGET): $(SRCS)
	$(CC) $(CFLAGS) -o $@ $^

clean:
	rm -f $(TARGET)

.PHONY: clean
