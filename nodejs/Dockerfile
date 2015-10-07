# Pull base image.
FROM rounds/10m-build

# Install.
RUN apt-get update && \
    apt-get -y install expect nodejs npm python-pip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN ln -s /usr/bin/nodejs /usr/bin/node
