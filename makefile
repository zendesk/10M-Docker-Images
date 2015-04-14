all:
	peru reup -f
	peru sync
	sed -i "s/^docker run .*/docker build \./" uml.sh # build docker image
	#TODO: add a sed or similar change  for the added line 10 - "echo $? > $WORKDIR/exit.status" (or find a nice patch for the original code, opened issue https://github.com/lukecyca/travis-docker-example/issues/2)
