#!/bin/bash
set -e

if [ -z "$DREDD_VERSION" ]; then
  echo "You need to set the DREDD_VERSION environment variable before running this script"
  exit 1
fi
echo "Building version: $DREDD_VERSION"

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push "apiaryio/dredd:$DREDD_VERSION"
docker push apiaryio/dredd:latest
docker push apiaryio/dredd:stable
