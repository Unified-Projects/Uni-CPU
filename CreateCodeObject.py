# write_machinecode.py

def write_bytes_to_file(filename, byte_array):
    with open(filename, 'wb') as file:
        file.write(bytearray(byte_array))
    print(f"Written {len(byte_array)} bytes to {filename}")

if __name__ == "__main__":
    # Example byte array (you can modify this as needed)
    """
    MOV R2, #1
    MOV [100], R2
    HALT
    """
    byte_array = [
                  0x22, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, # MOV R2, #1
                  0x24, 0x00, 0x64, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, # MOV [100], R2
                  0x10, 0x00, # HALT
                ]

    # Write the byte array to machinecode.bytes
    write_bytes_to_file('machinecode.bytes', byte_array)
