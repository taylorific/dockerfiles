#!/bin/sh

SHELLCHECK_OPTS="-x"
docker run -it --rm \
  -v "$(pwd):/src:ro" \
  --workdir /src \
  -e SHELLCHECK_OPTS="$SHELLCHECK_OPTS" \
  docker.r.winry.it/shellcheck shellcheck-all.sh
