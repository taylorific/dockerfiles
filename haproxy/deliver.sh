#!/bin/sh

IMAGE_NAME=${IMAGE_NAME:-docker.r.winry.it/haproxy}

echo \
  "${IMAGE_NAME}:latest" \
  "${IMAGE_NAME}:2.1" \
  "${IMAGE_NAME}:2.1.1" \
  | xargs -n 1 docker image push
