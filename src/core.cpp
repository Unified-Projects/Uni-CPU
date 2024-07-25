#include <CPU/Core.h>
#include <Bus.h>

#include <iostream>

using namespace UniCPUEmulator;

Core::Core(){
    // HALT
    // MOV
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

    // 12 Bits for Instruction
    // 4 Bits for Addressing Modes
    // 64 Bits for data

    // 00 REG
    // 01 DIR
    // 10 IMM
    // 11 RDI
    
    LookupTable = {
        // General Purpose
        {(uint16_t)0b0000000000010000, {"HALT", &Core::HALT, &Core::XXX, &Core::XXX, 1}},

        // Memory Interactions
        {0b0000000000100000, {"MOV", &Core::MOV, &Core::REG, &Core::REG, 1}}, {0b0000000000100001, {"MOV", &Core::MOV, &Core::REG, &Core::DIR, 1}}, {0b0000000000100010, {"MOV", &Core::MOV, &Core::REG, &Core::IMM, 1}}, {0b0000000000100011, {"MOV", &Core::MOV, &Core::REG, &Core::RDI, 1}},
        {0b0000000000100100, {"MOV", &Core::MOV, &Core::DIR, &Core::REG, 1}}, {0b0000000000100101, {"MOV", &Core::MOV, &Core::DIR, &Core::DIR, 1}}, {0b0000000000100110, {"MOV", &Core::MOV, &Core::DIR, &Core::IMM, 1}}, {0b0000000000100111, {"MOV", &Core::MOV, &Core::DIR, &Core::RDI, 1}},
        {0b0000000000101000, {"MOV", &Core::MOV, &Core::IMM, &Core::REG, 1}}, {0b0000000000101001, {"MOV", &Core::MOV, &Core::IMM, &Core::DIR, 1}}, {0b0000000000101010, {"MOV", &Core::MOV, &Core::IMM, &Core::IMM, 1}}, {0b0000000000101011, {"MOV", &Core::MOV, &Core::IMM, &Core::RDI, 1}},
        {0b0000000000101100, {"MOV", &Core::MOV, &Core::RDI, &Core::REG, 1}}, {0b0000000000101101, {"MOV", &Core::MOV, &Core::RDI, &Core::DIR, 1}}, {0b0000000000101110, {"MOV", &Core::MOV, &Core::RDI, &Core::IMM, 1}}, {0b0000000000101111, {"MOV", &Core::MOV, &Core::RDI, &Core::RDI, 1}},

        // Arithmetic

        // Comparisons
    };

    cycles == 0;
}

void Core::clock(){
    if(cycles <= 0){
        uint16_t Opcode = static_cast<uint16_t>(read(Regs.rip));
        CurOP = LookupTable[Opcode];
        if(CurOP.InstructionFunction == nullptr){
            // TODO THROW NOOP ERR
            std::cout << "Invalid Opcode: " << std::hex << Opcode << std::dec << std::endl;
            return;
        }

        // Increment Instruction
        Regs.rip+=2; // 2 Byte Instructions

        // Perfom Action
        cycles = CurOP.CycleCount;
        cycles += (this->*(CurOP.AddressingMode1))() & (this->*(CurOP.AddressingMode2))() & (this->*(CurOP.InstructionFunction))();
    }

    cycles--;
}

uint64_t Core::read(uint64_t addr, bool bReadOnly){
    return bus->memRead(addr, bReadOnly);
}

void Core::write(uint64_t addr, uint64_t data){
    bus->memWrite(addr, data);
}

uint64_t Core::MOV(){
    uint64_t In = 0;
    int Cycles = 0;

    uint64_t WriteOperand = read(Regs.rip);
    Regs.rip += 8;
    uint64_t ReadOperand = read(Regs.rip);
    Regs.rip += 8;

    // Get the value
    if(CurOP.AddressingMode2 == &Core::REG){
        // Identify Reg Based on next data
        // TODO + non-64Bit and must be same
    }
    else if(CurOP.AddressingMode2 == &Core::DIR){
        // TODO
    }
    else if(CurOP.AddressingMode2 == &Core::IMM){
        In = ReadOperand;
        cycles+=1;
    }
    else if(CurOP.AddressingMode2 == &Core::RDI){
        // TODO
    }

    // Where does it go
    if(CurOP.AddressingMode1 == &Core::REG){
        // Identify Reg Based on next data
        // TODO + non-64Bit
    }
    else if(CurOP.AddressingMode1 == &Core::DIR){
        write(WriteOperand, In);
        cycles+=2; // Find + Write
    }
    else if(CurOP.AddressingMode1 == &Core::IMM){
        std::cout << "MOV: Attempted to write to a immediate value" << std::endl;
        HALT();
    }
    else if(CurOP.AddressingMode1 == &Core::RDI){
        // TODO
    }

    // Out[0] = In[0];
    return Cycles;
}

uint64_t Core::HALT(){
    if(Regs.status & CPU_STATUS_Interrupt){

    }
    else{
        Regs.rip-=2;
    }
    return 0; // Loop execution
}