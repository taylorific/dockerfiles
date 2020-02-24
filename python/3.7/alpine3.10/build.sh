#!/bin/sh

IMAGE_NAME=${IMAGE_NAME:-docker.r.winry.it/python}
CREATED=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
REVISION=$(git rev-parse --short HEAD)

echo "==> Building docker image ${IMAGE_NAME}"
docker image build \
  --build-arg CREATED="${CREATED}" \
  --build-arg REVISION="${REVISION}" \
  -t "${IMAGE_NAME}:3.7-alpine" \
  -t "${IMAGE_NAME}:3.7.5-alpine" \
  -t "${IMAGE_NAME}:3.7-alpine3.10" \
  -t "${IMAGE_NAME}:3.7.5-alpine3.10" \
  .
