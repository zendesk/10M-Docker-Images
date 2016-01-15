all:
	echo 'Usage: see https://github.com/rounds/10M-Docker-Images/blob/master/base/README.md'

build-parent:
	$(MAKE) -C .. build-cascade 

build-cascade: build-parent

clean:

clean-parent:
	$(MAKE) -C .. clean-cascade

clean-cascade: clean clean-parent

run:
