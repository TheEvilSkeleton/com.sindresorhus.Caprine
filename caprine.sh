#!/usr/bin/env sh

set -o errexit

TMPDIR="${XDG_RUNTIME_DIR}/app/${FLATPAK_ID}"
export TMPDIR

env TMPDIR=$XDG_CACHE_HOME CHROME_WRAPPER=$(readlink -f "$0") zypak-wrapper.sh /app/Caprine/caprine "$@"
