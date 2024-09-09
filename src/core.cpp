#include <CPU/Core.h>
#include <Bus.h>

#include <iostream>

using namespace UniCPUEmulator;

#define OpCodeMASK 0b1111111111001111

#define REG_MODE_XXX 0b00
#define REG_MODE_REG 0b00
#define REG_MODE_DIR 0b01
#define REG_MODE_IMM 0b10
#define REG_MODE_RDI 0b11

// KEY
// [X] / [Y] = Some form of data
// B = Bit-Format (q, d, w, b)
// T = Type 0-127
// R = A Valid Register 

#define INSTRUCTION_HALT    0b0000000001 // HALT
#define INSTRUCTION_MOV     0b0000000010 // MOV B [X], [Y]
#define INSTRUCTION_JMP     0b0000000011 // JMP [X]
#define INSTRUCTION_ADD     0b0000000100 // ADD B R, [X], [Y]
#define INSTRUCTION_PUSH    0b0000000101 // PUSH R
#define INSTRUCTION_POP     0b0000000110 // POP R
#define INSTRUCTION_CMP     0b0000000111 // CMP T, [X], [Y] 
#define INSTRUCTION_JC      0b0000001000 // JC [X]

#define INSTRUCTION_RET     0b0000001001 // RET
#define INSTRUCTION_INT     0b0000001010 // INT [X]
#define INSTRUCTION_CALL    0b0000001011 // CALL [X]

#define INSTRUCTION_MUL     0b0000001100 // MUL B R, [X], [Y]
#define INSTRUCTION_DIV     0b0000001101 // DIV B R, [X], [Y]
#define INSTRUCTION_SUB     0b0000001110 // SUB B R, [X], [Y]
#define INSTRUCTION_LSR     0b0000001111 // LSR B R, [X], [Y]
#define INSTRUCTION_LSL     0b0000010000 // LSL B R, [X], [Y]
#define INSTRUCTION_AND     0b0000010001 // AND B R, [X], [Y]
#define INSTRUCTION_NOT     0b0000010010 // NOT B R, [X], [Y]
#define INSTRUCTION_OR      0b0000010011 // OR B R, [X], [Y]
#define INSTRUCTION_XOR     0b0000010100 // XOR B R, [X], [Y]


// NOT NOTED YET
#define INSTRUCTION_INCR     0b0000010101 // INCR R, [X]
#define INSTRUCTION_DECR     0b0000010110 // DECR R, [X]
#define INSTRUCTION_INC     0b0000010111 // INCR R
#define INSTRUCTION_DEC     0b0000011000 // DECR R

#define INSTRUCTION_IOW     0b0000011001 // IOW T, [X], [Y] (IO Device) (Address) (Data)
#define INSTRUCTION_IOR     0b0000011010 // IOR R, T, [Y] (Register) (IO Device) (Address)

#define CMP_EQU 0
#define CMP_NEQ 1
#define CMP_LEQ 2
#define CMP_GEQ 3

#define GenCode(inst, addr1, addr2) ((inst << 6) + (addr1 << 2) + addr2)

