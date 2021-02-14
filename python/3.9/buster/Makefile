DOCKER_LOCAL ?= taylorific
IMAGE_NAME := $(DOCKER_LOCAL)/python
TAGS := 3.9.1-buster 3.9-buster 3-buster buster

.PHONY: verify
verify:
	../../../docker-verify.sh

.PHONY: deliver
deliver:
	../../../docker-deliver-multi-arch.sh $(IMAGE_NAME) $(TAGS)

