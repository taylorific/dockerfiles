#!/bin/bash
# shellcheck disable=SC2086
set -o errexit # abort on nonzero exit status
set -o pipefail # don't hide errors within pipes
# set -o nounset # abort on unbound variable
# set -o verbose # produce a trace of every command executed -v
set -o xtrace # produce a trace of the expanded command -x

# To perform a syntax check/dry run of your bash script run:
# bash -n myscript.sh

readonly script_name=$(basename "${0}")
# readonly script_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

deliver() {
  IMAGE_NAME="$1"
  shift
  # If no tag specified, use latest
  [ -z "$1" ] && TAG_PARAMS=" ${IMAGE_NAME}:latest"
  # Otherwise just use tag list
  for tag in "$@"; do
    TAG_PARAMS+=" ${IMAGE_NAME}:${tag}"
  done

  echo "==> Pushing docker image ${IMAGE_NAME} with tags [$*]"
  echo \
    ${TAG_PARAMS} \
    | xargs -n 1 docker image push
}

usage() {
  echo "Usage: ${script_name} image [tag1] [tag2] [...]"
}

args() {
  if [ $# -lt 1 ]; then
    usage
    exit 1
  fi

  deliver "$@"
}

main() {
  args "$@"
}

main "$@"
