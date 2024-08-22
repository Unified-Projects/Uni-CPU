#include <Bus.h>

#include <iostream>
#include <cstring>
#include <fstream>

using namespace UniCPUEmulator;
using namespace std::chrono;

Bus::Bus() 
{
    ram = new RAM(256 * 1024 * 1024);

    auto CurrentTime = high_resolution_clock::now();
    LastTime = CurrentTime;

    cpu = new Core();
    cpu->LoadBus(this);

    VideoOutput = {
        (uint64_t)(new uint64_t[1280 * 720 * 4]),
        1280 * 720 * 4,
        1280,
        720
    };

    Mappings.push_back({0x1000000000000, VideoOutput.Buffer, VideoOutput.Size});

    std::string filename = "../UniFS.img";
    std::ifstream file(filename, std::ios::binary);

    if (!file.is_open()) {
        std::cerr << "Could not open the img: " << filename << std::endl;
        return;
    }

    std::vector<char> buffer((std::istreambuf_iterator<char>(file)), std::istreambuf_iterator<char>());
    file.close();

    std::cout << "Read " << buffer.size() << " bytes from img " << filename << std::endl;

    for(int i = 0; i < 512; i++){
        std::cout << std::hex << std::setw(2) << (0xFF & (buffer[i])) << " ";
    }

    std::cout << std::dec << std::endl;

    SDImage = new uint8_t[buffer.size()];
    memcpy((void*)SDImage, (void*)buffer.data(), buffer.size());
    Mappings.push_back({0x2000000000000, (uint64_t)SDImage, buffer.size()});
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
    for(auto x : Mappings){
        if(addr >= x.Address && addr < x.Address + x.Size){
            ((uint64_t*)(x.IOBuffer + (addr - x.Address)))[0] = data;
            return;
        }
    }

    ram->GetDataBuffer(addr)[0] = data;
}

uint64_t Bus::memRead(uint64_t addr, bool bReadOnly){
    for(auto x : Mappings){
        if(addr >= x.Address && addr < x.Address + x.Size){
            return ((uint64_t*)(x.IOBuffer + (addr - x.Address)))[0];
        }
    }

    return (ram->GetDataBuffer(addr))[0];
}