IMAGE_NAME=rounds/10m-base

all:
	echo 'Usage: see https://github.com/rounds/10M-Docker-Images/blob/master/base/README.md'

.build:
	docker build --tag "$(IMAGE_NAME)" .

build: .build

build-cascade: build

clean:
	docker rmi -f $(IMAGE_NAME)

clean-cascade: clean

run:
	docker run --rm -it $(IMAGE_NAME) bash
