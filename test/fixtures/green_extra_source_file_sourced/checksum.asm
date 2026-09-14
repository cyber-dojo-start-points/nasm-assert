global checksum

; The makefile assembles every .asm file in this directory, so this one is
; built and linked without the makefile being touched. hiker.asm names it
; with extern and calls it.

section .text
checksum:
    mov eax, 7
    ret
