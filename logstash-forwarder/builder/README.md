10M logstash-forwarder - builder
================================

This container is a good example of how to use the build containers branch seperatly.
We are taking the build tools container to build some external code.
We don't care so much about cleanup here (although a good practive) since it won't be running it production.

The entire purpose of this container is to spit out a packge file.
This package will later be installed by the main Dockerfile which won't inherit usless files from here. (like build tools)

We use docker-compose here to have the volume map in a clearly readable way without using a long parameter list which become hard to read.

