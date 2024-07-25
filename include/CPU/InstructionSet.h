#pragma once

#include <string>
#include <stdint.h>

namespace UniCPUEmulator {    
    typedef uint32_t(*InstFunc)();
    typedef uint32_t(*AddrMode)();

    struct Instruction{
        std::string Name;
        InstFunc InstructionFunction;
        AddrMode AddressingMode;
        int CycleCount = 0;
    };

    // MOV
    // STR
    // LDR
    // ADD
    // MUL
    // DIV
    // SUB
    // POP
    // PUSH
    // INT
    // OR
    // XOR
    // AND
    // NOT
    // JMP
    // CALL
    // RET
    // JC
    // CMP (3 Flags, 2 vals and 1 typedef)
    // LSR
    // LSL

    // 6 Bits for Instruction
    // 2 Bits for Addressing Mode
    // 64 Bits for data

    Instruction InstructionSet[1];
}