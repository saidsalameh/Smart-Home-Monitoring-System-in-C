# Compiler choice : CC = gcc
CC = gcc

# Choice of flags while compilation : CFLAGS = -Wall
CFLAGS = -g -Wall -pthread

# Source files, all .c files in /src
SRC = ./src/*.c

# Object files: same name as .c but placed in ./bin/
OBJ = $(patsubst ./src/%.c, ./bin/%.o, $(wildcard ./src/*.c))

# Define the name of the final executable
TARGET = smart_home.out

# Default rule
all: $(TARGET)

# Link object files into final executable
$(TARGET): $(OBJ)
	$(CC) $(OBJ) -o $(TARGET) -pthread

# Pattern rule to compile .c → .o
./bin/%.o: ./src/%.c
	$(CC) $(CFLAGS) -c $< -o $@

# Phony clean rule
.PHONY: clean

clean:
	rm -rf ./bin/*.o $(TARGET)
