# First Assembly Programs

## How to build and link?

Build the assembly program with `as` and linked it with `ld`.

    as exit.s -o exit.o
    ld exit.o -o exit
    ./exit

View the result

    echo $?

## Structure of assembly program

### Comment
* The purpose of the code
* An overview of the processing involved
* Anything strange your program does and why it does it.

### Assembler Directives / Pseudo-Operations
Starting with a period `.` isn't directly translated into a machine instruction.
It's an instruction to the assembler itself.

    .section .text

    .global _start


### Instructions and Registers

    movl $1, %eax


General registers

`%eax`

`%ebx`

`%ecx`

`%edi`

`%esi`

Special registers

`%ebp`

`%esp`

`%eip`

`%eflags`


