# write_machinecode.py

def write_bytes_to_file(filename, byte_array):
    with open(filename, 'wb') as file:
        file.write(bytearray(byte_array))
    print(f"Written {len(byte_array)} bytes to {filename}")

if __name__ == "__main__":
    """
    MOV RAX, 1
    ADD RAX, RAX, RAX
    JMP 0
    HALT
    """
    byte_array = [
                  0x82, 0x00, 0x0D, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, # MOV RSP, 256
                  0x82, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, # MOV RBX, 0
                  0x82, 0x00, 0x07, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, # MOV RAX, 1
                  0x80, 0x00, 0x09, 0x07,                                           # MOV RCX, RAX
                  0x00, 0x01, 0x07, 0x07, 0x8,                                      # ADD RAX, RAX, RBX
                  0x80, 0x00, 0x08, 0x09,                                           # MOV RBX, RCX
                  0x40, 0x01, 0x07,                                                 # PUSH RAX
                  0xC8, 0x00, 0x21, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,       # JMP 33
                  0x10, 0x00, # HALT
                ]

    # Write the byte array to machinecode.bytes
    write_bytes_to_file('machinecode.bytes', byte_array)
