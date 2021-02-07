DOCKER_LOCAL ?= taylorific
IMAGE_NAME := $(DOCKER_LOCAL)/buildpack-deps
TAGS := buster-curl stable-curl curl

.PHONY: verify
verify:
	../../../../docker-verify.sh

.PHONY: deliver
deliver:
	../../../../docker-deliver-multi-arch.sh $(IMAGE_NAME) $(TAGS)
