#pragma once

#include <stdint.h>
#include <stdlib.h>

namespace UniCPUEmulator
{
    class RAM{
    protected:
        uint8_t* DataBuffer = 0;

    public:
        RAM(uint64_t DataSize) {
            DataBuffer = (uint8_t*)malloc(DataSize);
        }

        ~RAM(){
            delete DataBuffer;
        }

        inline uint8_t* GetDataBuffer() {return DataBuffer;}

    public:
        // READ WRITE FUNCTION
    };

    class ROM{

    };
} // namespace UniCPUEmulator
