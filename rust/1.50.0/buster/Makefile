DOCKER_LOCAL ?= taylorific
IMAGE_NAME := $(DOCKER_LOCAL)/rust
TAGS := 1-buster 1.50-buster 1.50.0-buster buster 1 1.50 1.50.0 latest

.PHONY: verify
verify:
	../../../docker-verify.sh

.PHONY: deliver
deliver:
	../../../docker-deliver-multi-arch.sh $(IMAGE_NAME) $(TAGS)

