import sys
import os

def process_file(input_file, output_file):
    with open(input_file, 'r') as f:
        content = f.read()

    with open(output_file, 'w') as f:
        f.write(content)

if __name__ == "__main__":
    input_file = sys.argv[1]
    output_file = sys.argv[2]
    process_file(input_file, output_file)