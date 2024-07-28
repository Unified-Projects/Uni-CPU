#include <iostream>
#include <fstream>
#include <vector>
#include <iomanip> 
#include <thread>
#include <cstring>

#include <Bus.h>

using namespace std::chrono;

#ifdef __APPLE__
    #include <SDL2/SDL.h>

    std::atomic<bool> running(true);


    void RenderFramebuffer(const UniCPUEmulator::Framebuffer* framebuffer) {
        if (SDL_Init(SDL_INIT_VIDEO) != 0) {
            std::cerr << "SDL_Init Error: " << SDL_GetError() << std::endl;
            return;
        }

        SDL_Window* window = SDL_CreateWindow("Framebuffer Renderer", 
                                            SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, 
                                            framebuffer->Width, framebuffer->Height, 
                                            SDL_WINDOW_SHOWN);
        if (window == nullptr) {
            std::cerr << "SDL_CreateWindow Error: " << SDL_GetError() << std::endl;
            SDL_Quit();
            return;
        }

        SDL_Renderer* renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
        if (renderer == nullptr) {
            std::cerr << "SDL_CreateRenderer Error: " << SDL_GetError() << std::endl;
            SDL_DestroyWindow(window);
            SDL_Quit();
            return;
        }

        SDL_Texture* texture = SDL_CreateTexture(renderer, SDL_PIXELFORMAT_ARGB8888, SDL_TEXTUREACCESS_STATIC, framebuffer->Width, framebuffer->Height);
        if (texture == nullptr) {
            std::cerr << "SDL_CreateTexture Error: " << SDL_GetError() << std::endl;
            SDL_DestroyRenderer(renderer);
            SDL_DestroyWindow(window);
            SDL_Quit();
            return;
        }

        bool running = true;
        while (running) {
            SDL_Event event;
            while (SDL_PollEvent(&event)) {
                if (event.type == SDL_QUIT) {
                    running = false;
                }
            }

            // Update the texture with the current framebuffer content
            SDL_UpdateTexture(texture, NULL, (void*)framebuffer->Buffer, framebuffer->Width * sizeof(uint32_t));

            SDL_RenderClear(renderer);
            SDL_RenderCopy(renderer, texture, NULL, NULL);
            SDL_RenderPresent(renderer);
            SDL_Delay(16); // ~60 FPS
        }

        SDL_DestroyTexture(texture);
        SDL_DestroyRenderer(renderer);
        SDL_DestroyWindow(window);
        SDL_Quit();
    }
#elif defined _WIN32 || defined _WIN64
    std::atomic<bool> running(true);

    // Forward declaration of the window procedure function
    LRESULT CALLBACK WindowProc(HWND hwnd, UINT uMsg, WPARAM wParam, LPARAM lParam);

    void RenderFramebuffer(const UniCPUEmulator::Framebuffer* framebuffer) {
        const char* CLASS_NAME = "Framebuffer Renderer";

        WNDCLASS wc = {};
        wc.lpfnWndProc = WindowProc;
        wc.hInstance = GetModuleHandle(NULL);
        wc.lpszClassName = CLASS_NAME;

        if (!RegisterClass(&wc)) {
            std::cerr << "RegisterClass Error: " << GetLastError() << std::endl;
            return;
        }

        HWND hwnd = CreateWindowEx(
            0,
            CLASS_NAME,
            "Framebuffer Renderer",
            WS_OVERLAPPEDWINDOW,
            CW_USEDEFAULT, CW_USEDEFAULT, framebuffer->Width, framebuffer->Height,
            NULL,
            NULL,
            GetModuleHandle(NULL),
            NULL
        );

        if (hwnd == NULL) {
            std::cerr << "CreateWindowEx Error: " << GetLastError() << std::endl;
            return;
        }

        ShowWindow(hwnd, SW_SHOW);

        HDC hdc = GetDC(hwnd);
        HBITMAP hbm = CreateCompatibleBitmap(hdc, framebuffer->Width, framebuffer->Height);
        HDC hdcMem = CreateCompatibleDC(hdc);
        HGDIOBJ oldBitmap = SelectObject(hdcMem, hbm);

        while (running) {
            MSG msg;
            while (PeekMessage(&msg, NULL, 0, 0, PM_REMOVE)) {
                if (msg.message == WM_QUIT) {
                    running = false;
                }
                TranslateMessage(&msg);
                DispatchMessage(&msg);
            }

            // Update the bitmap with the framebuffer content
            SetDIBits(hdcMem, hbm, 0, framebuffer->Height, framebuffer->Buffer, (BITMAPINFO*)&framebuffer->Width, DIB_RGB_COLORS);

            BitBlt(hdc, 0, 0, framebuffer->Width, framebuffer->Height, hdcMem, 0, 0, SRCCOPY);

            Sleep(16); // ~60 FPS
        }

        SelectObject(hdcMem, oldBitmap);
        DeleteDC(hdcMem);
        DeleteObject(hbm);
        ReleaseDC(hwnd, hdc);
        DestroyWindow(hwnd);
    }

    LRESULT CALLBACK WindowProc(HWND hwnd, UINT uMsg, WPARAM wParam, LPARAM lParam) {
        switch (uMsg) {
        case WM_CLOSE:
            running = false;
            PostQuitMessage(0);
            return 0;

        case WM_DESTROY:
            running = false;
            PostQuitMessage(0);
            return 0;
        }

        return DefWindowProc(hwnd, uMsg, wParam, lParam);
    }
#endif

void EmuClock(UniCPUEmulator::Bus* Emulator){
    auto LastPrintTime = high_resolution_clock::now();
    int Uptime = 0;
    auto ClockPeriod = 0; // No Limit
    // ClockPeriod = 1000; // 1 MHz (Any higher wont do much)
    // ClockPeriod = 1000*1000; // 1 KHz
    // ClockPeriod = 1000*1000*100; // 10 Hz
    // ClockPeriod = 1000*1000*1000; // 1 Hz
    // ClockPeriod = 1000*1000*1000*2; // 1/2 Hz (Manual)

    while (true)
    {
        if(ClockPeriod > 1000*1000*1000){
            // Manual clocking
            int clockCount = 0;
            std::cin >> clockCount;
            for(int i = 0; i < clockCount; i++){
                Emulator->clock();
            }
            for(int i = 0; i < 512; i++){
                std::cout << std::hex << std::setw(2) << (0xFF & ((uint8_t*)Emulator->ram->GetDataBuffer())[i]) << " ";
            }
            std::cout << std::dec << std::endl;
        }
        else{
            auto CycleStartTime = high_resolution_clock::now();

            Emulator->clock();

            auto CurrentTime = high_resolution_clock::now();
            auto DurSinceLast = duration_cast<seconds>(CurrentTime - LastPrintTime).count();

            if (DurSinceLast >= 1) {
                std::cout << "\rClockspeed: " << std::setw(10) << Emulator->ClockSpeed 
                        << "       Uptime: " << std::setw(6) << Uptime++ << "        RIP: " << std::setw(8) << Emulator->cpu->GetCurrentRegisterStack().rip << "       RAX: " << std::setw(8) << Emulator->cpu->GetCurrentRegisterStack().rax << "        " << std::flush;
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
    }
    std::cout << std::endl;
}

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

    // Start the clokcing
    std::thread runThread(EmuClock, &Emulator);

    // Main thread can perform other tasks

    runThread.detach();
    // runThread.join();

    RenderFramebuffer(&(Emulator.VideoOutput));
    return 0;
}