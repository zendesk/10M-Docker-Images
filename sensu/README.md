# [Sensu][website]

This directory includes a Docker image for Sensu, based on the [Ruby Alpine Linux][ruby] trusted build.

## What's Inside

 - The same image is used for all Sensu apps: `sensu-client`, `sensu-server`, and `sensu-api`.
 The image's [entrypoint.sh](tmp/entrypoint.sh) receives the app to execute as a parameter.
 - Community [sensu-plugins][sensu-plugins] that we're using, managed via a [Gemfile][opt/sensu/Gemfile].


[website]: https://sensuapp.org/
[ruby]: https://hub.docker.com/_/ruby/
[sensu-plugins]: https://github.com/sensu-plugins/
[trusted build]: https://hub.docker.com/_/rabbitmq/
