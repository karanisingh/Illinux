# Makefile

AS = nasm
ASBIN = -f bin

boot: boot_sector.bin
	qemu-system-x86_64 boot_sector.bin

boot_sector.bin:
	$(AS) $(ASBIN) boot_creator.asm -o boot_sector.bin

.PHONY: boot clean

clean:
	rm boot_sector.bin
