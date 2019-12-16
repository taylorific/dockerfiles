#!/bin/sh
# shellcheck disable=SC2034

IMAGE_REPOSITORY=docker.r.winry.it
IMAGE_NAME=${IMAGE_REPOSITORY}/$(basename "${PWD}")
CREATED=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
REVISION=$(git rev-parse --short HEAD)
