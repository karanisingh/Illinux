# Makefile

AS = nasm
ASBIN = -f bin

boot: myboot.bin
	qemu-system-x86_64 myboot.bin

myboot.bin:
	$(AS) $(ASBIN) boot_creator.asm -o myboot.bin

.PHONY: boot clean

clean:
	rm myboot.bin
