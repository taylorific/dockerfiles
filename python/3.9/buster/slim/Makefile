DOCKER_LOCAL ?= taylorific
IMAGE_NAME := $(DOCKER_LOCAL)/python
TAGS := 3.9.1-slim-buster 3.9-slim-buster 3-slim-buster slim-buster 3.9.1-slim 3.9-slim 3-slim slim

.PHONY: verify
verify:
	../../../../docker-verify.sh

.PHONY: deliver
deliver:
	../../../../docker-deliver-multi-arch.sh $(IMAGE_NAME) $(TAGS)

