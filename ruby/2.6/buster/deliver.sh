#!/bin/sh

IMAGE_NAME=us.gcr.io/taylorific/ruby
CREATED=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
REVISION=$(git rev-parse --short HEAD)

echo \
  "${IMAGE_NAME}" \
  "${IMAGE_NAME}:2.6.5" \
  "${IMAGE_NAME}:2.6.5-buster" \
  | xargs -n 1 docker image push
