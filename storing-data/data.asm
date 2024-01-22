; NOTE -> section .data is NOT part of the STACK. it's a part of the <data segment> in virtual memory that is initialized data.The STACK is in the stack segment
section .data
    ; Pre-requisites -> <name> of the data, <type/size> of the data and an <initial> value
    num DB 5    ; This declares some memory that exists on the STACK with a value of 5 and 32 BITS allocated to it
                ; The value <num> stores the address of the data for the variable i.e the location on the stack where the value is tored  
                ; The value in this location can be previewed with gbd by running the following instruction -> x/x $ebx   
                ; Otherwise, [num] - square bracket notation can be used to access the value - This retrieves the value from the address and moves it into the REGISTER instead

    ;----------- REFERENCE ---------------
    ; DB -> Stands for Define Byte - 1 byte in size i.e 8 BITS
    ; DW -> Stands for Declare Word - 2 bytes in size i.e 16 BITS
    ; DD -> Stands for Double Word - 4 bytes in size i.e 32 BITS
    ; DQ -> 8 bytes in size i.e 64 BITS
    ; DT -> 10 bytes in size i.e 80 BITS

section .text 
global _start

_start:
    mov eax, 1
    mov ebx, num
    int 80h
