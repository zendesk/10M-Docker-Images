IMAGE_NAME='zendesk/10m-base'

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

zendesk:
	find ~ -name Dockerfile -exec sed -e "s|^FROM rounds/|FROM zendesk/|" -i {} +
	find ~ -name Makefile -exec sed -e "s|^IMAGE_NAME='rounds/|IMAGE_NAME='zendesk/|" -i {} +

update:
	git fetch
	git resset --hard origin/master
	git merge opetruhska/make-zendesk #make zendesk command
	make zendesk
	git commit -am "Make zendesk"	
	git push -f origin/zendesk
