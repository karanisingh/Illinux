; this function will take advantage of BIOS to load memory
; does not account for if BIOS fails, caller should check through CF and al
; al will contain how many sectors were actually read

; di        what drive to read from             0 based
; si        what cylinder to read from          
; dx        select track to read from           0 based
; cx        select sector to read from          1 based
; r8w       how many sectors to read            1 based
; r9w       segment to place mem
; stack     offset to place mem                 

load_memory:
    pusha                       ; store callee saved registers

    mov ah, 0x2                 ; BIOS read sector function
    mov dh, dl                  ; select track
    mov dl, dil                 ; select drive
    mov ch, sil                 ; select cylinder
    mov al, r8w                 ; select amount of sectors
    mov es, r9w                 ; set segment
    pop bx                      ; set offset
    
    int 0x13                    ; cause interrupt


    jc disk_error               ; check if failed
    cmp al, r8w
    jne disk_error

    popa                        ; restore callee saved registers
    ret

disk_error:
    mov bx, DISK_ERROR_MSG
    call print_string
    jmp $
