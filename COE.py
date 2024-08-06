import os

def create_coe_file(input_file, output_file):
    # Read the input binary file
    with open(input_file, 'rb') as f:
        input_data = f.read()

    # Add 20 bytes of padding at the beginning
    padding = b'\x00' * 20
    data_with_padding = padding + input_data

    # Convert the data to hexadecimal format
    hex_data = data_with_padding.hex().upper()
    
    # Each addressable unit is 64 bits (8 bytes), so split the hex data accordingly
    width = 64  # bits
    bytes_per_line = width // 8  # bytes
    hex_data_lines = [hex_data[i:i + 2 * bytes_per_line] for i in range(0, len(hex_data), 2 * bytes_per_line)]
    
    # Format for COE file
    coe_data = [
        "memory_initialization_radix=16;",
        "memory_initialization_vector="
    ]

    # Add each line of hex data to COE data
    coe_data.extend(hex_data_lines)
    
    # Write to the COE file
    with open(output_file, 'w') as f:
        f.write('\n'.join(coe_data) + ';')

if __name__ == "__main__":
    input_file = 'input.bytes'  # Replace with your input binary file
    output_file = 'output.coe'  # Desired output COE file

    create_coe_file(input_file, output_file)
    print(f"COE file '{output_file}' has been created.")
