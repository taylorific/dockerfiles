DOCKER_LOCAL ?= taylorific
IMAGE_NAME := $(DOCKER_LOCAL)/postgres
TAGS := 13.2 13 latest

.PHONY: deliver
deliver: Dockerfile
	../../docker-deliver-multi-arch.sh $(IMAGE_NAME) $(TAGS)

.PHONY: verify
verify:
	../../docker-verify.sh
