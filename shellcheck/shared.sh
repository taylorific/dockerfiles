#!/bin/sh
# shellcheck disable=SC2034

IMAGE_NAME=$(basename "${PWD}")
IMAGE_REPOSITORY=us.gcr.io/taylorific
CREATED=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
REVISION=$(git rev-parse --short HEAD)
