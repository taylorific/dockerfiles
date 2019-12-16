#!/bin/sh

IMAGE_NAME=${IMAGE_NAME:-docker.r.winry.it/buildpack-deps:bullseye}

echo \
  "${IMAGE_NAME}" \
  | xargs -n 1 docker image push
