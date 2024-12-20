#!/bin/sh

# Define the server address
SERVER_ADDRESS="http://server:5000"

# Define the input and output files
INPUT_FILE="input.txt"
OUTPUT_FILE="output.txt"

# Create the input file
echo "Hello, World!" > /data/$INPUT_FILE

# Make a request to the server to process the file
curl -X POST -H "Content-Type: application/json" \
    -d "{\"input_file\": \"$INPUT_FILE\", \"output_file\": \"$OUTPUT_FILE\"}" \
    $SERVER_ADDRESS/process

# Display the output file
cat /data/$OUTPUT_FILE