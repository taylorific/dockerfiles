#!/bin/sh

docker run -it --rm -v "$(pwd):/src:ro" --workdir /src \
  us.gcr.io/taylorific/shellcheck shellcheck-all.sh
