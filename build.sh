DREDD_VERSION=`./scripts/getLatestStableNodePackage dredd`
echo "Building version: $DREDD_VERSION"
docker build -t apiaryio/dredd:$DREDD_VERSION --build-arg DREDD_VERSION="$DREDD_VERSION" -f Dockerfile --no-cache .
docker tag apiaryio/dredd:$DREDD_VERSION apiaryio/dredd:latest
