# Docker Python Client-Server Example

This project demonstrates a client-server architecture using Docker containers. The server container runs a Python script to process a file, and the client container communicates with the server via SSH to use the server's Python environment.

## Usage

1. Build and start the containers using Docker Compose:
   ```sh
   docker compose up --build