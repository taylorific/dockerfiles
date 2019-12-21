#!/bin/bash

DOCKER_LOCAL=docker.r.winry.it
echo "==> Running hadolint..."
docker container run --rm -i ${DOCKER_LOCAL}/hadolint/hadolint < ./Dockerfile
