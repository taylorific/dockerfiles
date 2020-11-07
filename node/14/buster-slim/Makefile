DOCKER_LOCAL ?= docker.r.winry.it
IMAGE_NAME := $(DOCKER_LOCAL)/node
TAGS := 14.15.0-buster-slim 14.15-buster-slim 14-buster-slim fermium-buster-slim lts-buster-slim

.PHONY: build
build: Dockerfile
	DOCKER_BUILDKIT=1 ../../../docker-build.sh $(IMAGE_NAME) $(TAGS)

.PHONY: verify
verify:
	../../../docker-verify.sh

.PHONY: deliver
deliver:
	../../../docker-deliver.sh $(IMAGE_NAME) $(TAGS)

