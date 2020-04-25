SHELL := bash
.ONESHELL:
.SHELLFLAGS := -eu -o pipefail -c
.DELETE_ON_ERROR:
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules

DOCKER_LOCAL ?= docker.r.winry.it
IMAGE_NAME := $(DOCKER_LOCAL)/python
TAGS := 3.8.2-alpine3.11 3.8-alpine3.11 3-alpine3.11 alpine3.11 3.8.2-alpine 3.8-alpine 3-alpine alpine 

.PHONY: build
build: Dockerfile
	../../../docker-build.sh $(IMAGE_NAME) $(TAGS)

.PHONY: verify
verify:
	../../../docker-verify.sh

.PHONY: deliver
deliver:
	../../../docker-deliver.sh $(IMAGE_NAME) $(TAGS)

