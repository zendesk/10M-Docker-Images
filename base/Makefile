IMAGE_NAME=rounds/10m-base

all:
	echo 'Usage: see https://github.com/rounds/10M-Docker-Images/blob/master/base/README.md'

build:
	docker build --tag "$(IMAGE_NAME)" .

build-cascade: build

clean:
	docker rmi -f "$(IMAGE_NAME)"

clean-cascade: clean

run:
	docker run --rm -it "$(IMAGE_NAME)" bash

push-only:
	 docker push "$(IMAGE_NAME)"

push: build push-only

push-cascade: push

private:
	find ~ -name Dockerfile -exec sed -e "s|^FROM .*/|FROM $(LOCAL_DOCKER_REGISTRY)/|" -i {} +
	find ~ -name Makefile -exec sed -e "s|^IMAGE_NAME=.*/|IMAGE_NAME=$(LOCAL_DOCKER_REGISTRY)/|" -i {} +
