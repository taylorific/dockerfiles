DOCKER_LOCAL ?= taylorific
IMAGE_NAME := $(DOCKER_LOCAL)/ruby
TAGS := 3.0.0-buster 3.0-buster 3-buster buster 3.0.0 3.0 3 latest

.PHONY: deliver
deliver: Dockerfile
	../../../docker-deliver-multi-arch.sh $(IMAGE_NAME) $(TAGS)

.PHONY: verify
verify:
	../../../docker-verify.sh
