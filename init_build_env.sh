#!/bin/sh
export TEMPLATECONF="$(dirname "$(realpath "$0")")/meta-rpi4-config/conf/templates/rpi4-config"
source openembedded-core/oe-init-build-env build
