#pragma once

#define REG_MODE_XXX 0b00
#define REG_MODE_REG 0b00
#define REG_MODE_DIR 0b01
#define REG_MODE_IMM 0b10
#define REG_MODE_RDI 0b11

#define INSTRUCTION_HALT    0b0000000001
#define INSTRUCTION_MOV     0b0000000010
#define INSTRUCTION_JMP     0b0000000011
#define INSTRUCTION_ADD     0b0000000100
#define INSTRUCTION_PUSH    0b0000000101
#define INSTRUCTION_POP     0b0000000110

#define GenCode(inst, addr1, addr2, bitmode) ((inst << 6) + (bitmode << 4) + (addr1 << 2) + addr2)