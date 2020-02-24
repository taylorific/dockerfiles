#!/bin/sh

IMAGE_NAME=${IMAGE_NAME:-docker.r.winry.it/rust}

echo \
  "${IMAGE_NAME}:latest" \
  "${IMAGE_NAME}:1.39.0" \
  "${IMAGE_NAME}:1.39" \
  "${IMAGE_NAME}:1" \
  "${IMAGE_NAME}:buster" \
  "${IMAGE_NAME}:1.39.0-buster" \
  "${IMAGE_NAME}:1.39-buster" \
  "${IMAGE_NAME}:1-buster" \
  | xargs -n 1 docker image push
