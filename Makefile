NAME = seifer08ms/r-benchmark-docker

default: build

build:
	    docker build -t $(NAME) .

push:
	    docker push $(NAME)

debug:
	    docker run --rm -it $(NAME) /bin/bash

run:
	    docker run --rm $(NAME)
clean:     
	    docker rmi $(NAME)

release: build push
