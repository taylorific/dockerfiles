#!/bin/sh

IMAGE_NAME=us.gcr.io/taylorific/anaconda3:2019.10

echo \
  "${IMAGE_NAME}" \
  | xargs -n 1 docker image push
