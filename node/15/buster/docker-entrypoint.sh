#!/bin/sh
set -e # exit immediately if non-zero status

# prefix entrypoint with 'node' if not a valid command
# [] is an alias for the 'test' builtin
# -- disables further option processing so options are passed through instead
# of being processed by set
if [ "${1#-}" != "${1}" ] || [ -z "$(command -v "${1}")" ]; then
  set -- node "$@"
fi

exec "$@"
