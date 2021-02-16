DOCKER_LOCAL ?= taylorific
IMAGE_NAME := $(DOCKER_LOCAL)/postgres
TAGS := 10.16 10

.PHONY: verify
verify:
	../../docker-verify.sh

.PHONY: deliver
deliver:
	../../docker-deliver-multi-arch.sh $(IMAGE_NAME) $(TAGS)
