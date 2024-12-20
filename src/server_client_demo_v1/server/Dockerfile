FROM python:3.9-slim

# Create a directory for the volume
RUN mkdir -p /data

# Set the working directory
WORKDIR /app

# Copy the Python script into the container
COPY server.py /app/server.py

# Install Flask for the server
RUN pip install flask

# Expose the port the server will run on
EXPOSE 5000

# Run the Python server
CMD ["python", "server.py"]