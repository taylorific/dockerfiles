DOCKER_LOCAL ?= taylorific
IMAGE_NAME = $(DOCKER_LOCAL)/buildpack-deps
TAGS = focal-scm 20.04-scm

.PHONY: build
build: Dockerfile
	../../../../docker-buildx-multi-arch.sh $(IMAGE_NAME) $(TAGS)

.PHONY: verify
verify:
	../../../../docker-verify.sh

.PHONY: deliver
deliver:
	../../../../docker-deliver.sh $(IMAGE_NAME) $(TAGS)
