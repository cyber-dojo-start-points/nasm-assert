global answer
extern checksum

section .text
answer:
    call checksum
    mov ebx, eax
    mov eax, 6
    imul ebx
    ret
