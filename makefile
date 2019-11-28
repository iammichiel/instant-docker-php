.PHONY: build-all push-all

build-7.1:
	docker build -f Dockerfile-7.1 --no-cache -t iammichiel/instant-docker-php:7.1 .

build-7.2:
	docker build -f Dockerfile-7.2 --no-cache -t iammichiel/instant-docker-php:7.2 .

build-7.3:
	docker build -f Dockerfile-7.3 --no-cache -t iammichiel/instant-docker-php:7.3 .

push-7.1:
	docker push iammichiel/instant-docker-php:7.1

push-7.2:
	docker push iammichiel/instant-docker-php:7.2

push-7.3:
	docker push iammichiel/instant-docker-php:7.3


build-all: build-7.1 build-7.2 build-7.3

push-all: push-7.1 push-7.2 push-7.3

default: build-all
