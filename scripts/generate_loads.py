import os
import random

def generate_payload_file(file_name, size_mb):
    with open(file_name, 'wb') as file:
        file.write(os.urandom(size_mb * 1024 * 1024))

def generate_simulated_payloads(output_dir, num_files, min_size_mb, max_size_mb):
    for i in range(num_files):
        size_mb = random.randint(min_size_mb, max_size_mb)
        file_name = os.path.join(output_dir, f'payload_{i}.txt')
        generate_payload_file(file_name, size_mb)

# Example usage:
generate_simulated_payloads('simulated_loads', 10, 1, 10)
