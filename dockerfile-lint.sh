#!/bin/sh

echo "==> Running hadolint..."
docker run --rm -i docker.r.winry.it/hadolint/hadolint < ./Dockerfile
