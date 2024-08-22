#pragma once

#include <CPU/Core.h>
#include <Memory.h>

#include <chrono>

namespace UniCPUEmulator
{
    struct IOMap{
        uint64_t Address = 0;
        uint64_t IOBuffer = 0;
        uint64_t Size = 0;    
    };

    struct Framebuffer{
        uint64_t Buffer;
        uint64_t Size;
        uint64_t Width;
        uint64_t Height;
    };

    class Bus{
    public:
        Bus();
        ~Bus();

    public: // Devices
        // CPU
        Core* cpu; // TO [] with multicore
        
        // Ram
        RAM* ram;

        // IO Mapping
        std::vector<IOMap> Mappings = {};

        // Serial
        // TODO

        // Inputs
        // TODOzs
        uint8_t* SDImage = nullptr;

        // Video
        Framebuffer VideoOutput = {};

        // Clock Count
        uint64_t SystemClockCount = 0;
        uint64_t ClockSpeedCounter = 0;
        uint64_t ClockSpeed = 0;
        std::chrono::time_point<std::chrono::high_resolution_clock> LastTime = std::chrono::high_resolution_clock::now();
        std::chrono::system_clock::rep TotalTime = {};

    public: // Bus Read and Write
        void memWrite(uint64_t addr, uint64_t data);
        uint64_t memRead(uint64_t addr, bool bReadOnly = false);

    public: // Interface
        void reset();
        bool clock();
    };
} // namespace UniCPUEmulator