Core::Core(){
    // HALT *
    // MOV *
    // ADD *
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
    // JMP *
    // CALL
    // RET
    // JC
    // CMP (3 Flags, 2 vals and 1 typedef)
    // LSR
    // LSL

    // 10 bits for instruction
    // 2 bits for Bitnumber (64, 32, 16, 8)
    // 4 Bits for both addressing modes
    // Data variable in size (Both because of bitnumber and actual size needed) 

    // 00 REG
    // 01 DIR
    // 10 IMM
    // 11 RDI

    // 00 64-Bit
    // 01 32-Bit // TODO
    // 10 16-Bit // TODO
    // 11 8-Bit // TODO

    // TODO Convert all uints to ints so negatives will work correctly
    
    LookupTable = {
        // General Purpose
        {GenCode(INSTRUCTION_HALT, REG_MODE_XXX, REG_MODE_XXX), {"HALT", &Core::HALT, &Core::XXX, &Core::XXX, 1}},
        {GenCode(INSTRUCTION_JMP, REG_MODE_REG, REG_MODE_XXX), {"JMP", &Core::JMP, &Core::REG, &Core::XXX, 1}}, {GenCode(INSTRUCTION_JMP, REG_MODE_DIR, REG_MODE_XXX), {"JMP", &Core::JMP, &Core::DIR, &Core::XXX, 1}}, {GenCode(INSTRUCTION_JMP, REG_MODE_IMM, REG_MODE_XXX), {"JMP", &Core::JMP, &Core::IMM, &Core::XXX, 1}}, {GenCode(INSTRUCTION_JMP, REG_MODE_RDI, REG_MODE_XXX), {"JMP", &Core::JMP, &Core::RDI, &Core::XXX, 1}},
        {GenCode(INSTRUCTION_JC, REG_MODE_REG, REG_MODE_XXX), {"JC", &Core::JC, &Core::REG, &Core::XXX, 1}}, {GenCode(INSTRUCTION_JC, REG_MODE_DIR, REG_MODE_XXX), {"JC", &Core::JC, &Core::DIR, &Core::XXX, 1}}, {GenCode(INSTRUCTION_JC, REG_MODE_IMM, REG_MODE_XXX), {"JC", &Core::JC, &Core::IMM, &Core::XXX, 1}}, {GenCode(INSTRUCTION_JC, REG_MODE_RDI, REG_MODE_XXX), {"JC", &Core::JC, &Core::RDI, &Core::XXX, 1}},
        
        {GenCode(INSTRUCTION_CALL, REG_MODE_REG, REG_MODE_XXX), {"CALL", &Core::CALL, &Core::REG, &Core::XXX, 1}}, {GenCode(INSTRUCTION_CALL, REG_MODE_DIR, REG_MODE_XXX), {"CALL", &Core::CALL, &Core::DIR, &Core::XXX, 1}}, {GenCode(INSTRUCTION_CALL, REG_MODE_IMM, REG_MODE_XXX), {"CALL", &Core::CALL, &Core::IMM, &Core::XXX, 1}}, {GenCode(INSTRUCTION_CALL, REG_MODE_RDI, REG_MODE_XXX), {"CALL", &Core::CALL, &Core::RDI, &Core::XXX, 1}},
        {GenCode(INSTRUCTION_RET, REG_MODE_XXX, REG_MODE_XXX), {"RET", &Core::RET, &Core::XXX, &Core::XXX, 1}},

        // Memory Interactions
        {GenCode(INSTRUCTION_MOV, REG_MODE_REG, REG_MODE_REG), {"MOV", &Core::MOV, &Core::REG, &Core::REG, 1}}, {GenCode(INSTRUCTION_MOV, REG_MODE_REG, REG_MODE_DIR), {"MOV", &Core::MOV, &Core::REG, &Core::DIR, 1}}, {GenCode(INSTRUCTION_MOV, REG_MODE_REG, REG_MODE_IMM), {"MOV", &Core::MOV, &Core::REG, &Core::IMM, 1}}, {GenCode(INSTRUCTION_MOV, REG_MODE_REG, REG_MODE_RDI), {"MOV", &Core::MOV, &Core::REG, &Core::RDI, 1}},
        {GenCode(INSTRUCTION_MOV, REG_MODE_DIR, REG_MODE_REG), {"MOV", &Core::MOV, &Core::DIR, &Core::REG, 1}}, {GenCode(INSTRUCTION_MOV, REG_MODE_DIR, REG_MODE_DIR), {"MOV", &Core::MOV, &Core::DIR, &Core::DIR, 1}}, {GenCode(INSTRUCTION_MOV, REG_MODE_DIR, REG_MODE_IMM), {"MOV", &Core::MOV, &Core::DIR, &Core::IMM, 1}}, {GenCode(INSTRUCTION_MOV, REG_MODE_DIR, REG_MODE_RDI), {"MOV", &Core::MOV, &Core::DIR, &Core::RDI, 1}},
        {GenCode(INSTRUCTION_MOV, REG_MODE_IMM, REG_MODE_REG), {"MOV", &Core::MOV, &Core::IMM, &Core::REG, 1}}, {GenCode(INSTRUCTION_MOV, REG_MODE_IMM, REG_MODE_DIR), {"MOV", &Core::MOV, &Core::IMM, &Core::DIR, 1}}, {GenCode(INSTRUCTION_MOV, REG_MODE_IMM, REG_MODE_IMM), {"MOV", &Core::MOV, &Core::IMM, &Core::IMM, 1}}, {GenCode(INSTRUCTION_MOV, REG_MODE_IMM, REG_MODE_RDI), {"MOV", &Core::MOV, &Core::IMM, &Core::RDI, 1}},
        {GenCode(INSTRUCTION_MOV, REG_MODE_RDI, REG_MODE_REG), {"MOV", &Core::MOV, &Core::RDI, &Core::REG, 1}}, {GenCode(INSTRUCTION_MOV, REG_MODE_RDI, REG_MODE_DIR), {"MOV", &Core::MOV, &Core::RDI, &Core::DIR, 1}}, {GenCode(INSTRUCTION_MOV, REG_MODE_RDI, REG_MODE_IMM), {"MOV", &Core::MOV, &Core::RDI, &Core::IMM, 1}}, {GenCode(INSTRUCTION_MOV, REG_MODE_RDI, REG_MODE_RDI), {"MOV", &Core::MOV, &Core::RDI, &Core::RDI, 1}},

        {GenCode(INSTRUCTION_PUSH, REG_MODE_REG, REG_MODE_XXX), {"PUSH", &Core::PUSH, &Core::REG, &Core::XXX, 1}}, {GenCode(INSTRUCTION_POP, REG_MODE_REG, REG_MODE_XXX), {"POP", &Core::POP, &Core::REG, &Core::XXX, 1}},

        // Arithmetic
        {GenCode(INSTRUCTION_ADD, REG_MODE_REG, REG_MODE_REG), {"ADD", &Core::ADD, &Core::REG, &Core::REG, 1}}, {GenCode(INSTRUCTION_ADD, REG_MODE_REG, REG_MODE_DIR), {"ADD", &Core::ADD, &Core::REG, &Core::DIR, 1}}, {GenCode(INSTRUCTION_ADD, REG_MODE_REG, REG_MODE_IMM), {"ADD", &Core::ADD, &Core::REG, &Core::IMM, 1}}, {GenCode(INSTRUCTION_ADD, REG_MODE_REG, REG_MODE_RDI), {"ADD", &Core::ADD, &Core::REG, &Core::RDI, 1}},
        {GenCode(INSTRUCTION_ADD, REG_MODE_DIR, REG_MODE_REG), {"ADD", &Core::ADD, &Core::DIR, &Core::REG, 1}}, {GenCode(INSTRUCTION_ADD, REG_MODE_DIR, REG_MODE_DIR), {"ADD", &Core::ADD, &Core::DIR, &Core::DIR, 1}}, {GenCode(INSTRUCTION_ADD, REG_MODE_DIR, REG_MODE_IMM), {"ADD", &Core::ADD, &Core::DIR, &Core::IMM, 1}}, {GenCode(INSTRUCTION_ADD, REG_MODE_DIR, REG_MODE_RDI), {"ADD", &Core::ADD, &Core::DIR, &Core::RDI, 1}},
        {GenCode(INSTRUCTION_ADD, REG_MODE_IMM, REG_MODE_REG), {"ADD", &Core::ADD, &Core::IMM, &Core::REG, 1}}, {GenCode(INSTRUCTION_ADD, REG_MODE_IMM, REG_MODE_DIR), {"ADD", &Core::ADD, &Core::IMM, &Core::DIR, 1}}, {GenCode(INSTRUCTION_ADD, REG_MODE_IMM, REG_MODE_IMM), {"ADD", &Core::ADD, &Core::IMM, &Core::IMM, 1}}, {GenCode(INSTRUCTION_ADD, REG_MODE_IMM, REG_MODE_RDI), {"ADD", &Core::ADD, &Core::IMM, &Core::RDI, 1}},
        {GenCode(INSTRUCTION_ADD, REG_MODE_RDI, REG_MODE_REG), {"ADD", &Core::ADD, &Core::RDI, &Core::REG, 1}}, {GenCode(INSTRUCTION_ADD, REG_MODE_RDI, REG_MODE_DIR), {"ADD", &Core::ADD, &Core::RDI, &Core::DIR, 1}}, {GenCode(INSTRUCTION_ADD, REG_MODE_RDI, REG_MODE_IMM), {"ADD", &Core::ADD, &Core::RDI, &Core::IMM, 1}}, {GenCode(INSTRUCTION_ADD, REG_MODE_RDI, REG_MODE_RDI), {"ADD", &Core::ADD, &Core::RDI, &Core::RDI, 1}},
        
        {GenCode(INSTRUCTION_MUL, REG_MODE_REG, REG_MODE_REG), {"MUL", &Core::MUL, &Core::REG, &Core::REG, 1}}, {GenCode(INSTRUCTION_MUL, REG_MODE_REG, REG_MODE_DIR), {"MUL", &Core::MUL, &Core::REG, &Core::DIR, 1}}, {GenCode(INSTRUCTION_MUL, REG_MODE_REG, REG_MODE_IMM), {"MUL", &Core::MUL, &Core::REG, &Core::IMM, 1}}, {GenCode(INSTRUCTION_MUL, REG_MODE_REG, REG_MODE_RDI), {"MUL", &Core::MUL, &Core::REG, &Core::RDI, 1}},
        {GenCode(INSTRUCTION_MUL, REG_MODE_DIR, REG_MODE_REG), {"MUL", &Core::MUL, &Core::DIR, &Core::REG, 1}}, {GenCode(INSTRUCTION_MUL, REG_MODE_DIR, REG_MODE_DIR), {"MUL", &Core::MUL, &Core::DIR, &Core::DIR, 1}}, {GenCode(INSTRUCTION_MUL, REG_MODE_DIR, REG_MODE_IMM), {"MUL", &Core::MUL, &Core::DIR, &Core::IMM, 1}}, {GenCode(INSTRUCTION_MUL, REG_MODE_DIR, REG_MODE_RDI), {"MUL", &Core::MUL, &Core::DIR, &Core::RDI, 1}},
        {GenCode(INSTRUCTION_MUL, REG_MODE_IMM, REG_MODE_REG), {"MUL", &Core::MUL, &Core::IMM, &Core::REG, 1}}, {GenCode(INSTRUCTION_MUL, REG_MODE_IMM, REG_MODE_DIR), {"MUL", &Core::MUL, &Core::IMM, &Core::DIR, 1}}, {GenCode(INSTRUCTION_MUL, REG_MODE_IMM, REG_MODE_IMM), {"MUL", &Core::MUL, &Core::IMM, &Core::IMM, 1}}, {GenCode(INSTRUCTION_MUL, REG_MODE_IMM, REG_MODE_RDI), {"MUL", &Core::MUL, &Core::IMM, &Core::RDI, 1}},
        {GenCode(INSTRUCTION_MUL, REG_MODE_RDI, REG_MODE_REG), {"MUL", &Core::MUL, &Core::RDI, &Core::REG, 1}}, {GenCode(INSTRUCTION_MUL, REG_MODE_RDI, REG_MODE_DIR), {"MUL", &Core::MUL, &Core::RDI, &Core::DIR, 1}}, {GenCode(INSTRUCTION_MUL, REG_MODE_RDI, REG_MODE_IMM), {"MUL", &Core::MUL, &Core::RDI, &Core::IMM, 1}}, {GenCode(INSTRUCTION_MUL, REG_MODE_RDI, REG_MODE_RDI), {"MUL", &Core::MUL, &Core::RDI, &Core::RDI, 1}},

        {GenCode(INSTRUCTION_SUB, REG_MODE_REG, REG_MODE_REG), {"SUB", &Core::SUB, &Core::REG, &Core::REG, 1}}, {GenCode(INSTRUCTION_SUB, REG_MODE_REG, REG_MODE_DIR), {"SUB", &Core::SUB, &Core::REG, &Core::DIR, 1}}, {GenCode(INSTRUCTION_SUB, REG_MODE_REG, REG_MODE_IMM), {"SUB", &Core::SUB, &Core::REG, &Core::IMM, 1}}, {GenCode(INSTRUCTION_SUB, REG_MODE_REG, REG_MODE_RDI), {"SUB", &Core::SUB, &Core::REG, &Core::RDI, 1}},
        {GenCode(INSTRUCTION_SUB, REG_MODE_DIR, REG_MODE_REG), {"SUB", &Core::SUB, &Core::DIR, &Core::REG, 1}}, {GenCode(INSTRUCTION_SUB, REG_MODE_DIR, REG_MODE_DIR), {"SUB", &Core::SUB, &Core::DIR, &Core::DIR, 1}}, {GenCode(INSTRUCTION_SUB, REG_MODE_DIR, REG_MODE_IMM), {"SUB", &Core::SUB, &Core::DIR, &Core::IMM, 1}}, {GenCode(INSTRUCTION_SUB, REG_MODE_DIR, REG_MODE_RDI), {"SUB", &Core::SUB, &Core::DIR, &Core::RDI, 1}},
        {GenCode(INSTRUCTION_SUB, REG_MODE_IMM, REG_MODE_REG), {"SUB", &Core::SUB, &Core::IMM, &Core::REG, 1}}, {GenCode(INSTRUCTION_SUB, REG_MODE_IMM, REG_MODE_DIR), {"SUB", &Core::SUB, &Core::IMM, &Core::DIR, 1}}, {GenCode(INSTRUCTION_SUB, REG_MODE_IMM, REG_MODE_IMM), {"SUB", &Core::SUB, &Core::IMM, &Core::IMM, 1}}, {GenCode(INSTRUCTION_SUB, REG_MODE_IMM, REG_MODE_RDI), {"SUB", &Core::SUB, &Core::IMM, &Core::RDI, 1}},
        {GenCode(INSTRUCTION_SUB, REG_MODE_RDI, REG_MODE_REG), {"SUB", &Core::SUB, &Core::RDI, &Core::REG, 1}}, {GenCode(INSTRUCTION_SUB, REG_MODE_RDI, REG_MODE_DIR), {"SUB", &Core::SUB, &Core::RDI, &Core::DIR, 1}}, {GenCode(INSTRUCTION_SUB, REG_MODE_RDI, REG_MODE_IMM), {"SUB", &Core::SUB, &Core::RDI, &Core::IMM, 1}}, {GenCode(INSTRUCTION_SUB, REG_MODE_RDI, REG_MODE_RDI), {"SUB", &Core::SUB, &Core::RDI, &Core::RDI, 1}},

        {GenCode(INSTRUCTION_DIV, REG_MODE_REG, REG_MODE_REG), {"DIV", &Core::DIV, &Core::REG, &Core::REG, 1}}, {GenCode(INSTRUCTION_DIV, REG_MODE_REG, REG_MODE_DIR), {"DIV", &Core::DIV, &Core::REG, &Core::DIR, 1}}, {GenCode(INSTRUCTION_DIV, REG_MODE_REG, REG_MODE_IMM), {"DIV", &Core::DIV, &Core::REG, &Core::IMM, 1}}, {GenCode(INSTRUCTION_DIV, REG_MODE_REG, REG_MODE_RDI), {"DIV", &Core::DIV, &Core::REG, &Core::RDI, 1}},
        {GenCode(INSTRUCTION_DIV, REG_MODE_DIR, REG_MODE_REG), {"DIV", &Core::DIV, &Core::DIR, &Core::REG, 1}}, {GenCode(INSTRUCTION_DIV, REG_MODE_DIR, REG_MODE_DIR), {"DIV", &Core::DIV, &Core::DIR, &Core::DIR, 1}}, {GenCode(INSTRUCTION_DIV, REG_MODE_DIR, REG_MODE_IMM), {"DIV", &Core::DIV, &Core::DIR, &Core::IMM, 1}}, {GenCode(INSTRUCTION_DIV, REG_MODE_DIR, REG_MODE_RDI), {"DIV", &Core::DIV, &Core::DIR, &Core::RDI, 1}},
        {GenCode(INSTRUCTION_DIV, REG_MODE_IMM, REG_MODE_REG), {"DIV", &Core::DIV, &Core::IMM, &Core::REG, 1}}, {GenCode(INSTRUCTION_DIV, REG_MODE_IMM, REG_MODE_DIR), {"DIV", &Core::DIV, &Core::IMM, &Core::DIR, 1}}, {GenCode(INSTRUCTION_DIV, REG_MODE_IMM, REG_MODE_IMM), {"DIV", &Core::DIV, &Core::IMM, &Core::IMM, 1}}, {GenCode(INSTRUCTION_DIV, REG_MODE_IMM, REG_MODE_RDI), {"DIV", &Core::DIV, &Core::IMM, &Core::RDI, 1}},
        {GenCode(INSTRUCTION_DIV, REG_MODE_RDI, REG_MODE_REG), {"DIV", &Core::DIV, &Core::RDI, &Core::REG, 1}}, {GenCode(INSTRUCTION_DIV, REG_MODE_RDI, REG_MODE_DIR), {"DIV", &Core::DIV, &Core::RDI, &Core::DIR, 1}}, {GenCode(INSTRUCTION_DIV, REG_MODE_RDI, REG_MODE_IMM), {"DIV", &Core::DIV, &Core::RDI, &Core::IMM, 1}}, {GenCode(INSTRUCTION_DIV, REG_MODE_RDI, REG_MODE_RDI), {"DIV", &Core::DIV, &Core::RDI, &Core::RDI, 1}},

        // LSR
        {GenCode(INSTRUCTION_LSR, REG_MODE_REG, REG_MODE_REG), {"LSR", &Core::LSR, &Core::REG, &Core::REG, 1}}, {GenCode(INSTRUCTION_LSR, REG_MODE_REG, REG_MODE_DIR), {"LSR", &Core::LSR, &Core::REG, &Core::DIR, 1}}, {GenCode(INSTRUCTION_LSR, REG_MODE_REG, REG_MODE_IMM), {"LSR", &Core::LSR, &Core::REG, &Core::IMM, 1}}, {GenCode(INSTRUCTION_LSR, REG_MODE_REG, REG_MODE_RDI), {"LSR", &Core::LSR, &Core::REG, &Core::RDI, 1}},
        {GenCode(INSTRUCTION_LSR, REG_MODE_DIR, REG_MODE_REG), {"LSR", &Core::LSR, &Core::DIR, &Core::REG, 1}}, {GenCode(INSTRUCTION_LSR, REG_MODE_DIR, REG_MODE_DIR), {"LSR", &Core::LSR, &Core::DIR, &Core::DIR, 1}}, {GenCode(INSTRUCTION_LSR, REG_MODE_DIR, REG_MODE_IMM), {"LSR", &Core::LSR, &Core::DIR, &Core::IMM, 1}}, {GenCode(INSTRUCTION_LSR, REG_MODE_DIR, REG_MODE_RDI), {"LSR", &Core::LSR, &Core::DIR, &Core::RDI, 1}},
        {GenCode(INSTRUCTION_LSR, REG_MODE_IMM, REG_MODE_REG), {"LSR", &Core::LSR, &Core::IMM, &Core::REG, 1}}, {GenCode(INSTRUCTION_LSR, REG_MODE_IMM, REG_MODE_DIR), {"LSR", &Core::LSR, &Core::IMM, &Core::DIR, 1}}, {GenCode(INSTRUCTION_LSR, REG_MODE_IMM, REG_MODE_IMM), {"LSR", &Core::LSR, &Core::IMM, &Core::IMM, 1}}, {GenCode(INSTRUCTION_LSR, REG_MODE_IMM, REG_MODE_RDI), {"LSR", &Core::LSR, &Core::IMM, &Core::RDI, 1}},
        {GenCode(INSTRUCTION_LSR, REG_MODE_RDI, REG_MODE_REG), {"LSR", &Core::LSR, &Core::RDI, &Core::REG, 1}}, {GenCode(INSTRUCTION_LSR, REG_MODE_RDI, REG_MODE_DIR), {"LSR", &Core::LSR, &Core::RDI, &Core::DIR, 1}}, {GenCode(INSTRUCTION_LSR, REG_MODE_RDI, REG_MODE_IMM), {"LSR", &Core::LSR, &Core::RDI, &Core::IMM, 1}}, {GenCode(INSTRUCTION_LSR, REG_MODE_RDI, REG_MODE_RDI), {"LSR", &Core::LSR, &Core::RDI, &Core::RDI, 1}},
        // LSL
        {GenCode(INSTRUCTION_LSL, REG_MODE_REG, REG_MODE_REG), {"LSL", &Core::LSL, &Core::REG, &Core::REG, 1}}, {GenCode(INSTRUCTION_LSL, REG_MODE_REG, REG_MODE_DIR), {"LSL", &Core::LSL, &Core::REG, &Core::DIR, 1}}, {GenCode(INSTRUCTION_LSL, REG_MODE_REG, REG_MODE_IMM), {"LSL", &Core::LSL, &Core::REG, &Core::IMM, 1}}, {GenCode(INSTRUCTION_LSL, REG_MODE_REG, REG_MODE_RDI), {"LSL", &Core::LSL, &Core::REG, &Core::RDI, 1}},
        {GenCode(INSTRUCTION_LSL, REG_MODE_DIR, REG_MODE_REG), {"LSL", &Core::LSL, &Core::DIR, &Core::REG, 1}}, {GenCode(INSTRUCTION_LSL, REG_MODE_DIR, REG_MODE_DIR), {"LSL", &Core::LSL, &Core::DIR, &Core::DIR, 1}}, {GenCode(INSTRUCTION_LSL, REG_MODE_DIR, REG_MODE_IMM), {"LSL", &Core::LSL, &Core::DIR, &Core::IMM, 1}}, {GenCode(INSTRUCTION_LSL, REG_MODE_DIR, REG_MODE_RDI), {"LSL", &Core::LSL, &Core::DIR, &Core::RDI, 1}},
        {GenCode(INSTRUCTION_LSL, REG_MODE_IMM, REG_MODE_REG), {"LSL", &Core::LSL, &Core::IMM, &Core::REG, 1}}, {GenCode(INSTRUCTION_LSL, REG_MODE_IMM, REG_MODE_DIR), {"LSL", &Core::LSL, &Core::IMM, &Core::DIR, 1}}, {GenCode(INSTRUCTION_LSL, REG_MODE_IMM, REG_MODE_IMM), {"LSL", &Core::LSL, &Core::IMM, &Core::IMM, 1}}, {GenCode(INSTRUCTION_LSL, REG_MODE_IMM, REG_MODE_RDI), {"LSL", &Core::LSL, &Core::IMM, &Core::RDI, 1}},
        {GenCode(INSTRUCTION_LSL, REG_MODE_RDI, REG_MODE_REG), {"LSL", &Core::LSL, &Core::RDI, &Core::REG, 1}}, {GenCode(INSTRUCTION_LSL, REG_MODE_RDI, REG_MODE_DIR), {"LSL", &Core::LSL, &Core::RDI, &Core::DIR, 1}}, {GenCode(INSTRUCTION_LSL, REG_MODE_RDI, REG_MODE_IMM), {"LSL", &Core::LSL, &Core::RDI, &Core::IMM, 1}}, {GenCode(INSTRUCTION_LSL, REG_MODE_RDI, REG_MODE_RDI), {"LSL", &Core::LSL, &Core::RDI, &Core::RDI, 1}},
        
        // AND
        {GenCode(INSTRUCTION_AND, REG_MODE_REG, REG_MODE_REG), {"AND", &Core::AND, &Core::REG, &Core::REG, 1}}, {GenCode(INSTRUCTION_AND, REG_MODE_REG, REG_MODE_DIR), {"AND", &Core::AND, &Core::REG, &Core::DIR, 1}}, {GenCode(INSTRUCTION_AND, REG_MODE_REG, REG_MODE_IMM), {"AND", &Core::AND, &Core::REG, &Core::IMM, 1}}, {GenCode(INSTRUCTION_AND, REG_MODE_REG, REG_MODE_RDI), {"AND", &Core::AND, &Core::REG, &Core::RDI, 1}},
        {GenCode(INSTRUCTION_AND, REG_MODE_DIR, REG_MODE_REG), {"AND", &Core::AND, &Core::DIR, &Core::REG, 1}}, {GenCode(INSTRUCTION_AND, REG_MODE_DIR, REG_MODE_DIR), {"AND", &Core::AND, &Core::DIR, &Core::DIR, 1}}, {GenCode(INSTRUCTION_AND, REG_MODE_DIR, REG_MODE_IMM), {"AND", &Core::AND, &Core::DIR, &Core::IMM, 1}}, {GenCode(INSTRUCTION_AND, REG_MODE_DIR, REG_MODE_RDI), {"AND", &Core::AND, &Core::DIR, &Core::RDI, 1}},
        {GenCode(INSTRUCTION_AND, REG_MODE_IMM, REG_MODE_REG), {"AND", &Core::AND, &Core::IMM, &Core::REG, 1}}, {GenCode(INSTRUCTION_AND, REG_MODE_IMM, REG_MODE_DIR), {"AND", &Core::AND, &Core::IMM, &Core::DIR, 1}}, {GenCode(INSTRUCTION_AND, REG_MODE_IMM, REG_MODE_IMM), {"AND", &Core::AND, &Core::IMM, &Core::IMM, 1}}, {GenCode(INSTRUCTION_AND, REG_MODE_IMM, REG_MODE_RDI), {"AND", &Core::AND, &Core::IMM, &Core::RDI, 1}},
        {GenCode(INSTRUCTION_AND, REG_MODE_RDI, REG_MODE_REG), {"AND", &Core::AND, &Core::RDI, &Core::REG, 1}}, {GenCode(INSTRUCTION_AND, REG_MODE_RDI, REG_MODE_DIR), {"AND", &Core::AND, &Core::RDI, &Core::DIR, 1}}, {GenCode(INSTRUCTION_AND, REG_MODE_RDI, REG_MODE_IMM), {"AND", &Core::AND, &Core::RDI, &Core::IMM, 1}}, {GenCode(INSTRUCTION_AND, REG_MODE_RDI, REG_MODE_RDI), {"AND", &Core::AND, &Core::RDI, &Core::RDI, 1}},
        // NOT
        {GenCode(INSTRUCTION_NOT, REG_MODE_REG, REG_MODE_REG), {"NOT", &Core::NOT, &Core::REG, &Core::REG, 1}}, {GenCode(INSTRUCTION_NOT, REG_MODE_REG, REG_MODE_DIR), {"NOT", &Core::NOT, &Core::REG, &Core::DIR, 1}}, {GenCode(INSTRUCTION_NOT, REG_MODE_REG, REG_MODE_IMM), {"NOT", &Core::NOT, &Core::REG, &Core::IMM, 1}}, {GenCode(INSTRUCTION_NOT, REG_MODE_REG, REG_MODE_RDI), {"NOT", &Core::NOT, &Core::REG, &Core::RDI, 1}},
        {GenCode(INSTRUCTION_NOT, REG_MODE_DIR, REG_MODE_REG), {"NOT", &Core::NOT, &Core::DIR, &Core::REG, 1}}, {GenCode(INSTRUCTION_NOT, REG_MODE_DIR, REG_MODE_DIR), {"NOT", &Core::NOT, &Core::DIR, &Core::DIR, 1}}, {GenCode(INSTRUCTION_NOT, REG_MODE_DIR, REG_MODE_IMM), {"NOT", &Core::NOT, &Core::DIR, &Core::IMM, 1}}, {GenCode(INSTRUCTION_NOT, REG_MODE_DIR, REG_MODE_RDI), {"NOT", &Core::NOT, &Core::DIR, &Core::RDI, 1}},
        {GenCode(INSTRUCTION_NOT, REG_MODE_IMM, REG_MODE_REG), {"NOT", &Core::NOT, &Core::IMM, &Core::REG, 1}}, {GenCode(INSTRUCTION_NOT, REG_MODE_IMM, REG_MODE_DIR), {"NOT", &Core::NOT, &Core::IMM, &Core::DIR, 1}}, {GenCode(INSTRUCTION_NOT, REG_MODE_IMM, REG_MODE_IMM), {"NOT", &Core::NOT, &Core::IMM, &Core::IMM, 1}}, {GenCode(INSTRUCTION_NOT, REG_MODE_IMM, REG_MODE_RDI), {"NOT", &Core::NOT, &Core::IMM, &Core::RDI, 1}},
        {GenCode(INSTRUCTION_NOT, REG_MODE_RDI, REG_MODE_REG), {"NOT", &Core::NOT, &Core::RDI, &Core::REG, 1}}, {GenCode(INSTRUCTION_NOT, REG_MODE_RDI, REG_MODE_DIR), {"NOT", &Core::NOT, &Core::RDI, &Core::DIR, 1}}, {GenCode(INSTRUCTION_NOT, REG_MODE_RDI, REG_MODE_IMM), {"NOT", &Core::NOT, &Core::RDI, &Core::IMM, 1}}, {GenCode(INSTRUCTION_NOT, REG_MODE_RDI, REG_MODE_RDI), {"NOT", &Core::NOT, &Core::RDI, &Core::RDI, 1}},
        // OR
        {GenCode(INSTRUCTION_OR , REG_MODE_REG, REG_MODE_REG), {"OR" , &Core::OR , &Core::REG, &Core::REG, 1}}, {GenCode(INSTRUCTION_OR , REG_MODE_REG, REG_MODE_DIR), {"OR" , &Core::OR , &Core::REG, &Core::DIR, 1}}, {GenCode(INSTRUCTION_OR , REG_MODE_REG, REG_MODE_IMM), {"OR" , &Core::OR , &Core::REG, &Core::IMM, 1}}, {GenCode(INSTRUCTION_OR , REG_MODE_REG, REG_MODE_RDI), {"OR" , &Core::OR , &Core::REG, &Core::RDI, 1}},
        {GenCode(INSTRUCTION_OR , REG_MODE_DIR, REG_MODE_REG), {"OR" , &Core::OR , &Core::DIR, &Core::REG, 1}}, {GenCode(INSTRUCTION_OR , REG_MODE_DIR, REG_MODE_DIR), {"OR" , &Core::OR , &Core::DIR, &Core::DIR, 1}}, {GenCode(INSTRUCTION_OR , REG_MODE_DIR, REG_MODE_IMM), {"OR" , &Core::OR , &Core::DIR, &Core::IMM, 1}}, {GenCode(INSTRUCTION_OR , REG_MODE_DIR, REG_MODE_RDI), {"OR" , &Core::OR , &Core::DIR, &Core::RDI, 1}},
        {GenCode(INSTRUCTION_OR , REG_MODE_IMM, REG_MODE_REG), {"OR" , &Core::OR , &Core::IMM, &Core::REG, 1}}, {GenCode(INSTRUCTION_OR , REG_MODE_IMM, REG_MODE_DIR), {"OR" , &Core::OR , &Core::IMM, &Core::DIR, 1}}, {GenCode(INSTRUCTION_OR , REG_MODE_IMM, REG_MODE_IMM), {"OR" , &Core::OR , &Core::IMM, &Core::IMM, 1}}, {GenCode(INSTRUCTION_OR , REG_MODE_IMM, REG_MODE_RDI), {"OR" , &Core::OR , &Core::IMM, &Core::RDI, 1}},
        {GenCode(INSTRUCTION_OR , REG_MODE_RDI, REG_MODE_REG), {"OR" , &Core::OR , &Core::RDI, &Core::REG, 1}}, {GenCode(INSTRUCTION_OR , REG_MODE_RDI, REG_MODE_DIR), {"OR" , &Core::OR , &Core::RDI, &Core::DIR, 1}}, {GenCode(INSTRUCTION_OR , REG_MODE_RDI, REG_MODE_IMM), {"OR" , &Core::OR , &Core::RDI, &Core::IMM, 1}}, {GenCode(INSTRUCTION_OR , REG_MODE_RDI, REG_MODE_RDI), {"OR" , &Core::OR , &Core::RDI, &Core::RDI, 1}},
        // XOR
        {GenCode(INSTRUCTION_XOR, REG_MODE_REG, REG_MODE_REG), {"XOR", &Core::XOR, &Core::REG, &Core::REG, 1}}, {GenCode(INSTRUCTION_XOR, REG_MODE_REG, REG_MODE_DIR), {"XOR", &Core::XOR, &Core::REG, &Core::DIR, 1}}, {GenCode(INSTRUCTION_XOR, REG_MODE_REG, REG_MODE_IMM), {"XOR", &Core::XOR, &Core::REG, &Core::IMM, 1}}, {GenCode(INSTRUCTION_XOR, REG_MODE_REG, REG_MODE_RDI), {"XOR", &Core::XOR, &Core::REG, &Core::RDI, 1}},
        {GenCode(INSTRUCTION_XOR, REG_MODE_DIR, REG_MODE_REG), {"XOR", &Core::XOR, &Core::DIR, &Core::REG, 1}}, {GenCode(INSTRUCTION_XOR, REG_MODE_DIR, REG_MODE_DIR), {"XOR", &Core::XOR, &Core::DIR, &Core::DIR, 1}}, {GenCode(INSTRUCTION_XOR, REG_MODE_DIR, REG_MODE_IMM), {"XOR", &Core::XOR, &Core::DIR, &Core::IMM, 1}}, {GenCode(INSTRUCTION_XOR, REG_MODE_DIR, REG_MODE_RDI), {"XOR", &Core::XOR, &Core::DIR, &Core::RDI, 1}},
        {GenCode(INSTRUCTION_XOR, REG_MODE_IMM, REG_MODE_REG), {"XOR", &Core::XOR, &Core::IMM, &Core::REG, 1}}, {GenCode(INSTRUCTION_XOR, REG_MODE_IMM, REG_MODE_DIR), {"XOR", &Core::XOR, &Core::IMM, &Core::DIR, 1}}, {GenCode(INSTRUCTION_XOR, REG_MODE_IMM, REG_MODE_IMM), {"XOR", &Core::XOR, &Core::IMM, &Core::IMM, 1}}, {GenCode(INSTRUCTION_XOR, REG_MODE_IMM, REG_MODE_RDI), {"XOR", &Core::XOR, &Core::IMM, &Core::RDI, 1}},
        {GenCode(INSTRUCTION_XOR, REG_MODE_RDI, REG_MODE_REG), {"XOR", &Core::XOR, &Core::RDI, &Core::REG, 1}}, {GenCode(INSTRUCTION_XOR, REG_MODE_RDI, REG_MODE_DIR), {"XOR", &Core::XOR, &Core::RDI, &Core::DIR, 1}}, {GenCode(INSTRUCTION_XOR, REG_MODE_RDI, REG_MODE_IMM), {"XOR", &Core::XOR, &Core::RDI, &Core::IMM, 1}}, {GenCode(INSTRUCTION_XOR, REG_MODE_RDI, REG_MODE_RDI), {"XOR", &Core::XOR, &Core::RDI, &Core::RDI, 1}},

        // Comparisons
        {GenCode(INSTRUCTION_CMP, REG_MODE_REG, REG_MODE_REG), {"CMP", &Core::CMP, &Core::REG, &Core::REG, 1}}, {GenCode(INSTRUCTION_CMP, REG_MODE_REG, REG_MODE_DIR), {"CMP", &Core::CMP, &Core::REG, &Core::DIR, 1}}, {GenCode(INSTRUCTION_CMP, REG_MODE_REG, REG_MODE_IMM), {"CMP", &Core::CMP, &Core::REG, &Core::IMM, 1}}, {GenCode(INSTRUCTION_CMP, REG_MODE_REG, REG_MODE_RDI), {"CMP", &Core::CMP, &Core::REG, &Core::RDI, 1}},
        {GenCode(INSTRUCTION_CMP, REG_MODE_DIR, REG_MODE_REG), {"CMP", &Core::CMP, &Core::DIR, &Core::REG, 1}}, {GenCode(INSTRUCTION_CMP, REG_MODE_DIR, REG_MODE_DIR), {"CMP", &Core::CMP, &Core::DIR, &Core::DIR, 1}}, {GenCode(INSTRUCTION_CMP, REG_MODE_DIR, REG_MODE_IMM), {"CMP", &Core::CMP, &Core::DIR, &Core::IMM, 1}}, {GenCode(INSTRUCTION_CMP, REG_MODE_DIR, REG_MODE_RDI), {"CMP", &Core::CMP, &Core::DIR, &Core::RDI, 1}},
        {GenCode(INSTRUCTION_CMP, REG_MODE_IMM, REG_MODE_REG), {"CMP", &Core::CMP, &Core::IMM, &Core::REG, 1}}, {GenCode(INSTRUCTION_CMP, REG_MODE_IMM, REG_MODE_DIR), {"CMP", &Core::CMP, &Core::IMM, &Core::DIR, 1}}, {GenCode(INSTRUCTION_CMP, REG_MODE_IMM, REG_MODE_IMM), {"CMP", &Core::CMP, &Core::IMM, &Core::IMM, 1}}, {GenCode(INSTRUCTION_CMP, REG_MODE_IMM, REG_MODE_RDI), {"CMP", &Core::CMP, &Core::IMM, &Core::RDI, 1}},
        {GenCode(INSTRUCTION_CMP, REG_MODE_RDI, REG_MODE_REG), {"CMP", &Core::CMP, &Core::RDI, &Core::REG, 1}}, {GenCode(INSTRUCTION_CMP, REG_MODE_RDI, REG_MODE_DIR), {"CMP", &Core::CMP, &Core::RDI, &Core::DIR, 1}}, {GenCode(INSTRUCTION_CMP, REG_MODE_RDI, REG_MODE_IMM), {"CMP", &Core::CMP, &Core::RDI, &Core::IMM, 1}}, {GenCode(INSTRUCTION_CMP, REG_MODE_RDI, REG_MODE_RDI), {"CMP", &Core::CMP, &Core::RDI, &Core::RDI, 1}},
    };

    cycles = 0;
}

