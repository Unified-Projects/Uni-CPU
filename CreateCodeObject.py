# write_machinecode.py

def write_bytes_to_file(filename, byte_array):
    with open(filename, 'wb') as file:
        file.write(bytearray(byte_array))
    print(f"Written {len(byte_array)} bytes to {filename}")

if __name__ == "__main__":
    # Example byte array (you can modify this as needed)
    byte_array = [0x00]

    # Write the byte array to machinecode.bytes
    write_bytes_to_file('machinecode.bytes', byte_array)
