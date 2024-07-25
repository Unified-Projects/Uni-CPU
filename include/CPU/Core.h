#pragma once

#include <stdint.h>

// CPU Config Masks
#define CPU_CONFIG_ACTIVE 1<<0

// Status Masks
#define CPU_STATUS_ZERO 1<<0

namespace UniCPUEmulator
{
    class CompleteRegisterStack{
        uint64_t r0, r1, r2, r3, r4, r5, r6 = 0; // General Purpose
        uint64_t rax, rbx, rcx, rdx, rsi, rdi = 0; // (Ret), (Argument Registers)
        uint64_t rsp, rip; // Stack and Instruction pointers
        uint64_t status, err, interrupt; // Flags

        uint64_t page; // Page Table Address
        uint64_t conf; // Settings

        // IDT info
        uint64_t IDT_addr = 0;
        uint16_t IDT_size = 0;

        // Who the fuck need a GDT its useless! Lmao
    };

    class Core{
    protected:
        CompleteRegisterStack Regs;

    public:
        void clock();

    public:
        static void MOV(); // TODO ADD OTHERS
    };
} // namespace UniCPUEmulation
