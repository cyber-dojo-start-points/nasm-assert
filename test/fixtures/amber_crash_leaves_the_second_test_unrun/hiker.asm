global answer
global checksum

; Neither table has been located yet, so both loads read from an address the
; process does not own and either one kills the test program.

section .text
answer:
    xor rcx, rcx
    mov eax, [rcx]
    ret

checksum:
    xor rcx, rcx
    mov eax, [rcx]
    ret
