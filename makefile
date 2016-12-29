VERSION ?= latest
NAMESPACE = iammichiel
IMAGE = instant-docker-php

.PHONY: build push

build:
	docker build --no-cache -t ${NAMESPACE}/${IMAGE}:${VERSION} .

push:
	docker push ${NAMESPACE}/${IMAGE}:${VERSION}

default: build
