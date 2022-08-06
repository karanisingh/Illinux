# Makefile

AS = nasm
ASBIN = -f bin

boot: boot.bin
	qemu-system-x86_64 boot.bin

boot.bin: boot.asm
	$(AS) $(ASBIN) boot.asm -o boot.bin

.PHONY: boot clean

clean:
	rm *.bin
