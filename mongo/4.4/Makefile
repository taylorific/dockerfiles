DOCKER_LOCAL ?= taylorific
IMAGE_NAME := $(DOCKER_LOCAL)/mongo
TAGS := 4.4.4-bionic 4.4-bionic 4-bionic bionic

.PHONY: verify
verify:
	../../docker-verify.sh

.PHONY: deliver
deliver:
	../../docker-deliver-multi-arch.sh $(IMAGE_NAME) $(TAGS)
