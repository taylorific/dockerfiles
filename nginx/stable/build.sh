#!/bin/sh

IMAGE_NAME=docker.r.winry.it/nginx
CREATED=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
REVISION=$(git rev-parse --short HEAD)

echo "==> Building docker image ${IMAGE_NAME}"
docker image build \
  --build-arg CREATED="${CREATED}" \
  --build-arg REVISION="${REVISION}" \
  -t "${IMAGE_NAME}:1.16" \
  -t "${IMAGE_NAME}:stable" \
  -t "${IMAGE_NAME}:1.16.1" \
  .
