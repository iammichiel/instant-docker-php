VERSION ?= latest
NAMESPACE = iammichiel
IMAGE = instant-docker-php

.PHONY: build-all push-all

build-all:
	docker build -f Dockefile-7.1 --no-cache -t ${NAMESPACE}/${IMAGE}:7.1 .
	docker build -f Dockefile-7.2 --no-cache -t ${NAMESPACE}/${IMAGE}:7.2 .
	docker build -f Dockefile-7.3 --no-cache -t ${NAMESPACE}/${IMAGE}:7.3 .
	docker build -f Dockefile-7.4 --no-cache -t ${NAMESPACE}/${IMAGE}:7.4 .

push-all:
	docker push ${NAMESPACE}/${IMAGE}:7.1
	docker push ${NAMESPACE}/${IMAGE}:7.2
	docker push ${NAMESPACE}/${IMAGE}:7.3
	docker push ${NAMESPACE}/${IMAGE}:7.4

default: build-all
