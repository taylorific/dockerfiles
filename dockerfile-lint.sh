#!/bin/sh

echo "==> Running replicated dockerfile lint..."
# https://github.com/replicatedhq/dockerfilelint/issues/115
docker run -it --rm -v "$(pwd)/Dockerfile:/Dockerfile" replicated/dockerfilelint:09a5034 /Dockerfile

echo "==> Running hadolint..."
docker run --rm -i hadolint/hadolint < ./Dockerfile
