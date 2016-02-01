IMAGE_NAME=rounds/10m-nginx

all:
	echo 'Usage: see https://github.com/rounds/10M-Docker-Images/blob/master/base/README.md'

build:
	docker build --tag "$(IMAGE_NAME)" .

build-parent:
	$(MAKE) -C .. build-cascade

build-cascade: build-parent build

clean:
	docker rmi -f $(IMAGE_NAME)

clean-parent:
	$(MAKE) -C .. clean-cascade

clean-cascade: clean clean-parent

run:
	docker run --rm -it $(IMAGE_NAME) bash
