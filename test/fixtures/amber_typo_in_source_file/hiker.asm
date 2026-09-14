global answer

section .text
answer:
    mvo eax, 6
    mov ebx, 7
    imul ebx
    ret
