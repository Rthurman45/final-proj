#include "do_reg_print.h"

void do_reg_print(long int* reg_value) {
    char const* regname[] = {"rax", "rbx", "rcx", "rdx",
    "rsi", "rdi", "rbp", "rsp",
    "r8",  "r9",  "r10", "r11",
    "r12", "r13", "r14", "r15"};

    /* print each register's contents in this format: <register name>, <register value>, <register value (hex)>*/
    for (int i = 0; i < 16; ++i) {
        printf("%s\t%ld\t(0x%lx)\n", regname[i], reg_value[i], reg_value[i]);
    }
}