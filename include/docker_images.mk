all:
	echo 'Usage: see https://github.com/rounds/10M-Docker-Images/blob/master/base/README.md'

build:
	if [ -a Dockerfile ]; then docker build --tag "$(IMAGE_NAME)" .; fi;

build-parent:
	$(MAKE) -C .. build-cascade

build-cascade: build-parent build

clean:
	if [ -a Dockerfile ]; then docker rmi -f "$(IMAGE_NAME)"; fi;

clean-parent:
	$(MAKE) -C .. clean-cascade

clean-cascade: clean clean-parent

push-only:
	if [ -a Dockerfile ]; then docker push "$(IMAGE_NAME)"; fi;

push: build push-only

push-parent:
	$(MAKE) -C .. push-cascade

push-cascade: push-parent push

run:
	if [ -a Dockerfile ]; then docker run --rm -it "$(IMAGE_NAME)" bash; fi;
