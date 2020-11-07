DOCKER_LOCAL ?= docker.r.winry.it
IMAGE_NAME := $(DOCKER_LOCAL)/python
TAGS := 3.8.6-slim-buster 3.8-slim-buster 3.8.6-slim 3.8-slim

.PHONY: build
build: Dockerfile
	../../../../docker-build.sh $(IMAGE_NAME) $(TAGS)

.PHONY: verify
verify:
	../../../../docker-verify.sh

.PHONY: deliver
deliver:
	../../../../docker-deliver.sh $(IMAGE_NAME) $(TAGS)

