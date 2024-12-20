#!/bin/sh

# Define the server address
SERVER_ADDRESS="server"

# Define the input and output files
INPUT_FILE="input.txt"
OUTPUT_FILE="output.txt"

# Create the input file
echo "Hello, World!" > /data/$INPUT_FILE

# Make a request to the server to process the file
sshpass -p password ssh -t -o StrictHostKeyChecking=no root@$SERVER_ADDRESS -p 22 "python3 /app/server.py /data/$INPUT_FILE /data/$OUTPUT_FILE"

# Display the output file
cat /data/$OUTPUT_FILE