void Core::clock(){
    bool ResetStatus = false;
    if(!cycles && Regs.status){
        ResetStatus = true;
    }

    if(cycles <= 0){
        Opcode = static_cast<uint16_t>(read(Regs.rip));
        CurOP = LookupTable[Opcode & OpCodeMASK];
        if(CurOP.InstructionFunction == nullptr){
            // TODO THROW NOOP ERR
            std::cout << "Invalid Opcode: " << std::hex << Opcode << std::dec << " / " << Opcode << std::endl;
            return;
        }

        // Increment Instruction
        Regs.rip+=2; // 2 Byte Instructions

        // Perfom Action
        cycles = CurOP.CycleCount;
        cycles += (this->*(CurOP.AddressingMode1))() + (this->*(CurOP.AddressingMode2))() + (this->*(CurOP.InstructionFunction))();
    }

    if(ResetStatus){
        Regs.status = 0;
    }

    // cycles--;
    cycles = 0;
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
    Regs.rip += (CurOP.AddressingMode1 != &Core::REG && CurOP.AddressingMode1 != &Core::RDI) ? 8 : 1;
    uint64_t ReadOperand = read(Regs.rip);
    Regs.rip += (CurOP.AddressingMode2 != &Core::REG && CurOP.AddressingMode2 != &Core::RDI) ? 8 : 1;

    Cycles += 2;

    uint64_t SizeFlag = (Opcode & 0b110000) >> 4;

    // Get the value
    if(CurOP.AddressingMode2 == &Core::REG){
        // Identify Reg Based on next data
        uint64_t* Registers = (uint64_t*)&Regs;
        if(static_cast<uint8_t>(ReadOperand) >= sizeof(Regs) / 8){
            std::cout << "MOV: Attempted to load data from a non register: " << static_cast<uint8_t>(ReadOperand) << std::endl;
        }
        In = Registers[static_cast<uint8_t>(ReadOperand)];

        // TODO + non-64Bit and must be same
    }
    else if(CurOP.AddressingMode2 == &Core::DIR){
        In = read(ReadOperand);
    }
    else if(CurOP.AddressingMode2 == &Core::IMM){
        In = ReadOperand;
    }
    else if(CurOP.AddressingMode2 == &Core::RDI){
        // Identify Reg Based on next data
        uint64_t* Registers = (uint64_t*)&Regs;
        if(static_cast<uint8_t>(ReadOperand) >= sizeof(Regs) / 8){
            std::cout << "MOV: Attempted to load address from a non register: " << static_cast<uint8_t>(ReadOperand) << std::endl;
        }
        In = Registers[static_cast<uint8_t>(ReadOperand)];

        // Read in new data
        In = read(In);
    }

    // Where does it go
    if(CurOP.AddressingMode1 == &Core::REG){
        // Identify Reg Based on next data
        uint64_t* Registers = (uint64_t*)&Regs;
        if(static_cast<uint8_t>(WriteOperand) >= sizeof(Regs) / 8){
            std::cout << "MOV: Attempted to Write data from a non register: " << static_cast<uint8_t>(WriteOperand) << std::endl;
        }

        if(!SizeFlag){ // 64-Bit
            Registers[static_cast<uint8_t>(WriteOperand)] = In;
        }
        else if(SizeFlag == 1){ // 32-Bit
            uint64_t CurrentData = Registers[static_cast<uint8_t>(WriteOperand)];
            ((uint32_t*)(&CurrentData))[0] = In;
            Registers[static_cast<uint8_t>(WriteOperand)] = CurrentData;
            Cycles++;
        }
        else if(SizeFlag == 2){ // 16-Bit
            uint64_t CurrentData = Registers[static_cast<uint8_t>(WriteOperand)];
            ((uint16_t*)(&CurrentData))[0] = In;
            Registers[static_cast<uint8_t>(WriteOperand)] = CurrentData;
            Cycles++;
        }
        else if(SizeFlag == 3){ // 8-Bit
            uint64_t CurrentData = Registers[static_cast<uint8_t>(WriteOperand)];
            ((uint8_t*)(&CurrentData))[0] = In;
            Registers[static_cast<uint8_t>(WriteOperand)] = CurrentData;
            Cycles++;
        }
    }
    else if(CurOP.AddressingMode1 == &Core::DIR){
        if(!SizeFlag){ // 64-Bit
            write(WriteOperand, In);
        }
        else if(SizeFlag == 1){ // 32-Bit
            uint64_t CurrentData = read(WriteOperand);
            ((uint32_t*)(&CurrentData))[0] = In;
            write(WriteOperand, CurrentData);
            Cycles++;
        }
        else if(SizeFlag == 2){ // 16-Bit
            uint64_t CurrentData = read(WriteOperand);
            ((uint16_t*)(&CurrentData))[0] = In;
            write(WriteOperand, CurrentData);
            Cycles++;
        }
        else if(SizeFlag == 3){ // 8-Bit
            uint64_t CurrentData = read(WriteOperand);
            ((uint8_t*)(&CurrentData))[0] = In;
            write(WriteOperand, CurrentData);
            Cycles++;
        }
    }
    else if(CurOP.AddressingMode1 == &Core::IMM){
        std::cout << "MOV: Attempted to write to a immediate value" << std::endl;
    }
    else if(CurOP.AddressingMode1 == &Core::RDI){
        // Identify Reg Based on next data
        uint64_t* Registers = (uint64_t*)&Regs;
        if(static_cast<uint8_t>(WriteOperand) >= sizeof(Regs) / 8){
            std::cout << "MOV: Attempted to write to address from a non register: " << static_cast<uint8_t>(WriteOperand) << std::endl;
        }
        
        if(!SizeFlag){ // 64-Bit
            write(Registers[static_cast<uint8_t>(WriteOperand)], In);
        }
        else if(SizeFlag == 1){ // 32-Bit
            uint64_t CurrentData = read(Registers[static_cast<uint8_t>(WriteOperand)]);
            ((uint32_t*)(&CurrentData))[0] = In;
            write(Registers[static_cast<uint8_t>(WriteOperand)], CurrentData);
            Cycles++;
        }
        else if(SizeFlag == 2){ // 16-Bit
            uint64_t CurrentData = read(Registers[static_cast<uint8_t>(WriteOperand)]);
            ((uint16_t*)(&CurrentData))[0] = In;
            write(Registers[static_cast<uint8_t>(WriteOperand)], CurrentData);
            Cycles++;
        }
        else if(SizeFlag == 3){ // 8-Bit
            uint64_t CurrentData = read(Registers[static_cast<uint8_t>(WriteOperand)]);
            ((uint8_t*)(&CurrentData))[0] = In;
            write(Registers[static_cast<uint8_t>(WriteOperand)], CurrentData);
            Cycles++;
        }
    }

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

uint64_t Core::JMP(){
    uint64_t JMPArg = read(Regs.rip);
    Regs.rip += (CurOP.AddressingMode1 != &Core::REG && CurOP.AddressingMode1 != &Core::RDI) ? 8 : 1;
    
    // Get the value
    if(CurOP.AddressingMode1 == &Core::REG){
        // Identify Reg Based on next data
        uint64_t* Registers = (uint64_t*)&Regs;
        if(static_cast<uint8_t>(JMPArg) >= sizeof(Regs) / 8){
            std::cout << "JMP: Attempted to load address from a non register: " << static_cast<uint8_t>(JMPArg) << std::endl;
        }
        Regs.rip = Registers[static_cast<uint8_t>(JMPArg)];

        // TODO + non-64Bit and must be same
    }
    else if(CurOP.AddressingMode1 == &Core::DIR){
        Regs.rip = read(JMPArg);
    }
    else if(CurOP.AddressingMode1 == &Core::IMM){
        Regs.rip = JMPArg;
    }
    else if(CurOP.AddressingMode1 == &Core::RDI){
        // Identify Reg Based on next data
        uint64_t* Registers = (uint64_t*)&Regs;
        if(static_cast<uint8_t>(JMPArg) >= sizeof(Regs) / 8){
            std::cout << "JMP: Attempted to load addressData from a non register: " << static_cast<uint8_t>(JMPArg) << std::endl;
        }
        Regs.rip = Registers[static_cast<uint8_t>(JMPArg)];

        // Read in new data
        Regs.rip = read(Regs.rip);
    }

    return 1;
}

uint64_t Core::ADD(){
    uint64_t* Registers = (uint64_t*)&Regs;

    int Cycles = 1;

    uint64_t Output = read(Regs.rip);
    Regs.rip += 1;
    int64_t Input1 = read(Regs.rip);
    Regs.rip += (CurOP.AddressingMode1 != &Core::REG && CurOP.AddressingMode1 != &Core::RDI) ? 8 : 1;
    int64_t Input2 = read(Regs.rip);
    Regs.rip += (CurOP.AddressingMode2 != &Core::REG && CurOP.AddressingMode2 != &Core::RDI) ? 8 : 1;

    uint64_t SizeFlag = (Opcode & 0b110000) >> 4;

    // Input 1
    if(CurOP.AddressingMode1 == &Core::REG){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input1) >= sizeof(Regs) / 8){
            std::cout << "ADD: Attempted to load data from a non register: " << static_cast<uint8_t>(Input1) << std::endl;
        }
        Input1 = Registers[static_cast<uint8_t>(Input1)];

        // TODO + non-64Bit and must be same
    }
    else if(CurOP.AddressingMode1 == &Core::DIR){
        Input1 = read(Input1);
    }
    else if(CurOP.AddressingMode1 == &Core::IMM){
        Input1 = Input1;
    }
    else if(CurOP.AddressingMode1 == &Core::RDI){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input1) >= sizeof(Regs) / 8){
            std::cout << "ADD: Attempted to load address from a non register: " << static_cast<uint8_t>(Input1) << std::endl;
        }
        Input1 = Registers[static_cast<uint8_t>(Input1)];

        // Read in new data
        Input1 = read(Input1);
    }

    // Input 2
    if(CurOP.AddressingMode2 == &Core::REG){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input2) >= sizeof(Regs) / 8){
            std::cout << "ADD: Attempted to load data from a non register: " << static_cast<uint8_t>(Input2) << std::endl;
        }
        Input2 = Registers[static_cast<uint8_t>(Input2)];

        // TODO + non-64Bit and must be same
    }
    else if(CurOP.AddressingMode2 == &Core::DIR){
        Input2 = read(Input2);
    }
    else if(CurOP.AddressingMode2 == &Core::IMM){
        Input2 = Input2;
    }
    else if(CurOP.AddressingMode2 == &Core::RDI){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input2) >= sizeof(Regs) / 8){
            std::cout << "ADD: Attempted to load address from a non register: " << static_cast<uint8_t>(Input2) << std::endl;
        }
        Input2 = Registers[static_cast<uint8_t>(Input2)];

        // Read in new data
        Input2 = read(Input2);
    }

    if(static_cast<uint8_t>(Output) >= sizeof(Regs) / 8){
        std::cout << "ADD: Attempted to Write to a non register: " << static_cast<uint8_t>(Output) << std::endl;
    }

    if(!SizeFlag){
        Registers[static_cast<uint8_t>(Output)] = Input1 + Input2;

        // TODO FLAG Checks here
    }
    else if(SizeFlag == 1) {
        uint64_t Data = Input1 + Input2;
        uint32_t AdaptedData = static_cast<uint32_t>(Data);
        
        if(Data > AdaptedData){
            Regs.status |= CPU_STATUS_OVERFLOW; // Overflow error
        }
        if(Data == 0){
            Regs.status |= CPU_STATUS_ZERO; // Zero Flag
        }

        // Save to register
        ((uint32_t*)(&Registers[static_cast<uint8_t>(Output)]))[0] = AdaptedData;
        Cycles++;
    }
    else if(SizeFlag == 2) {
        uint64_t Data = Input1 + Input2;
        uint16_t AdaptedData = static_cast<uint16_t>(Data);
        
        if(Data > AdaptedData){
            Regs.status |= CPU_STATUS_OVERFLOW; // Overflow error
        }
        if(Data == 0){
            Regs.status |= CPU_STATUS_ZERO; // Zero Flag
        }

        // Save to register
        ((uint16_t*)(&Registers[static_cast<uint8_t>(Output)]))[0] = AdaptedData;
        Cycles++;
    }
    else if(SizeFlag == 3) {
        uint64_t Data = Input1 + Input2;
        uint8_t AdaptedData = static_cast<uint8_t>(Data);
        
        if(Data > AdaptedData){
            Regs.status |= CPU_STATUS_OVERFLOW; // Overflow error
        }
        if(Data == 0){
            Regs.status |= CPU_STATUS_ZERO; // Zero Flag
        }

        // Save to register
        ((uint8_t*)(&Registers[static_cast<uint8_t>(Output)]))[0] = AdaptedData;
        Cycles++;
    }

    return Cycles;
}

