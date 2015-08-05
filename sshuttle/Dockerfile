# This image would sshuttle a mini vpn for a single ip that also equals the remote machine ip
# You would need to add a private ssh key to it.

# Pull base image.
FROM rounds/10m-base

# Install.
RUN \
  apt-get update && \
  apt-get install -y sshuttle python && \
  rm -rf /var/lib/apt/lists/*

# Define default command.
# Set REMOTE_IP, Remote_USER env variable on docker run using -e
# docker run -e "REMOTE_IP=x.x.x.x" -e "REMOTE_USER=ubuntu"
CMD sshuttle -r $REMOTE_USER@$REMOTE_IP $REMOTE_IP/32
