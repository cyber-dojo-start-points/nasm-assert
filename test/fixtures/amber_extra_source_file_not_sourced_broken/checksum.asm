global checksum

; Nothing declares this extern and nothing calls it, but the makefile
; assembles every .asm file in this directory, so a half written one is seen
; rather than sitting there unnoticed.

section .text
checksum:
    mov eax, [7
    ret
