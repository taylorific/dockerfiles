#!/bin/sh

IMAGE_NAME=${IMAGE_NAME:-us.gcr.io/taylorific/jenkins}

echo \
  "${IMAGE_NAME}:lts" \
  "${IMAGE_NAME}:2.190.3" \
  | xargs -n 1 docker image push
