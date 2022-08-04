# Makefile

AS = nasm
ASBIN = -f bin

boot: boot.bin
	qemu-system-i386 boot.bin

boot.bin: boot.asm
	$(AS) $(ASBIN) boot.asm -o boot.bin

.PHONY: boot clean

clean:
	rm *.bin
