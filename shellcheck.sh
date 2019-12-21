#!/bin/bash

DOCKER_LOCAL=docker.r.winry.it
SHELLCHECK_OPTS="-x"

docker container run -it --rm \
  -v "$(pwd):/src:ro" \
  --workdir /src \
  -e SHELLCHECK_OPTS="${SHELLCHECK_OPTS}" \
  ${DOCKER_LOCAL}/shellcheck shellcheck-all.sh
