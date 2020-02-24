#!/bin/sh

IMAGE_NAME=${IMAGE_NAME:-docker.r.winry.it/python}

echo \
  "${IMAGE_NAME}:3.7-alpine" \
  "${IMAGE_NAME}:3.7.5-alpine" \
  "${IMAGE_NAME}:3.7-alpine3.10" \
  "${IMAGE_NAME}:3.7.5-alpine3.10" \
  | xargs -n 1 docker image push
