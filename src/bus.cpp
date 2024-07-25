#include <Bus.h>

#include <iostream>

using namespace UniCPUEmulator;
using namespace std::chrono;

Bus::Bus() {
    ram = new RAM(256 * 1024 * 1024);

    auto CurrentTime = high_resolution_clock::now();
    LastTime = CurrentTime;
}

Bus::~Bus() {
    delete ram;
}

bool Bus::clock() {
    SystemClockCount++;
    ClockSpeedCounter++;

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

    // TODO Core Reset
}
