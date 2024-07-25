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
        // TODO

        // Clock Count
        uint64_t SystemClockCount = 0;
        uint64_t ClockSpeedCounter = 0;
        uint64_t ClockSpeed = 0;
        std::chrono::_V2::system_clock::time_point LastTime = {};
        std::chrono::_V2::system_clock::rep TotalTime = {};

    public: // Bus Read and Write
        void memWrite(uint64_t addr, uint64_t data);
        uint64_t memRead(uint64_t addr, bool bReadOnly = false);

    public: // Interface
        void reset();
        bool clock();
    };
} // namespace UniCPUEmulator