uint64_t Core::MUL(){
    uint64_t* Registers = (uint64_t*)&Regs;

    int Cycles = 1;

    uint64_t Output = read(Regs.rip);
    Regs.rip += 1;
    int64_t Input1 = read(Regs.rip);
    Regs.rip += (CurOP.AddressingMode1 != &Core::REG && CurOP.AddressingMode1 != &Core::RDI) ? 8 : 1;
    int64_t Input2 = read(Regs.rip);
    Regs.rip += (CurOP.AddressingMode2 != &Core::REG && CurOP.AddressingMode2 != &Core::RDI) ? 8 : 1;

    uint64_t SizeFlag = (Opcode & 0b110000) >> 4;

    // Input 1
    if(CurOP.AddressingMode1 == &Core::REG){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input1) >= sizeof(Regs) / 8){
            std::cout << "MUL: Attempted to load data from a non register: " << static_cast<uint8_t>(Input1) << std::endl;
        }
        Input1 = Registers[static_cast<uint8_t>(Input1)];

        // TODO + non-64Bit and must be same
    }
    else if(CurOP.AddressingMode1 == &Core::DIR){
        Input1 = read(Input1);
    }
    else if(CurOP.AddressingMode1 == &Core::IMM){
        Input1 = Input1;
    }
    else if(CurOP.AddressingMode1 == &Core::RDI){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input1) >= sizeof(Regs) / 8){
            std::cout << "MUL: Attempted to load address from a non register: " << static_cast<uint8_t>(Input1) << std::endl;
        }
        Input1 = Registers[static_cast<uint8_t>(Input1)];

        // Read in new data
        Input1 = read(Input1);
    }

    // Input 2
    if(CurOP.AddressingMode2 == &Core::REG){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input2) >= sizeof(Regs) / 8){
            std::cout << "MUL: Attempted to load data from a non register: " << static_cast<uint8_t>(Input2) << std::endl;
        }
        Input2 = Registers[static_cast<uint8_t>(Input2)];

        // TODO + non-64Bit and must be same
    }
    else if(CurOP.AddressingMode2 == &Core::DIR){
        Input2 = read(Input2);
    }
    else if(CurOP.AddressingMode2 == &Core::IMM){
        Input2 = Input2;
    }
    else if(CurOP.AddressingMode2 == &Core::RDI){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input2) >= sizeof(Regs) / 8){
            std::cout << "MUL: Attempted to load address from a non register: " << static_cast<uint8_t>(Input2) << std::endl;
        }
        Input2 = Registers[static_cast<uint8_t>(Input2)];

        // Read in new data
        Input2 = read(Input2);
    }

    if(static_cast<uint8_t>(Output) >= sizeof(Regs) / 8){
        std::cout << "MUL: Attempted to Write to a non register: " << static_cast<uint8_t>(Output) << std::endl;
    }

    if(!SizeFlag){
        Registers[static_cast<uint8_t>(Output)] = Input1 * Input2;

        // TODO FLAG Checks here
    }
    else if(SizeFlag == 1) {
        uint64_t Data = Input1 * Input2;
        uint32_t AdaptedData = static_cast<uint32_t>(Data);
        
        if(Data > AdaptedData){
            Regs.status |= CPU_STATUS_OVERFLOW; // Overflow error
        }
        if(Data == 0){
            Regs.status |= CPU_STATUS_ZERO; // Zero Flag
        }

        // Save to register
        ((uint32_t*)(&Registers[static_cast<uint8_t>(Output)]))[0] = AdaptedData;
        Cycles++;
    }
    else if(SizeFlag == 2) {
        uint64_t Data = Input1 * Input2;
        uint16_t AdaptedData = static_cast<uint16_t>(Data);
        
        if(Data > AdaptedData){
            Regs.status |= CPU_STATUS_OVERFLOW; // Overflow error
        }
        if(Data == 0){
            Regs.status |= CPU_STATUS_ZERO; // Zero Flag
        }

        // Save to register
        ((uint16_t*)(&Registers[static_cast<uint8_t>(Output)]))[0] = AdaptedData;
        Cycles++;
    }
    else if(SizeFlag == 3) {
        uint64_t Data = Input1 * Input2;
        uint8_t AdaptedData = static_cast<uint8_t>(Data);
        
        if(Data > AdaptedData){
            Regs.status |= CPU_STATUS_OVERFLOW; // Overflow error
        }
        if(Data == 0){
            Regs.status |= CPU_STATUS_ZERO; // Zero Flag
        }

        // Save to register
        ((uint8_t*)(&Registers[static_cast<uint8_t>(Output)]))[0] = AdaptedData;
        Cycles++;
    }

    return Cycles;
}

