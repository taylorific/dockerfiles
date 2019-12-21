#!/bin/bash
set -o errexit # abort on nonzero exit status
set -o pipefail # don't hide errors within pipes
set -o nounset # abort on unbound variable
# set -o verbose # produce a trace of every command executed -v
# set -o xtrace # produce a trace of the expanded command -x

# readonly script_name=$(basename "${0}")
readonly script_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
# IFS=$'\t\n'   # Split on newlines and tabs (but not on spaces)

echo "==> Lint phase"
${script_dir}/shellcheck.sh
${script_dir}/dockerfile-lint.sh
