DOCKER_LOCAL ?= docker.r.winry.it
IMAGE_NAME := $(DOCKER_LOCAL)/python
TAGS := 3.9.0-buster 3.9-buster 3-buster buster

.PHONY: build
build: Dockerfile
	../../../docker-build.sh $(IMAGE_NAME) $(TAGS)

.PHONY: verify
verify:
	../../../docker-verify.sh

.PHONY: deliver
deliver:
	../../../docker-deliver.sh $(IMAGE_NAME) $(TAGS)

