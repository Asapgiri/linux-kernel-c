.PHONY: hello
hello:
	gcc hello_world.c -o hello

cmake:
	cmake -S . -B __build
	cmake --build __build

docker:
	sudo docker run \
		--privileged \
		--platform linux/amd64 \
		-ti \
		--mount type=bind,src=$(shell pwd),dst=/workdir \
		linux-kernel-c
