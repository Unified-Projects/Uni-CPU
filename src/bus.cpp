#include <Bus.h>

#include <iostream>
#include <cstring>

using namespace UniCPUEmulator;
using namespace std::chrono;

Bus::Bus() 
{
    ram = new RAM(256 * 1024 * 1024);

    auto CurrentTime = high_resolution_clock::now();
    LastTime = CurrentTime;

    cpu = new Core();
    cpu->LoadBus(this);
}

Bus::~Bus() {
    delete ram;
}

bool Bus::clock() {
    SystemClockCount++;
    ClockSpeedCounter++;

    cpu->clock();

    auto CurrentTime = high_resolution_clock::now();
    auto Duration = duration_cast<nanoseconds>(CurrentTime - LastTime).count();
    // If duration is non-zero, calculate the clock speed
    if (Duration > 0) {
        // Accumulate the duration
        TotalTime += Duration;

        // Calculate the clock speed every 1 second
        if (TotalTime >= 1 * 1000 * 1000 * 1000) {
            ClockSpeed = ClockSpeedCounter;
            ClockSpeedCounter = 0;
            TotalTime = 0;
        }

        LastTime = CurrentTime;
    }

    return true;
}

void Bus::reset() {
    delete ram;
    ram = new RAM(256 * 1024 * 1024);

    delete cpu;
    cpu = new Core;
    cpu->LoadBus(this);
}


void Bus::memWrite(uint64_t addr, uint64_t data){
    // TODO IO Mapping
    ram->GetDataBuffer(addr)[0] = data;
}
uint64_t Bus::memRead(uint64_t addr, bool bReadOnly){
    // TODO IO Mapping
    return (ram->GetDataBuffer(addr))[0];
}