global answer
global checksum

section .text
answer:
    mov eax, 6
    mov ebx, 9
    imul ebx
    ret

; The learner has not worked out where the table of checksums lives yet, so
; rcx is still zero and the load reads from an address the process does not
; own. That kills the test program.
checksum:
    xor rcx, rcx
    mov eax, [rcx]
    ret
