NAME = ghcr.io/pristavkin/nsd-server:3.13_4.3.5

all: build-no-cache push

build-no-cache:
	docker build --no-cache -t $(NAME) .

build:
	docker build -t $(NAME) .

push:
	docker push $(NAME)
