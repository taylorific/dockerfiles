#!/bin/sh

echo "==> Lint phase"
../shellcheck.sh
../dockerfile-lint.sh
