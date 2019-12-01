#!/bin/sh

BASE_IMAGE_NAME=us.gcr.io/taylorific/buildpack-deps:buster
IMAGE_NAME=us.gcr.io/taylorific/python:3.8.0-buster
CREATED=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
REVISION=$(git rev-parse --short HEAD)

echo "==> Building docker image ${IMAGE_NAME}"
docker image build \
  --build-arg BASE_IMAGE_NAME="${BASE_IMAGE_NAME}" \
  --build-arg CREATED="${CREATED}" \
  --build-arg REVISION="${REVISION}" \
  -t "${IMAGE_NAME}" \
  .
