#!/bin/bash
DREDD_VERSION=$(npm view dredd version)
echo "Building version: $DREDD_VERSION"
docker build \
  -t "apiaryio/dredd:$DREDD_VERSION" \
  --build-arg DREDD_VERSION="$DREDD_VERSION"
  -f Dockerfile \
  --no-cache \
  .
docker tag "apiaryio/dredd:$DREDD_VERSION" apiaryio/dredd:latest
docker tag "apiaryio/dredd:$DREDD_VERSION" apiaryio/dredd:stable
