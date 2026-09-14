global answer

; The learner has not worked out where the table of answers lives yet, so
; rcx is still zero and the load reads from an address the process does not
; own. That kills the test program.

section .text
answer:
    xor rcx, rcx
    mov eax, [rcx]
    ret
