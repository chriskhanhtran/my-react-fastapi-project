#!/bin/bash
set -ex

# Get the directory of the current script
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BACKEND_DIR=$DIR/../backend
FRONTEND_DIR=$DIR/../frontend
BUILD_DIR=$DIR/../build

# Clear and create $BUILD_DIR
rm -rf $BUILD_DIR
mkdir $BUILD_DIR

# Copy backend files into $BUILD_DIR
cp $BACKEND_DIR/requirements.txt $BUILD_DIR
cp -R $BACKEND_DIR/app $BUILD_DIR

# Build frontend and copy static files into $BUILD_DIR
cd $FRONTEND_DIR
rm -rf dist
npm run build

rm -rf $BUILD_DIR/app/web
mv dist $BUILD_DIR/app/web
