FROM python:3.9-slim

# Create app directory
WORKDIR /app

# Copy the server script
COPY server.py /app/server.py

# Create the output directory
RUN mkdir -p /data/output

# Expose SSH port
EXPOSE 22

# Install SSH server
RUN apt-get update && apt-get install -y openssh-server && \
    echo 'root:password' | chpasswd && \
    mkdir /var/run/sshd && \
    sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config

# Run SSH server
CMD ["/usr/sbin/sshd", "-D"]