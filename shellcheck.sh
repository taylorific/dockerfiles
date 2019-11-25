#!/bin/sh

SHELLCHECK_OPTS="-x"
docker run -it --rm \
  -v "$(pwd):/src:ro" \
  --workdir /src \
  -e SHELLCHECK_OPTS="$SHELLCHECK_OPTS" \
  us.gcr.io/taylorific/shellcheck shellcheck-all.sh
