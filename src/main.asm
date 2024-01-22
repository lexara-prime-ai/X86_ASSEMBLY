; ASSEMBLE USING <nasm>
; ON WINDOWS: nasm -f win32 main.asm -o main.obj
; ON LINUX: nasm -f elf main.asm -o main.o


; LINK/LOAD
; ON WINDOWS: ld -m i386pe -s -o main.exe main.obj
; ON LINUX: ld -m elf_i386 -o main main.o

; The -m i386pe option specifies the target architecture as 32-bit x86 for Windows.

; i386 i.e intel 386 - specifies that we're targetting 32 bit instructions

; IMPORTANT to include if you're running on a 64 bit machine
; -o -> Refers to the name of the file/obj file

; View EXIT CODE that was set -> echo $?



; Entry file -> main.asm

section .data
; The .data section -> Stores variables in memory

section .text
; The .text section -> Defines code section

; global -> Defines a label i.e The sart of a give code segment
; Export _start label with global
global _start

; Define _start label
_start:
    ; Everything below start will execute, when _start is called
    ; mov -> Moves data from one location, REGISTER, to another
    mov eax, 1
    mov ebx, 1
    int 80h ; run/call 80h system interrupt
    ; eax -> tells the system what we want to do when the system interrupt 80 is called
    ; 1 indicates that we want to run the EXIT sys call, which will end the program 
    ; and set an EXIT STATUS CODE
    ; The STATUS CODE will be equal to whatever is put into ebx -> 1