uint64_t Core::SUB(){
    uint64_t* Registers = (uint64_t*)&Regs;

    int Cycles = 1;

    uint64_t Output = read(Regs.rip);
    Regs.rip += 1;
    int64_t Input1 = read(Regs.rip);
    Regs.rip += (CurOP.AddressingMode1 != &Core::REG && CurOP.AddressingMode1 != &Core::RDI) ? 8 : 1;
    int64_t Input2 = read(Regs.rip);
    Regs.rip += (CurOP.AddressingMode2 != &Core::REG && CurOP.AddressingMode2 != &Core::RDI) ? 8 : 1;

    uint64_t SizeFlag = (Opcode & 0b110000) >> 4;

    // Input 1
    if(CurOP.AddressingMode1 == &Core::REG){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input1) >= sizeof(Regs) / 8){
            std::cout << "SUB: Attempted to load data from a non register: " << static_cast<uint8_t>(Input1) << std::endl;
        }
        Input1 = Registers[static_cast<uint8_t>(Input1)];

        // TODO + non-64Bit and must be same
    }
    else if(CurOP.AddressingMode1 == &Core::DIR){
        Input1 = read(Input1);
    }
    else if(CurOP.AddressingMode1 == &Core::IMM){
        Input1 = Input1;
    }
    else if(CurOP.AddressingMode1 == &Core::RDI){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input1) >= sizeof(Regs) / 8){
            std::cout << "SUB: Attempted to load address from a non register: " << static_cast<uint8_t>(Input1) << std::endl;
        }
        Input1 = Registers[static_cast<uint8_t>(Input1)];

        // Read in new data
        Input1 = read(Input1);
    }

    // Input 2
    if(CurOP.AddressingMode2 == &Core::REG){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input2) >= sizeof(Regs) / 8){
            std::cout << "SUB: Attempted to load data from a non register: " << static_cast<uint8_t>(Input2) << std::endl;
        }
        Input2 = Registers[static_cast<uint8_t>(Input2)];

        // TODO + non-64Bit and must be same
    }
    else if(CurOP.AddressingMode2 == &Core::DIR){
        Input2 = read(Input2);
    }
    else if(CurOP.AddressingMode2 == &Core::IMM){
        Input2 = Input2;
    }
    else if(CurOP.AddressingMode2 == &Core::RDI){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input2) >= sizeof(Regs) / 8){
            std::cout << "SUB: Attempted to load address from a non register: " << static_cast<uint8_t>(Input2) << std::endl;
        }
        Input2 = Registers[static_cast<uint8_t>(Input2)];

        // Read in new data
        Input2 = read(Input2);
    }

    if(static_cast<uint8_t>(Output) >= sizeof(Regs) / 8){
        std::cout << "SUB: Attempted to Write to a non register: " << static_cast<uint8_t>(Output) << std::endl;
    }

    if(!SizeFlag){
        Registers[static_cast<uint8_t>(Output)] = Input1 - Input2;

        // TODO FLAG Checks here
    }
    else if(SizeFlag == 1) {
        uint64_t Data = Input1 - Input2;
        uint32_t AdaptedData = static_cast<uint32_t>(Data);
        
        if(Data > AdaptedData){
            Regs.status |= CPU_STATUS_OVERFLOW; // Overflow error
        }
        if(Data == 0){
            Regs.status |= CPU_STATUS_ZERO; // Zero Flag
        }

        // Save to register
        ((uint32_t*)(&Registers[static_cast<uint8_t>(Output)]))[0] = AdaptedData;
        Cycles++;
    }
    else if(SizeFlag == 2) {
        uint64_t Data = Input1 - Input2;
        uint16_t AdaptedData = static_cast<uint16_t>(Data);
        
        if(Data > AdaptedData){
            Regs.status |= CPU_STATUS_OVERFLOW; // Overflow error
        }
        if(Data == 0){
            Regs.status |= CPU_STATUS_ZERO; // Zero Flag
        }

        // Save to register
        ((uint16_t*)(&Registers[static_cast<uint8_t>(Output)]))[0] = AdaptedData;
        Cycles++;
    }
    else if(SizeFlag == 3) {
        uint64_t Data = Input1 - Input2;
        uint8_t AdaptedData = static_cast<uint8_t>(Data);
        
        if(Data > AdaptedData){
            Regs.status |= CPU_STATUS_OVERFLOW; // Overflow error
        }
        if(Data == 0){
            Regs.status |= CPU_STATUS_ZERO; // Zero Flag
        }

        // Save to register
        ((uint8_t*)(&Registers[static_cast<uint8_t>(Output)]))[0] = AdaptedData;
        Cycles++;
    }

    return Cycles;
}

