global answer

; The learner is watching when this gets called, and has not taken the
; write out yet. File descriptor 2 is stderr, which is where a failing
; assert() writes too.

section .rodata
trace:      db "answer was called", 10
trace_len:  equ $ - trace

section .text
answer:
    mov rax, 1
    mov rdi, 2
    lea rsi, [rel trace]
    mov rdx, trace_len
    syscall
    mov eax, 6
    mov ebx, 7
    imul ebx
    ret
