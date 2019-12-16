#!/bin/sh

IMAGE_NAME=${IMAGE_NAME:-docker.r.winry.it/python:3.8.0-alpine3.10}

echo \
  "${IMAGE_NAME}" \
  | xargs -n 1 docker image push
