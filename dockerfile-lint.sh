#!/bin/sh

echo "==> Running hadolint..."
docker run --rm -i hadolint/hadolint < ./Dockerfile
