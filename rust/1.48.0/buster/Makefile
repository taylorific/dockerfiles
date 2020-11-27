DOCKER_LOCAL ?= docker.r.winry.it
IMAGE_NAME := $(DOCKER_LOCAL)/rust
TAGS := 1-buster 1.48-buster 1.48.0-buster buster 1 1.48 1.48.0 latest

.PHONY: build
build: Dockerfile
	DOCKER_BUILDKIT=1 ../../../docker-build.sh $(IMAGE_NAME) $(TAGS)

.PHONY: verify
verify:
	../../../docker-verify.sh

.PHONY: deliver
deliver:
	../../../docker-deliver.sh $(IMAGE_NAME) $(TAGS)

