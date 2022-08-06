; Hold function to print a string whose location is specified by 
; 16-bit function used for 16-bit real mode

print_string16:
    pusha               ; push registers onto the stack
    mov ah, 0x0e        ; enter TTY Mode 
    xor bx, bx  

s_loop:
    mov al, byte [bx + di]   ; extract char and check if end
    cmp al, 0
    je s_end
    int 0x10            ; call interrupt to write
    inc bx
    jmp s_loop

s_end:
    popa                ; restore registers
    ret
    
