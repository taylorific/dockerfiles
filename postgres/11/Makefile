DOCKER_LOCAL ?= taylorific
IMAGE_NAME := $(DOCKER_LOCAL)/postgres
TAGS := 11.11 11

.PHONY: verify
verify:
	../../docker-verify.sh

.PHONY: deliver
deliver:
	../../docker-deliver-multi-arch.sh $(IMAGE_NAME) $(TAGS)
