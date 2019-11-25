#!/bin/sh

dir=$(CDPATH='' cd -- "$(dirname -- "$0")" && pwd -P)
# shellcheck source=shared.sh
. "${dir}/shared.sh"

 echo \
   "${IMAGE_REPOSITORY}/${IMAGE_NAME}" \
   | xargs -n 1 docker image push
