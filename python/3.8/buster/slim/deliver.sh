#!/bin/sh

IMAGE_NAME=us.gcr.io/taylorific/python:3.8.0-slim-buster

echo \
  "${IMAGE_NAME}" \
  | xargs -n 1 docker image push
