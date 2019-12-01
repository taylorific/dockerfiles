#!/bin/sh

IMAGE_NAME=${IMAGE_NAME:-us.gcr.io/taylorific/openjdk:8-jre}

echo \
  "${IMAGE_NAME}" \
  | xargs -n 1 docker image push
