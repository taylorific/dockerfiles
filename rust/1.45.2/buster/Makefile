SHELL := bash
.ONESHELL:
.SHELLFLAGS := -eu -o pipefail -c
.DELETE_ON_ERROR:
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules

DOCKER_LOCAL ?= docker.r.winry.it
IMAGE_NAME := $(DOCKER_LOCAL)/rust
TAGS := buster 1.45.2-buster 1.45.2 1.45-buster 1.45 1-buster 1  latest

.PHONY: build
build: Dockerfile
	DOCKER_BUILDKIT=1 ../../../docker-build.sh $(IMAGE_NAME) $(TAGS)

.PHONY: verify
verify:
	../../../docker-verify.sh

.PHONY: deliver
deliver:
	../../../docker-deliver.sh $(IMAGE_NAME) $(TAGS)