uint64_t Core::DIV(){
    uint64_t* Registers = (uint64_t*)&Regs;

    int Cycles = 1;

    uint64_t Output = read(Regs.rip);
    Regs.rip += 1;
    int64_t Input1 = read(Regs.rip);
    Regs.rip += (CurOP.AddressingMode1 != &Core::REG && CurOP.AddressingMode1 != &Core::RDI) ? 8 : 1;
    int64_t Input2 = read(Regs.rip);
    Regs.rip += (CurOP.AddressingMode2 != &Core::REG && CurOP.AddressingMode2 != &Core::RDI) ? 8 : 1;

    uint64_t SizeFlag = (Opcode & 0b110000) >> 4;

    // Input 1
    if(CurOP.AddressingMode1 == &Core::REG){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input1) >= sizeof(Regs) / 8){
            std::cout << "DIV: Attempted to load data from a non register: " << static_cast<uint8_t>(Input1) << std::endl;
        }
        Input1 = Registers[static_cast<uint8_t>(Input1)];

        // TODO + non-64Bit and must be same
    }
    else if(CurOP.AddressingMode1 == &Core::DIR){
        Input1 = read(Input1);
    }
    else if(CurOP.AddressingMode1 == &Core::IMM){
        Input1 = Input1;
    }
    else if(CurOP.AddressingMode1 == &Core::RDI){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input1) >= sizeof(Regs) / 8){
            std::cout << "DIV: Attempted to load address from a non register: " << static_cast<uint8_t>(Input1) << std::endl;
        }
        Input1 = Registers[static_cast<uint8_t>(Input1)];

        // Read in new data
        Input1 = read(Input1);
    }

    // Input 2
    if(CurOP.AddressingMode2 == &Core::REG){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input2) >= sizeof(Regs) / 8){
            std::cout << "DIV: Attempted to load data from a non register: " << static_cast<uint8_t>(Input2) << std::endl;
        }
        Input2 = Registers[static_cast<uint8_t>(Input2)];

        // TODO + non-64Bit and must be same
    }
    else if(CurOP.AddressingMode2 == &Core::DIR){
        Input2 = read(Input2);
    }
    else if(CurOP.AddressingMode2 == &Core::IMM){
        Input2 = Input2;
    }
    else if(CurOP.AddressingMode2 == &Core::RDI){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input2) >= sizeof(Regs) / 8){
            std::cout << "DIV: Attempted to load address from a non register: " << static_cast<uint8_t>(Input2) << std::endl;
        }
        Input2 = Registers[static_cast<uint8_t>(Input2)];

        // Read in new data
        Input2 = read(Input2);
    }

    if(static_cast<uint8_t>(Output) >= sizeof(Regs) / 8){
        std::cout << "DIV: Attempted to Write to a non register: " << static_cast<uint8_t>(Output) << std::endl;
    }

    if(!SizeFlag){
        Registers[static_cast<uint8_t>(Output)] = Input1 / Input2;

        // TODO FLAG Checks here
    }
    else if(SizeFlag == 1) {
        uint64_t Data = Input1 / Input2;
        uint32_t AdaptedData = static_cast<uint32_t>(Data);
        
        if(Data > AdaptedData){
            Regs.status |= CPU_STATUS_OVERFLOW; // Overflow error
        }
        if(Data == 0){
            Regs.status |= CPU_STATUS_ZERO; // Zero Flag
        }

        // Save to register
        ((uint32_t*)(&Registers[static_cast<uint8_t>(Output)]))[0] = AdaptedData;
        Cycles++;
    }
    else if(SizeFlag == 2) {
        uint64_t Data = Input1 / Input2;
        uint16_t AdaptedData = static_cast<uint16_t>(Data);
        
        if(Data > AdaptedData){
            Regs.status |= CPU_STATUS_OVERFLOW; // Overflow error
        }
        if(Data == 0){
            Regs.status |= CPU_STATUS_ZERO; // Zero Flag
        }

        // Save to register
        ((uint16_t*)(&Registers[static_cast<uint8_t>(Output)]))[0] = AdaptedData;
        Cycles++;
    }
    else if(SizeFlag == 3) {
        uint64_t Data = Input1 / Input2;
        uint8_t AdaptedData = static_cast<uint8_t>(Data);
        
        if(Data > AdaptedData){
            Regs.status |= CPU_STATUS_OVERFLOW; // Overflow error
        }
        if(Data == 0){
            Regs.status |= CPU_STATUS_ZERO; // Zero Flag
        }

        // Save to register
        ((uint8_t*)(&Registers[static_cast<uint8_t>(Output)]))[0] = AdaptedData;
        Cycles++;
    }

    return Cycles;
}

uint64_t Core::LSR(){
    uint64_t* Registers = (uint64_t*)&Regs;

    int Cycles = 1;

    uint64_t Output = read(Regs.rip);
    Regs.rip += 1;
    int64_t Input1 = read(Regs.rip);
    Regs.rip += (CurOP.AddressingMode1 != &Core::REG && CurOP.AddressingMode1 != &Core::RDI) ? 8 : 1;
    int64_t Input2 = read(Regs.rip);
    Regs.rip += (CurOP.AddressingMode2 != &Core::REG && CurOP.AddressingMode2 != &Core::RDI) ? 8 : 1;

    uint64_t SizeFlag = (Opcode & 0b110000) >> 4;

    // Input 1
    if(CurOP.AddressingMode1 == &Core::REG){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input1) >= sizeof(Regs) / 8){
            std::cout << "LSR: Attempted to load data from a non register: " << static_cast<uint8_t>(Input1) << std::endl;
        }
        Input1 = Registers[static_cast<uint8_t>(Input1)];

        // TODO + non-64Bit and must be same
    }
    else if(CurOP.AddressingMode1 == &Core::DIR){
        Input1 = read(Input1);
    }
    else if(CurOP.AddressingMode1 == &Core::IMM){
        Input1 = Input1;
    }
    else if(CurOP.AddressingMode1 == &Core::RDI){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input1) >= sizeof(Regs) / 8){
            std::cout << "LSR: Attempted to load address from a non register: " << static_cast<uint8_t>(Input1) << std::endl;
        }
        Input1 = Registers[static_cast<uint8_t>(Input1)];

        // Read in new data
        Input1 = read(Input1);
    }

    // Input 2
    if(CurOP.AddressingMode2 == &Core::REG){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input2) >= sizeof(Regs) / 8){
            std::cout << "LSR: Attempted to load data from a non register: " << static_cast<uint8_t>(Input2) << std::endl;
        }
        Input2 = Registers[static_cast<uint8_t>(Input2)];

        // TODO + non-64Bit and must be same
    }
    else if(CurOP.AddressingMode2 == &Core::DIR){
        Input2 = read(Input2);
    }
    else if(CurOP.AddressingMode2 == &Core::IMM){
        Input2 = Input2;
    }
    else if(CurOP.AddressingMode2 == &Core::RDI){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input2) >= sizeof(Regs) / 8){
            std::cout << "LSR: Attempted to load address from a non register: " << static_cast<uint8_t>(Input2) << std::endl;
        }
        Input2 = Registers[static_cast<uint8_t>(Input2)];

        // Read in new data
        Input2 = read(Input2);
    }

    if(static_cast<uint8_t>(Output) >= sizeof(Regs) / 8){
        std::cout << "LSR: Attempted to Write to a non register: " << static_cast<uint8_t>(Output) << std::endl;
    }

    if(!SizeFlag){
        Registers[static_cast<uint8_t>(Output)] = Input1 >> Input2;

        // TODO FLAG Checks here
    }
    else if(SizeFlag == 1) {
        uint64_t Data = Input1 >> Input2;
        uint32_t AdaptedData = static_cast<uint32_t>(Data);
        
        if(Data > AdaptedData){
            Regs.status |= CPU_STATUS_OVERFLOW; // Overflow error
        }
        if(Data == 0){
            Regs.status |= CPU_STATUS_ZERO; // Zero Flag
        }

        // Save to register
        ((uint32_t*)(&Registers[static_cast<uint8_t>(Output)]))[0] = AdaptedData;
        Cycles++;
    }
    else if(SizeFlag == 2) {
        uint64_t Data = Input1 >> Input2;
        uint16_t AdaptedData = static_cast<uint16_t>(Data);
        
        if(Data > AdaptedData){
            Regs.status |= CPU_STATUS_OVERFLOW; // Overflow error
        }
        if(Data == 0){
            Regs.status |= CPU_STATUS_ZERO; // Zero Flag
        }

        // Save to register
        ((uint16_t*)(&Registers[static_cast<uint8_t>(Output)]))[0] = AdaptedData;
        Cycles++;
    }
    else if(SizeFlag == 3) {
        uint64_t Data = Input1 >> Input2;
        uint8_t AdaptedData = static_cast<uint8_t>(Data);
        
        if(Data > AdaptedData){
            Regs.status |= CPU_STATUS_OVERFLOW; // Overflow error
        }
        if(Data == 0){
            Regs.status |= CPU_STATUS_ZERO; // Zero Flag
        }

        // Save to register
        ((uint8_t*)(&Registers[static_cast<uint8_t>(Output)]))[0] = AdaptedData;
        Cycles++;
    }

    return Cycles;
}

uint64_t Core::LSL(){
    uint64_t* Registers = (uint64_t*)&Regs;

    int Cycles = 1;

    uint64_t Output = read(Regs.rip);
    Regs.rip += 1;
    int64_t Input1 = read(Regs.rip);
    Regs.rip += (CurOP.AddressingMode1 != &Core::REG && CurOP.AddressingMode1 != &Core::RDI) ? 8 : 1;
    int64_t Input2 = read(Regs.rip);
    Regs.rip += (CurOP.AddressingMode2 != &Core::REG && CurOP.AddressingMode2 != &Core::RDI) ? 8 : 1;

    uint64_t SizeFlag = (Opcode & 0b110000) >> 4;

    // Input 1
    if(CurOP.AddressingMode1 == &Core::REG){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input1) >= sizeof(Regs) / 8){
            std::cout << "LSL: Attempted to load data from a non register: " << static_cast<uint8_t>(Input1) << std::endl;
        }
        Input1 = Registers[static_cast<uint8_t>(Input1)];

        // TODO + non-64Bit and must be same
    }
    else if(CurOP.AddressingMode1 == &Core::DIR){
        Input1 = read(Input1);
    }
    else if(CurOP.AddressingMode1 == &Core::IMM){
        Input1 = Input1;
    }
    else if(CurOP.AddressingMode1 == &Core::RDI){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input1) >= sizeof(Regs) / 8){
            std::cout << "LSL: Attempted to load address from a non register: " << static_cast<uint8_t>(Input1) << std::endl;
        }
        Input1 = Registers[static_cast<uint8_t>(Input1)];

        // Read in new data
        Input1 = read(Input1);
    }

    // Input 2
    if(CurOP.AddressingMode2 == &Core::REG){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input2) >= sizeof(Regs) / 8){
            std::cout << "LSL: Attempted to load data from a non register: " << static_cast<uint8_t>(Input2) << std::endl;
        }
        Input2 = Registers[static_cast<uint8_t>(Input2)];

        // TODO + non-64Bit and must be same
    }
    else if(CurOP.AddressingMode2 == &Core::DIR){
        Input2 = read(Input2);
    }
    else if(CurOP.AddressingMode2 == &Core::IMM){
        Input2 = Input2;
    }
    else if(CurOP.AddressingMode2 == &Core::RDI){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input2) >= sizeof(Regs) / 8){
            std::cout << "LSL: Attempted to load address from a non register: " << static_cast<uint8_t>(Input2) << std::endl;
        }
        Input2 = Registers[static_cast<uint8_t>(Input2)];

        // Read in new data
        Input2 = read(Input2);
    }

    if(static_cast<uint8_t>(Output) >= sizeof(Regs) / 8){
        std::cout << "LSL: Attempted to Write to a non register: " << static_cast<uint8_t>(Output) << std::endl;
    }

    if(!SizeFlag){
        Registers[static_cast<uint8_t>(Output)] = Input1 << Input2;

        // TODO FLAG Checks here
    }
    else if(SizeFlag == 1) {
        uint64_t Data = Input1 << Input2;
        uint32_t AdaptedData = static_cast<uint32_t>(Data);
        
        if(Data > AdaptedData){
            Regs.status |= CPU_STATUS_OVERFLOW; // Overflow error
        }
        if(Data == 0){
            Regs.status |= CPU_STATUS_ZERO; // Zero Flag
        }

        // Save to register
        ((uint32_t*)(&Registers[static_cast<uint8_t>(Output)]))[0] = AdaptedData;
        Cycles++;
    }
    else if(SizeFlag == 2) {
        uint64_t Data = Input1 << Input2;
        uint16_t AdaptedData = static_cast<uint16_t>(Data);
        
        if(Data > AdaptedData){
            Regs.status |= CPU_STATUS_OVERFLOW; // Overflow error
        }
        if(Data == 0){
            Regs.status |= CPU_STATUS_ZERO; // Zero Flag
        }

        // Save to register
        ((uint16_t*)(&Registers[static_cast<uint8_t>(Output)]))[0] = AdaptedData;
        Cycles++;
    }
    else if(SizeFlag == 3) {
        uint64_t Data = Input1 << Input2;
        uint8_t AdaptedData = static_cast<uint8_t>(Data);
        
        if(Data > AdaptedData){
            Regs.status |= CPU_STATUS_OVERFLOW; // Overflow error
        }
        if(Data == 0){
            Regs.status |= CPU_STATUS_ZERO; // Zero Flag
        }

        // Save to register
        ((uint8_t*)(&Registers[static_cast<uint8_t>(Output)]))[0] = AdaptedData;
        Cycles++;
    }

    return Cycles;
}

