#!/bin/sh

IMAGE_NAME=${IMAGE_NAME:-docker.r.winry.it/ruby}

echo \
  "${IMAGE_NAME}" \
  "${IMAGE_NAME}:2.6.5" \
  "${IMAGE_NAME}:2.6.5-buster" \
  | xargs -n 1 docker image push
