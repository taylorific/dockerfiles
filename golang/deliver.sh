#!/bin/sh

IMAGE_NAME=${IMAGE_NAME:-docker.r.winry.it/golang}

echo \
  "${IMAGE_NAME}:1.13.4-buster" \
  | xargs -n 1 docker image push
