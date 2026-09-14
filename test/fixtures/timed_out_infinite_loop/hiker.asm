global answer

; The learner meant to count up to 42 but never changes ecx, so the compare
; never holds and the loop never ends. An assembler writes down exactly what
; it is given, so there is no optimiser here to fold the loop away.

section .text
answer:
    xor ecx, ecx
.count:
    cmp ecx, 42
    jne .count
    mov eax, ecx
    ret
