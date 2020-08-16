#!/bin/sh

IMAGE_NAME=docker.r.winry.it/nginx
CREATED=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
REVISION=$(git rev-parse --short HEAD)

echo "==> Building docker image ${IMAGE_NAME}"
docker image build \
  --build-arg CREATED="${CREATED}" \
  --build-arg REVISION="${REVISION}" \
  -t "${IMAGE_NAME}:latest" \
  -t "${IMAGE_NAME}:1.17" \
  -t "${IMAGE_NAME}:1" \
  -t "${IMAGE_NAME}:mainline" \
  -t "${IMAGE_NAME}:1.17.6" \
  .
