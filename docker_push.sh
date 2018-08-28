#!/bin/bash
DREDD_VERSION=`./scripts/getLatestStableNodePackage dredd`
echo "Building version: $DREDD_VERSION"
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push apiaryio/dredd:$DREDD_VERSION
docker push apiaryio/dredd:latest
