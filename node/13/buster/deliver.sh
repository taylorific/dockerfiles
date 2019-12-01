#!/bin/sh

IMAGE_NAME=${IMAGE_NAME:-us.gcr.io/taylorific/node}

echo \
  "${IMAGE_NAME}:13.1.0-bullseye" \
  "${IMAGE_NAME}:13.1-bullseye" \
  "${IMAGE_NAME}:13-bullseye" \
  "${IMAGE_NAME}:bullseye" \
  | xargs -n 1 docker image push
