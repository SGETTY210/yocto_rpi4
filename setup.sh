#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
export TEMPLATECONF="$SCRIPT_DIR/meta-rpi4-config/conf/templates/rpi4-config"

if [ ! -d "$TEMPLATECONF" ]; then
    echo "Missing: $TEMPLATECONF" >&2
    return 1 2>/dev/null || exit 1
fi

source "$SCRIPT_DIR/openembedded-core/oe-init-build-env" "$SCRIPT_DIR/build"
