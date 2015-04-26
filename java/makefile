all: 
	peru reup -f
	peru sync
	mv oracle-java8/Dockerfile ./Dockerfile
	rmdir oracle-java8
	sed -i "s/^FROM .*/FROM rounds\/10m-build/" Dockerfile # Inherit from our own base docker
