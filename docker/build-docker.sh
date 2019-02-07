#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-millenniumclubpay/millenniumclubd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/millenniumclubd docker/bin/
cp $BUILD_DIR/src/millenniumclub-cli docker/bin/
cp $BUILD_DIR/src/millenniumclub-tx docker/bin/
strip docker/bin/millenniumclubd
strip docker/bin/millenniumclub-cli
strip docker/bin/millenniumclub-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
