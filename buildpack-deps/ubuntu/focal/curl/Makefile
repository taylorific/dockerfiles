DOCKER_LOCAL ?= taylorific
IMAGE_NAME := $(DOCKER_LOCAL)/buildpack-deps
TAGS := focal-curl 20.04-curl

.PHONY: build
build: Dockerfile
	../../../../docker-buildx-multi-arch.sh $(IMAGE_NAME) $(TAGS)

.PHONY: verify
verify:
	../../../../docker-verify.sh

.PHONY: deliver
deliver:
	../../../../docker-deliver.sh $(IMAGE_NAME) $(TAGS)
