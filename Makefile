NAME = seifer08ms/r-benchmark-docker

all:     build run

default: all

debug : build run-debug

build:
	    docker build -t $(NAME) .

push:
	    docker push $(NAME)

run-debug:
	    docker run --rm -it $(NAME) /bin/bash

run:
	    docker run --rm $(NAME)
clean:     
	    docker rmi $(NAME)

release: build push
