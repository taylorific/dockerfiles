SHELL := bash
.ONESHELL:
.SHELLFLAGS := -eu -o pipefail -c
.DELETE_ON_ERROR:
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules

DOCKER_LOCAL ?= docker.r.winry.it
IMAGE_NAME := $(DOCKER_LOCAL)/python
TAGS := 3.8.2-slim-buster 3.8-slim-buster 3-slim-buster slim-buster 3.8.2-slim 3.8-slim 3-slim slim 

.PHONY: build
build: Dockerfile
	../../../../docker-build.sh $(IMAGE_NAME) $(TAGS)

.PHONY: verify
verify:
	../../../../docker-verify.sh

.PHONY: deliver
deliver:
	../../../../docker-deliver.sh $(IMAGE_NAME) $(TAGS)

