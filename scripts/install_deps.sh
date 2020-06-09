#!/bin/bash

set -eu
set -o pipefail

function install() {
  mason install $1 $2
  mason link $1 $2
}

# setup mason
./scripts/setup.sh --config local.env
source local.env

install protozero 1.7.0
install vtzero 1.0.3
install gzip-hpp 0.1.0