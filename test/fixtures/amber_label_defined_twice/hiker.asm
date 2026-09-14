global answer

; The learner started a second attempt underneath the first and gave it the
; same label. An assembler has one name-space per file and no way to choose
; between two definitions of it, so nothing is built.

section .text
answer:
    mov eax, 6
    mov ebx, 9
    imul ebx
    ret

answer:
    mov eax, 42
    ret