uint64_t Core::AND(){
    uint64_t* Registers = (uint64_t*)&Regs;

    int Cycles = 1;

    uint64_t Output = read(Regs.rip);
    Regs.rip += 1;
    int64_t Input1 = read(Regs.rip);
    Regs.rip += (CurOP.AddressingMode1 != &Core::REG && CurOP.AddressingMode1 != &Core::RDI) ? 8 : 1;
    int64_t Input2 = read(Regs.rip);
    Regs.rip += (CurOP.AddressingMode2 != &Core::REG && CurOP.AddressingMode2 != &Core::RDI) ? 8 : 1;

    uint64_t SizeFlag = (Opcode & 0b110000) >> 4;

    // Input 1
    if(CurOP.AddressingMode1 == &Core::REG){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input1) >= sizeof(Regs) / 8){
            std::cout << "AND: Attempted to load data from a non register: " << static_cast<uint8_t>(Input1) << std::endl;
        }
        Input1 = Registers[static_cast<uint8_t>(Input1)];

        // TODO + non-64Bit and must be same
    }
    else if(CurOP.AddressingMode1 == &Core::DIR){
        Input1 = read(Input1);
    }
    else if(CurOP.AddressingMode1 == &Core::IMM){
        Input1 = Input1;
    }
    else if(CurOP.AddressingMode1 == &Core::RDI){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input1) >= sizeof(Regs) / 8){
            std::cout << "AND: Attempted to load address from a non register: " << static_cast<uint8_t>(Input1) << std::endl;
        }
        Input1 = Registers[static_cast<uint8_t>(Input1)];

        // Read in new data
        Input1 = read(Input1);
    }

    // Input 2
    if(CurOP.AddressingMode2 == &Core::REG){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input2) >= sizeof(Regs) / 8){
            std::cout << "AND: Attempted to load data from a non register: " << static_cast<uint8_t>(Input2) << std::endl;
        }
        Input2 = Registers[static_cast<uint8_t>(Input2)];

        // TODO + non-64Bit and must be same
    }
    else if(CurOP.AddressingMode2 == &Core::DIR){
        Input2 = read(Input2);
    }
    else if(CurOP.AddressingMode2 == &Core::IMM){
        Input2 = Input2;
    }
    else if(CurOP.AddressingMode2 == &Core::RDI){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input2) >= sizeof(Regs) / 8){
            std::cout << "AND: Attempted to load address from a non register: " << static_cast<uint8_t>(Input2) << std::endl;
        }
        Input2 = Registers[static_cast<uint8_t>(Input2)];

        // Read in new data
        Input2 = read(Input2);
    }

    if(static_cast<uint8_t>(Output) >= sizeof(Regs) / 8){
        std::cout << "AND: Attempted to Write to a non register: " << static_cast<uint8_t>(Output) << std::endl;
    }

    if(!SizeFlag){
        Registers[static_cast<uint8_t>(Output)] = Input1 & Input2;

        // TODO FLAG Checks here
    }
    else if(SizeFlag == 1) {
        uint64_t Data = Input1 & Input2;
        uint32_t AdaptedData = static_cast<uint32_t>(Data);
        
        if(Data > AdaptedData){
            Regs.status |= CPU_STATUS_OVERFLOW; // Overflow error
        }
        if(Data == 0){
            Regs.status |= CPU_STATUS_ZERO; // Zero Flag
        }

        // Save to register
        ((uint32_t*)(&Registers[static_cast<uint8_t>(Output)]))[0] = AdaptedData;
        Cycles++;
    }
    else if(SizeFlag == 2) {
        uint64_t Data = Input1 & Input2;
        uint16_t AdaptedData = static_cast<uint16_t>(Data);
        
        if(Data > AdaptedData){
            Regs.status |= CPU_STATUS_OVERFLOW; // Overflow error
        }
        if(Data == 0){
            Regs.status |= CPU_STATUS_ZERO; // Zero Flag
        }

        // Save to register
        ((uint16_t*)(&Registers[static_cast<uint8_t>(Output)]))[0] = AdaptedData;
        Cycles++;
    }
    else if(SizeFlag == 3) {
        uint64_t Data = Input1 & Input2;
        uint8_t AdaptedData = static_cast<uint8_t>(Data);
        
        if(Data > AdaptedData){
            Regs.status |= CPU_STATUS_OVERFLOW; // Overflow error
        }
        if(Data == 0){
            Regs.status |= CPU_STATUS_ZERO; // Zero Flag
        }

        // Save to register
        ((uint8_t*)(&Registers[static_cast<uint8_t>(Output)]))[0] = AdaptedData;
        Cycles++;
    }

    return Cycles;
}

uint64_t Core::NOT(){
    uint64_t* Registers = (uint64_t*)&Regs;

    int Cycles = 1;

    int64_t Input1 = read(Regs.rip);
    Regs.rip += (CurOP.AddressingMode1 != &Core::REG && CurOP.AddressingMode1 != &Core::RDI) ? 8 : 1;
    int64_t Input2 = read(Regs.rip);
    Regs.rip += (CurOP.AddressingMode2 != &Core::REG && CurOP.AddressingMode2 != &Core::RDI) ? 8 : 1;

    uint64_t SizeFlag = (Opcode & 0b110000) >> 4;

    // Input 1
    if(CurOP.AddressingMode1 == &Core::REG){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input1) >= sizeof(Regs) / 8){
            std::cout << "NOT: Attempted to Save data to a non register: " << static_cast<uint8_t>(Input1) << std::endl;
        }
        Input1 = static_cast<uint8_t>(Input1);
    }
    else{
            std::cout << "NOT: Attempted to Save data to a non register: " << static_cast<uint8_t>(Input1) << std::endl;
    }

    // Input 2
    if(CurOP.AddressingMode2 == &Core::REG){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input2) >= sizeof(Regs) / 8){
            std::cout << "DIV: Attempted to load data from a non register: " << static_cast<uint8_t>(Input2) << std::endl;
        }
        Input2 = Registers[static_cast<uint8_t>(Input2)];

        // TODO + non-64Bit and must be same
    }
    else if(CurOP.AddressingMode2 == &Core::DIR){
        Input2 = read(Input2);
    }
    else if(CurOP.AddressingMode2 == &Core::IMM){
        Input2 = Input2;
    }
    else if(CurOP.AddressingMode2 == &Core::RDI){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input2) >= sizeof(Regs) / 8){
            std::cout << "DIV: Attempted to load address from a non register: " << static_cast<uint8_t>(Input2) << std::endl;
        }
        Input2 = Registers[static_cast<uint8_t>(Input2)];

        // Read in new data
        Input2 = read(Input2);
    }

    if(!SizeFlag){
        Registers[static_cast<uint8_t>(Input1)] = Input2 ^ 0xFFFFFFFFFFFFFFFF;

        // TODO FLAG Checks here
    }
    else if(SizeFlag == 1) {
        uint64_t Data = Input2 ^ 0xFFFFFFFF;
        uint32_t AdaptedData = static_cast<uint32_t>(Data);
        
        if(Data > AdaptedData){
            Regs.status |= CPU_STATUS_OVERFLOW; // Overflow error
        }
        if(Data == 0){
            Regs.status |= CPU_STATUS_ZERO; // Zero Flag
        }

        // Save to register
        ((uint32_t*)(&Registers[static_cast<uint8_t>(Input1)]))[0] = AdaptedData;
        Cycles++;
    }
    else if(SizeFlag == 2) {
        uint64_t Data = Input2 ^ 0xFFFF;
        uint16_t AdaptedData = static_cast<uint16_t>(Data);
        
        if(Data > AdaptedData){
            Regs.status |= CPU_STATUS_OVERFLOW; // Overflow error
        }
        if(Data == 0){
            Regs.status |= CPU_STATUS_ZERO; // Zero Flag
        }

        // Save to register
        ((uint16_t*)(&Registers[static_cast<uint8_t>(Input1)]))[0] = AdaptedData;
        Cycles++;
    }
    else if(SizeFlag == 3) {
        uint64_t Data = Input2 ^ 0xFF;
        uint8_t AdaptedData = static_cast<uint8_t>(Data);
        
        if(Data > AdaptedData){
            Regs.status |= CPU_STATUS_OVERFLOW; // Overflow error
        }
        if(Data == 0){
            Regs.status |= CPU_STATUS_ZERO; // Zero Flag
        }

        // Save to register
        ((uint8_t*)(&Registers[static_cast<uint8_t>(Input1)]))[0] = AdaptedData;
        Cycles++;
    }

    return Cycles;
}

uint64_t Core::OR(){
    uint64_t* Registers = (uint64_t*)&Regs;

    int Cycles = 1;

    uint64_t Output = read(Regs.rip);
    Regs.rip += 1;
    int64_t Input1 = read(Regs.rip);
    Regs.rip += (CurOP.AddressingMode1 != &Core::REG && CurOP.AddressingMode1 != &Core::RDI) ? 8 : 1;
    int64_t Input2 = read(Regs.rip);
    Regs.rip += (CurOP.AddressingMode2 != &Core::REG && CurOP.AddressingMode2 != &Core::RDI) ? 8 : 1;

    uint64_t SizeFlag = (Opcode & 0b110000) >> 4;

    // Input 1
    if(CurOP.AddressingMode1 == &Core::REG){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input1) >= sizeof(Regs) / 8){
            std::cout << "OR: Attempted to load data from a non register: " << static_cast<uint8_t>(Input1) << std::endl;
        }
        Input1 = Registers[static_cast<uint8_t>(Input1)];

        // TODO + non-64Bit and must be same
    }
    else if(CurOP.AddressingMode1 == &Core::DIR){
        Input1 = read(Input1);
    }
    else if(CurOP.AddressingMode1 == &Core::IMM){
        Input1 = Input1;
    }
    else if(CurOP.AddressingMode1 == &Core::RDI){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input1) >= sizeof(Regs) / 8){
            std::cout << "OR: Attempted to load address from a non register: " << static_cast<uint8_t>(Input1) << std::endl;
        }
        Input1 = Registers[static_cast<uint8_t>(Input1)];

        // Read in new data
        Input1 = read(Input1);
    }

    // Input 2
    if(CurOP.AddressingMode2 == &Core::REG){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input2) >= sizeof(Regs) / 8){
            std::cout << "OR: Attempted to load data from a non register: " << static_cast<uint8_t>(Input2) << std::endl;
        }
        Input2 = Registers[static_cast<uint8_t>(Input2)];

        // TODO + non-64Bit and must be same
    }
    else if(CurOP.AddressingMode2 == &Core::DIR){
        Input2 = read(Input2);
    }
    else if(CurOP.AddressingMode2 == &Core::IMM){
        Input2 = Input2;
    }
    else if(CurOP.AddressingMode2 == &Core::RDI){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input2) >= sizeof(Regs) / 8){
            std::cout << "OR: Attempted to load address from a non register: " << static_cast<uint8_t>(Input2) << std::endl;
        }
        Input2 = Registers[static_cast<uint8_t>(Input2)];

        // Read in new data
        Input2 = read(Input2);
    }

    if(static_cast<uint8_t>(Output) >= sizeof(Regs) / 8){
        std::cout << "OR: Attempted to Write to a non register: " << static_cast<uint8_t>(Output) << std::endl;
    }

    if(!SizeFlag){
        Registers[static_cast<uint8_t>(Output)] = Input1 | Input2;

        // TODO FLAG Checks here
    }
    else if(SizeFlag == 1) {
        uint64_t Data = Input1 | Input2;
        uint32_t AdaptedData = static_cast<uint32_t>(Data);
        
        if(Data > AdaptedData){
            Regs.status |= CPU_STATUS_OVERFLOW; // Overflow error
        }
        if(Data == 0){
            Regs.status |= CPU_STATUS_ZERO; // Zero Flag
        }

        // Save to register
        ((uint32_t*)(&Registers[static_cast<uint8_t>(Output)]))[0] = AdaptedData;
        Cycles++;
    }
    else if(SizeFlag == 2) {
        uint64_t Data = Input1 | Input2;
        uint16_t AdaptedData = static_cast<uint16_t>(Data);
        
        if(Data > AdaptedData){
            Regs.status |= CPU_STATUS_OVERFLOW; // Overflow error
        }
        if(Data == 0){
            Regs.status |= CPU_STATUS_ZERO; // Zero Flag
        }

        // Save to register
        ((uint16_t*)(&Registers[static_cast<uint8_t>(Output)]))[0] = AdaptedData;
        Cycles++;
    }
    else if(SizeFlag == 3) {
        uint64_t Data = Input1 | Input2;
        uint8_t AdaptedData = static_cast<uint8_t>(Data);
        
        if(Data > AdaptedData){
            Regs.status |= CPU_STATUS_OVERFLOW; // Overflow error
        }
        if(Data == 0){
            Regs.status |= CPU_STATUS_ZERO; // Zero Flag
        }

        // Save to register
        ((uint8_t*)(&Registers[static_cast<uint8_t>(Output)]))[0] = AdaptedData;
        Cycles++;
    }

    return Cycles;
}

