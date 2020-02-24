#!/bin/sh

IMAGE_NAME=${IMAGE_NAME:-docker.r.winry.it/nginx}

echo \
  "${IMAGE_NAME}:latest" \
  "${IMAGE_NAME}:1.17" \
  "${IMAGE_NAME}:1" \
  "${IMAGE_NAME}:mainline" \
  "${IMAGE_NAME}:1.17.6" \
  | xargs -n 1 docker image push
