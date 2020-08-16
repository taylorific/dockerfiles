#!/bin/sh

IMAGE_NAME=${IMAGE_NAME:-docker.r.winry.it/elm:0.19.1}

echo \
  "${IMAGE_NAME}" \
  | xargs -n 1 docker image push
