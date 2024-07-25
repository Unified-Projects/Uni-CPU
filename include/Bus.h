#pragma once

#include <CPU/Core.h>
#include <Memory.h>

#include <chrono>

namespace UniCPUEmulator
{
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
        // TODO

        // Serial
        // TODO

        // Inputs
        // TODOzs

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
