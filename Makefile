CC := gcc

SRCS := $(wildcard src/*.c)
OBJS := $(SRCS:.c=.o)

CFLAGS := -Wall -Wextra -Werror -Wpedantic -std=c99 -g
LDFLAGS := -lm

TARGET := bin/$(shell basename $(CURDIR))

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^

clean:
	$(RM) $(OBJS) $(TARGET)