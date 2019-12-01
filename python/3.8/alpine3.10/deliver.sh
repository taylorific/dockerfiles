#!/bin/sh

IMAGE_NAME=us.gcr.io/taylorific/python:3.8.0-alpine3.10

echo \
  "${IMAGE_NAME}" \
  | xargs -n 1 docker image push
