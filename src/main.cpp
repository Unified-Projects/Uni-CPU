#include <iostream>
#include <fstream>
#include <vector>
#include <iomanip> 
#include <thread>

#include <Bus.h>

using namespace std::chrono;

int main(int argc, char* argv[]) {
    if (argc != 2) {
        std::cerr << "Usage: " << argv[0] << " <filename>" << std::endl;
        return 1;
    }

    std::string filename = argv[1];
    std::ifstream file(filename, std::ios::binary);

    if (!file.is_open()) {
        std::cerr << "Could not open the file: " << filename << std::endl;
        return 1;
    }

    std::vector<char> buffer((std::istreambuf_iterator<char>(file)), std::istreambuf_iterator<char>());
    file.close();

    std::cout << "Read " << buffer.size() << " bytes from file " << filename << std::endl;

    // Print bytes as hexadecimal values
    for (size_t i = 0; i < buffer.size(); ++i) {
        std::cout << std::hex << (0xFF & buffer[i]) << " ";
    }
    std::cout << std::dec << std::endl;

    // Create Emulator
    UniCPUEmulator::Bus Emulator;
    Emulator.reset();

    // Load it into ram
    memcpy(Emulator.ram->GetDataBuffer(), buffer.data(), buffer.size());

    std::cout << std::endl;

    auto LastPrintTime = high_resolution_clock::now();
    int Uptime = 0;
    // constexpr auto ClockPeriod = 0; // No Limit
    constexpr auto ClockPeriod = 1000; // 1 MHz (Any higher wont do much)
    // constexpr auto ClockPeriod = 1000*1000; // 1 KHz
    // constexpr auto ClockPeriod = 1000*1000*1000; // 1 Hz

    while (true)
    {
        auto CycleStartTime = high_resolution_clock::now();

        Emulator.clock();

        auto CurrentTime = high_resolution_clock::now();
        auto DurSinceLast = duration_cast<seconds>(CurrentTime - LastPrintTime).count();

        if (DurSinceLast >= 1) {
            std::cout << "\rClockspeed: " << std::setw(10) << Emulator.ClockSpeed 
                      << "       Uptime: " << std::setw(6) << Uptime++ << "        " << std::flush;
            LastPrintTime = CurrentTime;
        }

        // Calculate the time taken for the cycle and sleep if needed
        auto CycleEndTime = high_resolution_clock::now();
        auto CycleDurationNano = duration_cast<nanoseconds>(CycleEndTime - CycleStartTime).count();
        if (CycleDurationNano < ClockPeriod) {
            // std::this_thread::sleep_for(nanoseconds(ClockPeriod - CycleDurationNano));

            auto RemainingTime = ClockPeriod - CycleDurationNano;

            // Busy-wait for the remaining time
            auto WaitEnd = high_resolution_clock::now() + nanoseconds(RemainingTime);
            while (high_resolution_clock::now() < WaitEnd) {
                // Do nothing, just wait
            }
        }
    }
    

    return 0;
}
