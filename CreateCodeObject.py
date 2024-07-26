# write_machinecode.py

def write_bytes_to_file(filename, byte_array):
    with open(filename, 'wb') as file:
        file.write(bytearray(byte_array))
    print(f"Written {len(byte_array)} bytes to {filename}")

if __name__ == "__main__":
    """
    MOV RAX, 0x0001000000000000
    CMP 0, RAX, 0
    JC 0
    HALT
    """
    byte_array = [
                  0x82, 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, # MOV RAX, 0x0001000000000000
                  0xC2, 0x01, 0x01, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, # CMP 1, RAX, 0x00010000000000001
                  0x20, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, # JC 0
                  0x60, 0x00, # HALT
                ]

    # Write the byte array to machinecode.bytes
    write_bytes_to_file('machinecode.bytes', byte_array)
