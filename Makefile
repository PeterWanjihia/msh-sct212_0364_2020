CC = gcc
CFLAGS = -std=c11 -Wall -Wextra -Werror -g
CPPFLAGS = -D_POSIX_C_SOURCE=200809L

TARGET = msh
SRC = src/main.c

.PHONY: all run clean

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CPPFLAGS) $(CFLAGS) $(SRC) -o $(TARGET)

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(TARGET)