# This image would sshuttle a mini vpn for a single ip that also equals the remote machine ip
# You would need to add a private ssh key to it.

# Pull base image.
FROM rounds/10m-base

# Install.
RUN \
  apt-get update && \
  apt-get install -y sshuttle && \
  rm -rf /var/lib/apt/lists/*

# Define default command.
# Set REMOTE_IP env variable on docker run using -e
# docker run -e "REMOTE_IP=x.x.x.x"
CMD sshuttle -r root@$REMOTE_IP $REMOTE_IP/32
