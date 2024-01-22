section .data 

section .text
global _start

_start:
    mov eax, 1
    mov ebx, 1
    int 80h