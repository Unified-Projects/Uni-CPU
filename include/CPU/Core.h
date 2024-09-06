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
#define CPU_STATUS_OVERFLOW 1<<3

#define STUB_FUNC {return 0;}

namespace UniCPUEmulator
{
    class Bus;

    struct CompleteRegisterStack{
        uint64_t r0, r1, r2, r3, r4, r5, r6 = 0; // General Purpose
        uint64_t rax, rbx, rcx, rdx, rsi, rdi = 0; // (Ret), (Argument Registers)
        uint64_t rsp, rip = 0; // Stack and Instruction pointers
        uint64_t status, err, interrupt = 0; // Flags

        uint64_t page = 0; // Page Table Address
        uint64_t conf = 0; // Settings

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
        uint64_t JMP();
        uint64_t JC();
        uint64_t CALL();
        uint64_t RET();

        // Memory Interactions
        uint64_t MOV();
        uint64_t PUSH();
        uint64_t POP();

        // Arithmetic
        uint64_t ADD();
        uint64_t SUB();
        uint64_t MUL();
        uint64_t DIV();

        uint64_t LSR();
        uint64_t LSL();

        uint64_t AND();
        uint64_t NOT();
        uint64_t OR();
        uint64_t XOR();

        // Comparisons
        uint64_t CMP();

    public: // Addressing Modes
        uint64_t REG() {return 0;}; // Register
        uint64_t DIR() {return 1;}; // Address
        uint64_t IMM() {return 0;}; // Immediate
        uint64_t RDI() {return 1;}; // Register as address
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

        uint16_t Opcode;
        Instruction CurOP = {};

    };
} // namespace UniCPUEmulation
