logstash-forwarder config example
=================================

This is an example of configuring a docker image by inheritance.

You can see the only thing we have in the Dockerfile is copying local files into the image.
The etc directory is holding our example config, potentially this is your private config that you don't want to be publicly availible.

This example doesn't work out of the box, you should replace the crt file with a real one you are using, (etc/logstash-forwarder/server.crt)
and change logs.example.com to your real server inside etc/logstash-forwarder/logstash-forwarder-config.json

This example json config tries to catch all files in the 1st 2 levels of /var/log which is a common log path.
This would potentially allow you to have all your nodes run just one logstash forwarder container, as your log aggregator, no matter what application containers you are running.

The resulting image shouldi potentially be stored as a private one, not in the public docker hub.

How you can use this image:
 1. Fork it and change what you need. (minimally just the 2 files mentioned above)
 2. Just read it as an example usage that is valid for most of our other images.
 3. you might still use this image with the volumes trick where you mount the config directory and change it locally on the node your deploy on.
