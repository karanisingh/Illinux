; print the hex value using BIOS
; di contains hex value to print

print_hex16:
    pusha
    mov bx, 5           ; index to place number
    mov si, HEX_OUT     ; put the string tempalte in si

h_loop:
    cmp bx, 1           ; see if we have gotten every val
    je h_end        
    mov ax, 0xf         ; extract the right most hex value
    and ax, di          ; ax now holds the hex value    eg. 0xF & 0x1234 = 0x4
    cmp ax, 0x9          ; now figure out if it is a letter or number
    jg letter
number:
    add ax, 48        ; if number, add 0x30 to get the correct ASCII value
    jmp iter
letter:
    add ax, 87        ; if letter, add 0x61 to get the correct ASCII value
iter:
    mov [si + bx], al
    shr di, 4           ; get the next digit
    dec bx  
    jmp h_loop

h_end:
    mov di, HEX_OUT     ; load string and call print function to print it
    call print_string16
    popa
    ret

