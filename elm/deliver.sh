#!/bin/sh

IMAGE_NAME=${IMAGE_NAME:-us.gcr.io/taylorific/elm:0.19.1}

echo \
  "${IMAGE_NAME}" \
  | xargs -n 1 docker image push
