#pragma once

#include <string>
#include <map>
#include <stdint.h>

// CPU Config Masks
#define CPU_CONFIG_ACTIVE 1<<0
#define CPU_CONFIG_PAGING 1<<1
#define CPU_CONFIG_INTERRUPTS 1<<2

// Status Masks
#define CPU_STATUS_ZERO 1<<0
#define CPU_STATUS_Interrupt 1<<1
#define CPU_STATUS_CMP 1<<2

#define STUB_FUNC {return 0;}

namespace UniCPUEmulator
{
    class Bus;

    struct CompleteRegisterStack{
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

        int cycles = 0;

        Bus* bus;

    public:
        Core();

    public:
        void clock();

        uint64_t read(uint64_t addr, bool bReadOnly = false);
        void write(uint64_t addr, uint64_t data);

        inline void LoadBus(Bus* n){
            bus = n;
        }

    public: // Debug
        inline CompleteRegisterStack GetCurrentRegisterStack() {return Regs;}

    public: // Instructions
        // General Purpose
        uint64_t HALT();

        // Memory Interactions
        uint64_t MOV();

        // Arithmetic

        // Comparisons

    public: // Addressing Modes
        uint64_t REG()STUB_FUNC; // Register
        uint64_t DIR()STUB_FUNC; // Address
        uint64_t IMM()STUB_FUNC; // Immediate
        uint64_t RDI()STUB_FUNC; // Register as address
        uint64_t XXX()STUB_FUNC; // None

    protected:
        struct Instruction{
            std::string Name = "XXX";
            uint64_t(Core::*InstructionFunction)(void) = nullptr;
            uint64_t(Core::*AddressingMode1)(void) = nullptr;
            uint64_t(Core::*AddressingMode2)(void) = nullptr;
            int CycleCount = 0;
        };

        std::map<uint16_t, Instruction> LookupTable;

        Instruction CurOP = {};

    };
} // namespace UniCPUEmulation
