 #PURPOSE:  Simple program that exit and return a status code to the Linux kernel.
 #

 #INPUT:    No
 #

 #OUTPUT:   Return a status code. This can be viewd by typing
 #          echo $?
 #          afeter running the program
 #

 #VARIABLE:
 #          %eax holds the system call number
 #          %ebx holds the return status
 #

 .section .data

 .section .text

 .global _start # if there is no _start, following warning will happen when call ld.
        #"ld: warning: cannot find entry symbol _start; defaulting to 0000000000400078"

_start:
 movl $1, %eax  # this is the linux kernel command number(system call) for exit a program

 movl $0, %ebx  # this is the status number we will return to the operating system.
                # change this around and it will return different things to 'echo $?'

 int $0x80      # this wake up the kernel to return the exit command
