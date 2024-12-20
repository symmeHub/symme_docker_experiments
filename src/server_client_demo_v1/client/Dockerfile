FROM busybox

# Install curl for making HTTP requests
RUN apt-get update && apt-get install -y curl

# Copy the client script into the container
COPY client.sh /app/client.sh

# Make the client script executable
RUN chmod +x /app/client.sh

# Set the entrypoint to the client script
ENTRYPOINT ["/app/client.sh"]