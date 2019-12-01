#!/bin/sh

IMAGE_NAME=${IMAGE_NAME:-us.gcr.io/taylorific/buildpack-deps:bullseye-curl}

echo \
  "${IMAGE_NAME}" \
  | xargs -n 1 docker image push
