all:
	peru reup -f
	peru sync
	rm build/README.md # Keep our version
	rm -rf root && mv build/* .
	rmdir build
	sed -i "s/^FROM .*/FROM rounds\/10m-docker-images-base/" Dockerfile # Inherit from our own base docker
