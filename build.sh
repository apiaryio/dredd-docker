#!/bin/bash
set -e

if [ -z "$DREDD_VERSION" ]; then
  echo "You need to set the DREDD_VERSION environment variable before running this script"
  exit 1
fi
echo "Building version: $DREDD_VERSION"

docker build \
  -t "apiaryio/dredd:$DREDD_VERSION" \
  --build-arg DREDD_VERSION="$DREDD_VERSION" \
  -f Dockerfile --no-cache .
docker tag "apiaryio/dredd:$DREDD_VERSION" apiaryio/dredd:latest
docker tag "apiaryio/dredd:$DREDD_VERSION" apiaryio/dredd:stable