uint64_t Core::XOR(){
    uint64_t* Registers = (uint64_t*)&Regs;

    int Cycles = 1;

    uint64_t Output = read(Regs.rip);
    Regs.rip += 1;
    int64_t Input1 = read(Regs.rip);
    Regs.rip += (CurOP.AddressingMode1 != &Core::REG && CurOP.AddressingMode1 != &Core::RDI) ? 8 : 1;
    int64_t Input2 = read(Regs.rip);
    Regs.rip += (CurOP.AddressingMode2 != &Core::REG && CurOP.AddressingMode2 != &Core::RDI) ? 8 : 1;

    uint64_t SizeFlag = (Opcode & 0b110000) >> 4;

    // Input 1
    if(CurOP.AddressingMode1 == &Core::REG){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input1) >= sizeof(Regs) / 8){
            std::cout << "XOR: Attempted to load data from a non register: " << static_cast<uint8_t>(Input1) << std::endl;
        }
        Input1 = Registers[static_cast<uint8_t>(Input1)];

        // TODO + non-64Bit and must be same
    }
    else if(CurOP.AddressingMode1 == &Core::DIR){
        Input1 = read(Input1);
    }
    else if(CurOP.AddressingMode1 == &Core::IMM){
        Input1 = Input1;
    }
    else if(CurOP.AddressingMode1 == &Core::RDI){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input1) >= sizeof(Regs) / 8){
            std::cout << "XOR: Attempted to load address from a non register: " << static_cast<uint8_t>(Input1) << std::endl;
        }
        Input1 = Registers[static_cast<uint8_t>(Input1)];

        // Read in new data
        Input1 = read(Input1);
    }

    // Input 2
    if(CurOP.AddressingMode2 == &Core::REG){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input2) >= sizeof(Regs) / 8){
            std::cout << "XOR: Attempted to load data from a non register: " << static_cast<uint8_t>(Input2) << std::endl;
        }
        Input2 = Registers[static_cast<uint8_t>(Input2)];

        // TODO + non-64Bit and must be same
    }
    else if(CurOP.AddressingMode2 == &Core::DIR){
        Input2 = read(Input2);
    }
    else if(CurOP.AddressingMode2 == &Core::IMM){
        Input2 = Input2;
    }
    else if(CurOP.AddressingMode2 == &Core::RDI){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input2) >= sizeof(Regs) / 8){
            std::cout << "XOR: Attempted to load address from a non register: " << static_cast<uint8_t>(Input2) << std::endl;
        }
        Input2 = Registers[static_cast<uint8_t>(Input2)];

        // Read in new data
        Input2 = read(Input2);
    }

    if(static_cast<uint8_t>(Output) >= sizeof(Regs) / 8){
        std::cout << "XOR: Attempted to Write to a non register: " << static_cast<uint8_t>(Output) << std::endl;
    }

    if(!SizeFlag){
        Registers[static_cast<uint8_t>(Output)] = Input1 ^ Input2;

        // TODO FLAG Checks here
    }
    else if(SizeFlag == 1) {
        uint64_t Data = Input1 ^ Input2;
        uint32_t AdaptedData = static_cast<uint32_t>(Data);
        
        if(Data > AdaptedData){
            Regs.status |= CPU_STATUS_OVERFLOW; // Overflow error
        }
        if(Data == 0){
            Regs.status |= CPU_STATUS_ZERO; // Zero Flag
        }

        // Save to register
        ((uint32_t*)(&Registers[static_cast<uint8_t>(Output)]))[0] = AdaptedData;
        Cycles++;
    }
    else if(SizeFlag == 2) {
        uint64_t Data = Input1 ^ Input2;
        uint16_t AdaptedData = static_cast<uint16_t>(Data);
        
        if(Data > AdaptedData){
            Regs.status |= CPU_STATUS_OVERFLOW; // Overflow error
        }
        if(Data == 0){
            Regs.status |= CPU_STATUS_ZERO; // Zero Flag
        }

        // Save to register
        ((uint16_t*)(&Registers[static_cast<uint8_t>(Output)]))[0] = AdaptedData;
        Cycles++;
    }
    else if(SizeFlag == 3) {
        uint64_t Data = Input1 ^ Input2;
        uint8_t AdaptedData = static_cast<uint8_t>(Data);
        
        if(Data > AdaptedData){
            Regs.status |= CPU_STATUS_OVERFLOW; // Overflow error
        }
        if(Data == 0){
            Regs.status |= CPU_STATUS_ZERO; // Zero Flag
        }

        // Save to register
        ((uint8_t*)(&Registers[static_cast<uint8_t>(Output)]))[0] = AdaptedData;
        Cycles++;
    }

    return Cycles;
}

uint64_t Core::PUSH(){
    int Cycles = 1;
    uint64_t Reg = read(Regs.rip);
    Regs.rip += 1;
    uint64_t* Registers = (uint64_t*)&Regs;
    
    if(static_cast<uint8_t>(Reg) >= sizeof(Regs) / 8){
        std::cout << "PUSH: Attempted to PUSH a non register: " << static_cast<uint8_t>(Reg) << std::endl;
    }

    write(Regs.rsp, Registers[static_cast<uint8_t>(Reg)]);
    Regs.rsp -= 8;

    return Cycles;
}

uint64_t Core::POP(){
    int Cycles = 1;
    uint64_t Reg = read(Regs.rip);
    Regs.rip += 1;
    uint64_t* Registers = (uint64_t*)&Regs;
    
    if(static_cast<uint8_t>(Reg) >= sizeof(Regs) / 8){
        std::cout << "POP: Attempted to POP to a non register: " << static_cast<uint8_t>(Reg) << std::endl;
    }

    Regs.rsp += 8;
    Registers[static_cast<uint8_t>(Reg)] = read(Regs.rsp);

    return Cycles;
}
    
uint64_t Core::CMP(){
    uint64_t* Registers = (uint64_t*)&Regs;

    int Cycles = 1;

    uint8_t CMP = static_cast<uint8_t>(read(Regs.rip));
    Regs.rip += 1;
    uint64_t Input1 = read(Regs.rip);
    Regs.rip += (CurOP.AddressingMode1 != &Core::REG && CurOP.AddressingMode1 != &Core::RDI) ? 8 : 1;
    uint64_t Input2 = read(Regs.rip);
    Regs.rip += (CurOP.AddressingMode2 != &Core::REG && CurOP.AddressingMode2 != &Core::RDI) ? 8 : 1;

    uint64_t SizeFlag = (Opcode & 0b110000) >> 4;

    // Input 1
    if(CurOP.AddressingMode1 == &Core::REG){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input1) >= sizeof(Regs) / 8){
            std::cout << "CMP: Attempted to load data from a non register: " << static_cast<uint8_t>(Input1) << std::endl;
        }
        Input1 = Registers[static_cast<uint8_t>(Input1)];
    }
    else if(CurOP.AddressingMode1 == &Core::DIR){
        Input1 = read(Input1);
    }
    else if(CurOP.AddressingMode1 == &Core::IMM){
        Input1 = Input1;
    }
    else if(CurOP.AddressingMode1 == &Core::RDI){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input1) >= sizeof(Regs) / 8){
            std::cout << "CMP: Attempted to load address from a non register: " << static_cast<uint8_t>(Input1) << std::endl;
        }
        Input1 = Registers[static_cast<uint8_t>(Input1)];

        // Read in new data
        Input1 = read(Input1);
    }

    // Input 2
    if(CurOP.AddressingMode2 == &Core::REG){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input2) >= sizeof(Regs) / 8){
            std::cout << "CMP: Attempted to load data from a non register: " << static_cast<uint8_t>(Input2) << std::endl;
        }
        Input2 = Registers[static_cast<uint8_t>(Input2)];
    }
    else if(CurOP.AddressingMode2 == &Core::DIR){
        Input2 = read(Input2);
    }
    else if(CurOP.AddressingMode2 == &Core::IMM){
        Input2 = Input2;
    }
    else if(CurOP.AddressingMode2 == &Core::RDI){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input2) >= sizeof(Regs) / 8){
            std::cout << "CMP: Attempted to load address from a non register: " << static_cast<uint8_t>(Input2) << std::endl;
        }
        Input2 = Registers[static_cast<uint8_t>(Input2)];

        // Read in new data
        Input2 = read(Input2);
    }

    uint64_t Data1 = 0;
    uint64_t Data2 = 0;

    if(!SizeFlag){
        Data1 = Input1;
        Data2 = Input2;
    }
    else if(SizeFlag == 1) {
        Data1 = static_cast<uint32_t>(Data1);
        Data2 = static_cast<uint32_t>(Data2);
    }
    else if(SizeFlag == 2) {
        Data1 = static_cast<uint16_t>(Data1);
        Data2 = static_cast<uint16_t>(Data2);
    }
    else if(SizeFlag == 3) {
        Data1 = static_cast<uint8_t>(Data1);
        Data2 = static_cast<uint8_t>(Data2);
    }

    // Compare
    if(CMP == CMP_EQU){
        if(Data1 == Data2){
            Regs.status |= CPU_STATUS_CMP;
        }
    }
    else if(CMP == CMP_NEQ){
        if(Data1 != Data2){
            Regs.status |= CPU_STATUS_CMP;
        }
    }
    else if(CMP == CMP_LEQ){
        if(Data1 <= Data2){
            Regs.status |= CPU_STATUS_CMP;
        }
    }
    else if(CMP == CMP_GEQ){
        if(Data1 >= Data2){
            Regs.status |= CPU_STATUS_CMP;
        }
    }
    else{
        std::cout << "CMP: Invalid cmp" << std::endl;
    }

    return Cycles;
}

uint64_t Core::JC(){
    if(!(Regs.status & CPU_STATUS_CMP)){
        Regs.rip += 8;
        return 0;
    }

    uint64_t JMPArg = read(Regs.rip);
    Regs.rip += (CurOP.AddressingMode1 != &Core::REG && CurOP.AddressingMode1 != &Core::RDI) ? 8 : 1;
    
    // Get the value
    if(CurOP.AddressingMode1 == &Core::REG){
        // Identify Reg Based on next data
        uint64_t* Registers = (uint64_t*)&Regs;
        if(static_cast<uint8_t>(JMPArg) >= sizeof(Regs) / 8){
            std::cout << "JC: Attempted to load address from a non register: " << static_cast<uint8_t>(JMPArg) << std::endl;
        }
        Regs.rip = Registers[static_cast<uint8_t>(JMPArg)];
    }
    else if(CurOP.AddressingMode1 == &Core::DIR){
        Regs.rip = read(JMPArg);
    }
    else if(CurOP.AddressingMode1 == &Core::IMM){
        Regs.rip = JMPArg;
    }
    else if(CurOP.AddressingMode1 == &Core::RDI){
        // Identify Reg Based on next data
        uint64_t* Registers = (uint64_t*)&Regs;
        if(static_cast<uint8_t>(JMPArg) >= sizeof(Regs) / 8){
            std::cout << "JC: Attempted to load addressData from a non register: " << static_cast<uint8_t>(JMPArg) << std::endl;
        }
        Regs.rip = Registers[static_cast<uint8_t>(JMPArg)];

        // Read in new data
        Regs.rip = read(Regs.rip);
    }

    return 1;
}

uint64_t Core::CALL(){
    uint64_t* Registers = (uint64_t*)&Regs;

    int Cycles = 1;

    uint64_t Input1 = read(Regs.rip);
    Regs.rip += (CurOP.AddressingMode1 != &Core::REG && CurOP.AddressingMode1 != &Core::RDI) ? 8 : 1;

    uint64_t SizeFlag = (Opcode & 0b110000) >> 4;

    // Input 1
    if(CurOP.AddressingMode1 == &Core::REG){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input1) >= sizeof(Regs) / 8){
            std::cout << "CMP: Attempted to load data from a non register: " << static_cast<uint8_t>(Input1) << std::endl;
        }
        Input1 = Registers[static_cast<uint8_t>(Input1)];
    }
    else if(CurOP.AddressingMode1 == &Core::DIR){
        Input1 = read(Input1);
    }
    else if(CurOP.AddressingMode1 == &Core::IMM){
        Input1 = Input1;
    }
    else if(CurOP.AddressingMode1 == &Core::RDI){
        // Identify Reg Based on next data
        if(static_cast<uint8_t>(Input1) >= sizeof(Regs) / 8){
            std::cout << "CMP: Attempted to load address from a non register: " << static_cast<uint8_t>(Input1) << std::endl;
        }
        Input1 = Registers[static_cast<uint8_t>(Input1)];

        // Read in new data
        Input1 = read(Input1);
    }

    // Push old rip
    write(Regs.rsp, Regs.rip);
    Regs.rsp -= 8;

    // Move to instruction
    Regs.rip = Input1;

    return 1;
}

uint64_t Core::RET(){
    int Cycles = 1;

    // Push old rip
    Regs.rsp += 8;
    uint64_t oldRIP = read(Regs.rsp);

    // Move to instruction
    Regs.rip = oldRIP;

    return 1;
}