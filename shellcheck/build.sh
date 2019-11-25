#!/bin/sh

dir=$(CDPATH='' cd -- "$(dirname -- "$0")" && pwd -P)
# shellcheck source=shared.sh
. "${dir}/shared.sh"

docker image build -t "${IMAGE_REPOSITORY}/${IMAGE_NAME}"  .
