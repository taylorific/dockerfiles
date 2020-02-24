#!/bin/sh

IMAGE_NAME=${IMAGE_NAME:-docker.r.winry.it/nginx}

echo \
  "${IMAGE_NAME}:1.16" \
  "${IMAGE_NAME}:stable" \
  "${IMAGE_NAME}:1.16.1" \
  | xargs -n 1 docker image push
