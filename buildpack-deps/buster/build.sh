#!/bin/sh

IMAGE_NAME=${IMAGE_NAME:-docker.r.winry.it/buildpack-deps:buster}
CREATED=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
REVISION=$(git rev-parse --short HEAD)

echo "==> Building docker image ${IMAGE_NAME}"
docker image build \
  --build-arg CREATED="${CREATED}" \
  --build-arg REVISION="${REVISION}" \
  -t "${IMAGE_NAME}" \
  .
