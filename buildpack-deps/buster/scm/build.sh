#!/bin/sh

BASE_IMAGE_NAME=${BASE_IMAGE_NAME:-us.gcr.io/taylorific/buildpack-deps:buster-curl}
IMAGE_NAME=${IMAGE_NAME:-us.gcr.io/taylorific/buildpack-deps:buster-scm}
REVISION=$(git rev-parse --short HEAD)

echo "==> Building docker image ${IMAGE_NAME}"
docker image build \
  --build-arg BASE_IMAGE_NAME="${BASE_IMAGE_NAME}" \
  --build-arg CREATED="${CREATED}" \
  --build-arg REVISION="${REVISION}" \
  -t "${IMAGE_NAME}" \
  .
