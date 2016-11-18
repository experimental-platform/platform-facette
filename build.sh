#!/usr/bin/env sh

set -eu

apk update
apk add --no-progress nodejs-lts rrdtool-dev build-base
cd /facette && make build-bin build-static
chown $TRAVIS_UID -R /facette/build

