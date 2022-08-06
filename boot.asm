; Create boot sector for OS
; Starts in 16-bit Real Mode

[org 0x7c00]                    ; Tell the assembler where this code will be loaded

section .text
global _start
_start:
    mov di, BOOT_MESSAGE        ; print boot message
    call print_string16 
    jmp $                       ; temporary infinite loop

%include "print_string16.asm"  ; include function to print message using BIOS

BOOT_MESSAGE db 'Starting Boot', 0xa, 0


times 510-($-$$) db 0           ; fill in the rest of the boot sector
dw 0xAA55                       ; add magic numbers signifying end of boot sector


