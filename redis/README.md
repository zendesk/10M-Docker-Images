[![](https://badge.imagelayers.io/rounds/10m-redis:latest.svg)](https://imagelayers.io/?images=rounds/10m-redis:latest 'Get your own badge on imagelayers.io')

Redis server docker image
============================

Redis server docker image.
Minimal redis installtion. Main usage is for Hubot brain
 run it with shared data dir
docker run --name redis -v /datat/redis:/data -d rounds/10m-redis
