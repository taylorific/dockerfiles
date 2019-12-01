#!/bin/sh

IMAGE_NAME=${IMAGE_NAME:-us.gcr.io/taylorific/openjdk:11-jdk}

echo \
  "${IMAGE_NAME}" \
  "${IMAGE_NAME}-stretch" \
  | xargs -n 1 docker image push
