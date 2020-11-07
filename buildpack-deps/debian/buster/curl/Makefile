DOCKER_LOCAL ?= docker.r.winry.it
IMAGE_NAME := $(DOCKER_LOCAL)/buildpack-deps
TAGS := buster-curl stable-curl curl

.PHONY: build
build: Dockerfile
	../../../../docker-build.sh $(IMAGE_NAME) $(TAGS)

.PHONY: verify
verify:
	../../../../docker-verify.sh

.PHONY: deliver
deliver:
	../../../../docker-deliver.sh $(IMAGE_NAME) $(TAGS)
