#pragma once

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
#define INSTRUCTION_INCR    0b0000010101 // INC R, [X]
#define INSTRUCTION_DECR    0b0000010110 // DEC R, [X]
#define INSTRUCTION_INC     0b0000010111 // INCR R
#define INSTRUCTION_DEC     0b0000011000 // DECR R
#define INSTRUCTION_IOW     0b0000011001 // IOW T, [Y] (IO Device) (Data)
#define INSTRUCTION_IOR     0b0000011010 // IOR R, T, [Y] (Register) (IO Device)

#define GenCode(inst, addr1, addr2, bitmode) ((inst << 6) + (bitmode << 4) + (addr1 << 2) + addr2)