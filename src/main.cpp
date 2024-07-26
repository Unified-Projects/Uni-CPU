#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <sstream>
#include <map>
#include <algorithm>

#include <stdint.h>

#include <instructs.h>

// Define a structure to hold line data
struct Line {
    std::string label;
    std::string content;
    uint64_t lineNumber;
};

std::map<std::string, int> RegisterMap = {
    {"r0", 0},
    {"r1", 1},
    {"r2", 2},
    {"r3", 3},
    {"r4", 4},
    {"r5", 5},
    {"r6", 6},
    {"rax", 7},
    {"rbx", 8},
    {"rcx", 9},
    {"rdx", 10},
    {"rsi", 11},
    {"rdi", 12},
    {"rsp", 13},
    {"rip", 14},
    {"status", 15},
    {"err", 16},
    {"interrupt", 17},
    {"page", 17},
    {"conf", 18},
    {"IDT_addr", 19},
    {"IDT_size", 20},
};

struct LabelToAdd{
    unsigned long long Offset = 0;
    std::string Label = "";
};

char* Data = nullptr;

std::vector<uint8_t> BytesOut = {};

std::vector<LabelToAdd> Labels = {};
std::vector<LabelToAdd> LabelsNeeded = {};

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

    // Convert buffer to a string for easier manipulation
    std::string fileContent(buffer.begin(), buffer.end());
    Data = &fileContent[0];

    std::vector<Line> lines;
    std::stringstream ss(fileContent);
    std::string line;
    uint64_t lineNumber = 0;

    while (std::getline(ss, line)) {
        std::string label;
        std::string content;
        std::size_t colonPos = line.find(':');

        // Check if there's a label
        if (colonPos != std::string::npos) {
            label = line.substr(0, colonPos);
            content = line.substr(colonPos + 1);
        } else {
            content = line;
        }

        lines.push_back({label, content, lineNumber});
        lineNumber++;
    }

    // Example usage: print out the lines with their labels
    for (const auto& l : lines) {
        if(l.content.size() > 0){
            uint8_t AddrMode1 = 0;
            uint8_t AddrMode2 = 0;

            uint8_t BitMode = 0;

            uint16_t Instruction = 0;

            uint8_t OperandCount = 0;
            uint16_t LineOffset = 0;

            std::vector<uint8_t> ArgBytes = {};

            if(l.content.find("mov") == 4){
                Instruction = INSTRUCTION_MOV;
                OperandCount = 2;
                LineOffset = 8;
            }
            else if(l.content.find("jmp") == 4){
                Instruction = INSTRUCTION_JMP;
                OperandCount = 1;
                LineOffset = 8;
            }
            else if(l.content.find("add") == 4){
                Instruction = INSTRUCTION_ADD;
                OperandCount = 3;
                LineOffset = 8;
            }
            else if(l.content.find("push") == 4){
                Instruction = INSTRUCTION_PUSH;
                OperandCount = 1;
                LineOffset = 9;
            }
            else if(l.content.find("pop") == 4){
                Instruction = INSTRUCTION_POP;
                OperandCount = 1;
                LineOffset = 8;
            }
            else if (l.content.find("db") == 4) {
                std::string valueStr = l.content.substr(7);
                int value = std::atoi(valueStr.c_str());
                int8_t newValue = static_cast<int8_t>(value);
                BytesOut.push_back(newValue);
                continue;
            }
            else if (l.content.find("dw") == 4) {
                std::string valueStr = l.content.substr(7);
                int value = std::atoi(valueStr.c_str());
                int16_t newValue = static_cast<int16_t>(value);
                for(int i = 0; i < 2; i++){
                    BytesOut.push_back(((uint8_t*)&newValue)[i]);
                }
                continue;
            }
            else if (l.content.find("dd") == 4) {
                std::string valueStr = l.content.substr(7);
                int value = std::atoi(valueStr.c_str());
                int32_t newValue = static_cast<int32_t>(value);
                for(int i = 0; i < 4; i++){
                    BytesOut.push_back(((uint8_t*)&newValue)[i]);
                }
                continue;
            }
            else if (l.content.find("dq") == 4) {
                std::string valueStr = l.content.substr(7);
                long long value = std::atoll(valueStr.c_str());
                for(int i = 0; i < 8; i++){
                    BytesOut.push_back(((uint8_t*)&value)[i]);
                }
                continue;
            }
            else{
                std::cout << "Invalid Operation :: " << l.lineNumber << std::endl;
                return 0;
            }

            for(int i = 0; i < OperandCount; i++){
                if(l.content.substr(LineOffset).size() <= 0){
                    std::cout << "Failed to load operand :: " << l.lineNumber << std::endl;
                    return -1;
                }

                if(i == 0 && OperandCount == 3){
                    // Will always be a register
                    uint64_t NextPos = l.content.substr(LineOffset).find_first_of(", ");
                    if(NextPos == std::string::npos){
                        std::cout << "Invalid: Expected Comma :: " << l.lineNumber << std::endl;
                    }

                    std::string Register = l.content.substr(LineOffset, NextPos);

                    bool Found = false;
                    for (auto x : RegisterMap){
                        if(x.first == Register){
                            Found = true;
                            ArgBytes.push_back(x.second);
                        }
                    }
                    if(!Found){
                        std::cout << "Invalid: Expected Register :: " << l.lineNumber << std::endl;
                        return -1;
                    }

                    LineOffset += NextPos + 2;
                }
                else{
                    uint64_t NextPos = l.content.substr(LineOffset).find_first_of(", ");
                    if(NextPos == std::string::npos && i != OperandCount - 1){
                        std::cout << "Invalid: Expected Comma :: " << l.lineNumber << std::endl;
                        return -1;
                    }
                    std::string Arg = l.content.substr(LineOffset, NextPos);

                    size_t length = Arg.length();
                    std::string extractedValue;

                    // Check for format [r something]
                    if (Arg[0] == '[' && Arg.back() == ']') {
                        std::string content = Arg.substr(1, length - 2); // Remove the brackets
                        if (content.find("r") == 0) {
                            extractedValue = content;

                            bool Found = false;
                            for (auto x : RegisterMap){
                                if(x.first == extractedValue){
                                    Found = true;
                                    ArgBytes.push_back(x.second);
                                    if((OperandCount == 3 && i == 1) || (OperandCount == 2 && i == 0) || (OperandCount == 1 && i == 0)){
                                        AddrMode1 = REG_MODE_RDI;
                                    }
                                    else{
                                        AddrMode2 = REG_MODE_RDI;
                                    }
                                }
                            }
                            if(!Found){
                                // Must be a label
                                LabelsNeeded.push_back({BytesOut.size() + 2 + ArgBytes.size(), extractedValue});
                                if((OperandCount == 3 && i == 1) || (OperandCount == 2 && i == 0) || (OperandCount == 1 && i == 0)){
                                    AddrMode1 = REG_MODE_DIR;
                                }
                                else{
                                    AddrMode2 = REG_MODE_DIR;
                                }
                                ArgBytes.push_back(0x00);
                                ArgBytes.push_back(0x00);
                                ArgBytes.push_back(0x00);
                                ArgBytes.push_back(0x00);
                                ArgBytes.push_back(0x00);
                                ArgBytes.push_back(0x00);
                                ArgBytes.push_back(0x00);
                                ArgBytes.push_back(0x00);
                            }

                            LineOffset += NextPos + 2;
                            continue;
                        }
                    }

                    // Check for format [Any Number]
                    if (Arg[0] == '[' && Arg.back() == ']') {
                        std::string content = Arg.substr(1, length - 2); // Remove the brackets
                        if (std::all_of(content.begin(), content.end(), ::isdigit)) {
                            extractedValue = content;

                            uint64_t val = std::atoll(extractedValue.data());

                            for(int i = 0; i < 8; i++){
                                ArgBytes.push_back(((uint8_t*)&val)[i]);
                            }

                            if((OperandCount == 3 && i == 1) || (OperandCount == 2 && i == 0) || (OperandCount == 1 && i == 0)){
                                AddrMode1 = REG_MODE_DIR;
                            }
                            else{
                                AddrMode2 = REG_MODE_DIR;
                            }

                            LineOffset += NextPos + 2;
                            continue;
                        }
                        else{
                            // Must be a label
                            LabelsNeeded.push_back({BytesOut.size() + 2 + ArgBytes.size(), content});
                            if((OperandCount == 3 && i == 1) || (OperandCount == 2 && i == 0) || (OperandCount == 1 && i == 0)){
                                AddrMode1 = REG_MODE_DIR;
                            }
                            else{
                                AddrMode2 = REG_MODE_DIR;
                            }
                            ArgBytes.push_back(0x00);
                            ArgBytes.push_back(0x00);
                            ArgBytes.push_back(0x00);
                            ArgBytes.push_back(0x00);
                            ArgBytes.push_back(0x00);
                            ArgBytes.push_back(0x00);
                            ArgBytes.push_back(0x00);
                            ArgBytes.push_back(0x00);
                            
                            LineOffset += NextPos + 2;
                            continue;
                        }
                    }

                    // Check for signed numbers
                    bool hasSign = (Arg[0] == '+' || Arg[0] == '-');
                    size_t i = hasSign ? 1 : 0;
                    bool isNumber = true;

                    while (i < length && (isdigit(Arg[i]) || Arg[i] == '.')) {
                        ++i;
                    }

                    if (i == length) {
                        extractedValue = Arg;

                        int64_t val = std::atoll(extractedValue.data());

                        for(int i = 0; i < 8; i++){
                            ArgBytes.push_back(((uint8_t*)&val)[i]);
                        }

                        if((OperandCount == 3 && i == 1) || (OperandCount == 2 && i == 0) || (OperandCount == 1 && i == 0)){
                            AddrMode1 = REG_MODE_IMM;
                        }
                        else{
                            AddrMode2 = REG_MODE_IMM;
                        }

                        LineOffset += NextPos + 2;
                        continue;
                    }

                    // Check for other custom format (e.g., `r1`)
                    if (Arg.find("r") == 0) {
                        extractedValue = Arg;

                        bool Found = false;
                        for (auto x : RegisterMap){
                            if(x.first == extractedValue){
                                Found = true;
                                ArgBytes.push_back(x.second);
                                if((OperandCount == 3 && i == 1) || (OperandCount == 2 && i == 0) || (OperandCount == 1 && i == 0)){
                                    AddrMode1 = REG_MODE_REG;
                                }
                                else{
                                    AddrMode2 = REG_MODE_REG;
                                }
                            }
                        }
                        if(Found){
                            LineOffset += NextPos + 2;
                            continue;
                        }
                    }

                    extractedValue = Arg;

                    // Must be a label
                    LabelsNeeded.push_back({BytesOut.size() + 2 + ArgBytes.size(), extractedValue});
                    if((OperandCount == 3 && i == 1) || (OperandCount == 2 && i == 0) || (OperandCount == 1 && i == 0)){
                        AddrMode1 = REG_MODE_IMM;
                    }
                    else{
                        AddrMode2 = REG_MODE_IMM;
                    }
                    ArgBytes.push_back(0x00);
                    ArgBytes.push_back(0x00);
                    ArgBytes.push_back(0x00);
                    ArgBytes.push_back(0x00);
                    ArgBytes.push_back(0x00);
                    ArgBytes.push_back(0x00);
                    ArgBytes.push_back(0x00);
                    ArgBytes.push_back(0x00);
                    LineOffset += NextPos + 2;
                    continue;
                }
            }

            uint16_t Operation = GenCode(Instruction, AddrMode1, AddrMode2, BitMode);
            BytesOut.push_back(((uint8_t*)&Operation)[0]);
            BytesOut.push_back(((uint8_t*)&Operation)[1]);

            for(auto x : ArgBytes){
                BytesOut.push_back(x);
            }
        }
        else if(l.label.size() > 0){
            Labels.push_back({BytesOut.size(), l.label});
        }
    }

    for(auto x : LabelsNeeded){
        for(auto y : Labels){
            if(y.Label == x.Label){
                for(int i = 0; i < 8; i++){
                    BytesOut.data()[x.Offset + i] = ((uint8_t*)(&(y.Offset)))[i];
                }
            }
        }
    }

    // Output file name modification
    std::string OutFilename = argv[1];
    OutFilename = OutFilename.substr(0, OutFilename.size() - 3) + "bytes";

    // Write the contents of the vector to the output file
    std::ofstream OutFile(OutFilename, std::ios::binary);

    if (!OutFile.is_open()) {
        std::cerr << "Could not open the file for writing: " << OutFilename << std::endl;
        return 1;
    }

    OutFile.write((const char*)BytesOut.data(), BytesOut.size());
    OutFile.close();

    return 0;
}
