SHELL := bash
.ONESHELL:
.SHELLFLAGS := -eu -o pipefail -c
.DELETE_ON_ERROR:
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules

DOCKER_LOCAL ?= docker.r.winry.it
IMAGE_NAME := $(DOCKER_LOCAL)/shellcheck
REVISION := $(shell git rev-parse --short HEAD)
TAGS = latest $(REVISION)

.PHONY: build
build: Dockerfile
	../docker-build.sh $(IMAGE_NAME) $(TAGS)

.PHONY: verify
verify:
	../docker-verify.sh

.PHONY: deliver
deliver:
	../docker-deliver.sh $(IMAGE_NAME) $(TAGS)
