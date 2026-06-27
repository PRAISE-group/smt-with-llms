CC = clang
SOURCES = $(wildcard closed_box_benchmarks.c)
EXECS = $(SOURCES:%.c=%.o)
CFLAGS = -c -Wall -Werror -fPIC -std=gnu2x

all: $(EXECS)

%.o: %.c
	$(CC) $(CFLAGS) $< -o $@
