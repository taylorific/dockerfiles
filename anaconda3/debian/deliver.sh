#!/bin/sh

IMAGE_NAME=docker.r.winry.it/anaconda3:2019.10

echo \
  "${IMAGE_NAME}" \
  | xargs -n 1 docker image push
