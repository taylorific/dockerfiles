DOCKER_LOCAL ?= taylorific
IMAGE_NAME := $(DOCKER_LOCAL)/golang
TAGS := 1.15.8-buster 1.15-buster 1-buster buster

.PHONY: deliver
deliver: Dockerfile
	../../docker-deliver-multi-arch.sh $(IMAGE_NAME) $(TAGS)

.PHONY: verify
verify:
	../../docker-verify.sh
