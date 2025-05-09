CC := m68k-elf-gcc
MAS := ../AS/Linux/asl
LD := m68k-elf-ld

CFLAGS := -O3 --omit-frame-pointer

sonic3k.bin: sonic3k.header.o sonic3k.o sonic3k.data.o sonic3k.variables.o 
	$(LD) $^ -o $@ --oformat binary --script=genesis.ld



%.o: %.S
	$(CC) -c $^ -o $@ -I. -I..

%.o: %.c
	$(CC) -c $^ -o $@ -I. $(CFLAGS)
	$(CC) -S -c $^ -o $@.S -I. $(CFLAGS)

clean:
	rm -rf *.bin *.o

