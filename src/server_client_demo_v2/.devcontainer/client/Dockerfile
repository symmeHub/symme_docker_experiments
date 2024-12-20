FROM python:3.9-slim

# Install necessary packages
RUN apt-get update && apt-get install -y sshpass openssh-client

# Set the working directory
WORKDIR /workspace

# Copy the client script into the container
COPY client.sh /workspace/client.sh

# Make the client script executable
RUN chmod +x /workspace/client.sh

# Set the entrypoint to the client script
ENTRYPOINT ["/workspace/client.sh"]