.PHONY: build-all push-all

build-all:
	docker build -f Dockerfile-7.1 --no-cache -t iammichiel/instant-docker-php:7.1 .
	docker build -f Dockerfile-7.2 --no-cache -t iammichiel/instant-docker-php:7.2 .
	docker build -f Dockerfile-7.3 --no-cache -t iammichiel/instant-docker-php:7.3 .
#	docker build -f Dockerfile-7.4 --no-cache -t iammichiel/instant-docker-php:7.4 .

push-all:
	docker push iammichiel/instant-docker-php:7.1
	docker push iammichiel/instant-docker-php:7.2
	docker push iammichiel/instant-docker-php:7.3
#	docker push iammichiel/instant-docker-php:7.4

default: build-all
