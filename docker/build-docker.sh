#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-bitnexpay/bitnexd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/bitnexd docker/bin/
cp $BUILD_DIR/src/bitnex-cli docker/bin/
cp $BUILD_DIR/src/bitnex-tx docker/bin/
strip docker/bin/bitnexd
strip docker/bin/bitnex-cli
strip docker/bin/bitnex-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
