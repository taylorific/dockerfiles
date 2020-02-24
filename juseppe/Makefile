SHELL := bash
.ONESHELL:
.SHELLFLAGS := -eu -o pipefail -c
.DELETE_ON_ERROR:
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules

DOCKER_LOCAL ?= docker.r.winry.it
IMAGE_NAME := $(DOCKER_LOCAL)/juseppe
# TAGS := 3.6.3-jdk-11 3.6.3 3.6-jdk-11 3.6 3-jdk-11 3 latest

.PHONY: build
build: Dockerfile
	../docker-build.sh $(IMAGE_NAME) $(TAGS)

.PHONY: verify
verify:
	../docker-verify.sh

.PHONY: deliver
deliver:
	../docker-deliver.sh $(IMAGE_NAME) $(TAGS)
