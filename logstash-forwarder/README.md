10M logstash-forwarder
======================

This is a clean logstash forwarder container that can be auto rebuilt from source.
The final image is clean of the build tools.
That is made possilbe using a seperate image for the autobuilds that does have the needed build tools.


For Contributers
================

Short version
=============

Run:
make

It will both build a new logstash-forwarder exec, deb pacakge and a docker image containing it.

Long version
============
/builder has a Dockerfile that knows how to build a new exec and package from the source of logstash-forwarder including all dependencies.

./Dockerfile is using the deb package in /builder/*.deb to create a docker images for a logstash forwarder client without the bloat of the build tools.
