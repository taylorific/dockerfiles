#!/bin/sh

IMAGE_NAME=${IMAGE_NAME:-us.gcr.io/taylorific/openjdk:11-jre-slim}

echo \
  "${IMAGE_NAME}" \
  | xargs -n 1 docker image push
