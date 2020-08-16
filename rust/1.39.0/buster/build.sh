#!/bin/sh

IMAGE_NAME=docker.r.winry.it/rust
CREATED=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
REVISION=$(git rev-parse --short HEAD)

echo "==> Building docker image ${IMAGE_NAME}"
docker image build \
  --build-arg CREATED="${CREATED}" \
  --build-arg REVISION="${REVISION}" \
  -t "${IMAGE_NAME}:latest" \
  -t "${IMAGE_NAME}:1.39.0" \
  -t "${IMAGE_NAME}:1.39" \
  -t "${IMAGE_NAME}:1" \
  -t "${IMAGE_NAME}:buster" \
  -t "${IMAGE_NAME}:1.39.0-buster" \
  -t "${IMAGE_NAME}:1.39-buster" \
  -t "${IMAGE_NAME}:1-buster" \
  .
