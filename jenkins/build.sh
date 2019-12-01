#!/bin/sh

BASE_IMAGE_NAME=${BASE_IMAGE_NAME:-us.gcr.io/taylorific/openjdk:8-jdk-stretch}
IMAGE_NAME=${IMAGE_NAME:-us.gcr.io/taylorific/jenkins}
CREATED=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
REVISION=$(git rev-parse --short HEAD)

echo "==> Building docker image ${IMAGE_NAME}"
docker image build \
  --build-arg BASE_IMAGE_NAME="${BASE_IMAGE_NAME}" \
  --build-arg CREATED="${CREATED}" \
  --build-arg REVISION="${REVISION}" \
  --build-arg JENKINS_VERSION=2.190.3 \
  --build-arg JENKINS_SHA=79c2042b30ad71dc9cf17a5877f64eaed405fa03e24e002ca60f8db73b7ad490 \
  -t "${IMAGE_NAME}:lts" \
  -t "${IMAGE_NAME}:2.190.3" \
  .
