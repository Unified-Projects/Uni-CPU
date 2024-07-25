#pragma once

#include <stdint.h>
#include <stdlib.h>

namespace UniCPUEmulator
{
    class RAM{
    protected:
        uint64_t* DataBuffer = 0;

    public:
        RAM(uint64_t DataSize) {
            DataBuffer = (uint64_t*)malloc(DataSize);
        }

        ~RAM(){
            delete DataBuffer;
        }

        inline uint64_t* GetDataBuffer(uint64_t Offset = 0) {
            uint8_t* ByteBuffer = (uint8_t*)DataBuffer;
            return (uint64_t*)(ByteBuffer+Offset);
        }
    };

    class ROM{

    };
} // namespace UniCPUEmulator
