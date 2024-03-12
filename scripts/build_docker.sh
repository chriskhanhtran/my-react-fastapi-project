#!/bin/bash

set -ex

IMAGE="react-fastapi"
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BUILD_SCRIPT=$DIR/build.sh
BUILD_DIR=$DIR/../build
DOCKERFILE=$DIR/../Dockerfile

# Build
bash $BUILD_SCRIPT

# Build docker image
cd $BUILD_DIR
docker build -t $IMAGE -f $DOCKERFILE .
