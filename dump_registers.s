#include <stdlib.h>
#include "do_reg_print.h"

.extern _debug_dump_registers
.globl dump_registers
.type dump_registers, @function
dump_registers:
    /* save all register values */
    push %r15
    push %r14
    push %r13
    push %r12
    push %r11
    push %r10
    push %r9
    push %r8

    movq %rsp, %r8          /* Save the current stack pointer in %r8 */
    addq $72, %r8           /* change it to point to where it was before the function was called */
    push %r8

    push %rbp
    push %rdi
    push %rsi
    push %rdx
    push %rcx
    push %rbx
    push %rax
    
    /* stack alignment */
    movq %rsp, %r8
    leaq -8(%rsp), %rsp
    
    movq %r8, %rdi             /* first argument, array pointer */
    call do_reg_print
    movq %r8, %rsp

    leave
    ret




























/*
subq $(16*8), %rsp
movq %rsp, %rdi
call _debug_dump_registers
addq $(16*8), %rsp
ret
*/
