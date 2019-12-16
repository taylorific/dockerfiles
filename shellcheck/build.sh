#!/bin/sh

dir=$(CDPATH='' cd -- "$(dirname -- "$0")" && pwd -P)
# shellcheck source=shared.sh
. "${dir}/shared.sh"

BASE_IMAGE_NAME=${BASE_IMAGE_NAME:-docker.r.winry.it/debian:bullseye-slim}
echo "==> Building docker image ${IMAGE_NAME}"
docker image build \
  --build-arg BASE_IMAGE_NAME="${BASE_IMAGE_NAME}" \
  --build-arg CREATED="${CREATED}" \
  --build-arg REVISION="${REVISION}" \
  -t "${IMAGE_NAME}" \
  .
