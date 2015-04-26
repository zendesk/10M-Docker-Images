all:
	peru reup -f
	peru sync
	sed -i "s/^docker run .*/docker build \./" uml.sh # build docker image
