#!/bin/sh

IMAGE_NAME=${IMAGE_NAME:-docker.r.winry.it/node}

echo \
  "${IMAGE_NAME}:13.1.0-bullseye" \
  "${IMAGE_NAME}:13.1-bullseye" \
  "${IMAGE_NAME}:13-bullseye" \
  "${IMAGE_NAME}:bullseye" \
  | xargs -n 1 docker image push
