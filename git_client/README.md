Git Client Docker
=================
This containter can be used as a small utility for fetching and updating code stored in a git repository without installing git or keys on a node.

This utility can be specially useful for private git repositories where you have secret keys that you don't want to expose but are needed to access your git tree.
The 1st thing it allows you it to have these keys only in one place in your system and used by many nodes, this should make it fairly simple for example to rotate your keys.

An even better use for security might be deploying systems in a way of:
* Login to your secured docker image repository.
* Fetch the git containter with the keys already in it. (might happen automatically by a run command)
* Run a git checkout/pull command that will save your updated application code on the node.
* Delete the container.
* Logout of your secured docker image repository.

Now the node that you just deployed to doens't have access to your private code repositories or to your secured docker image repository.
And in the same time it should be almost as short of a deploy to "just update code" on the node. (if done right, it's a minimal keys fetch by docker + git pull)
