DOCKER_LOCAL ?= taylorific
IMAGE_NAME := $(DOCKER_LOCAL)/postgres
TAGS := 9.6.21 9.6 9

.PHONY: verify
verify:
	../../docker-verify.sh

.PHONY: deliver
deliver:
	../../docker-deliver-multi-arch.sh $(IMAGE_NAME) $(TAGS)
