#!/usr/bin/env bash

PORT=4444
HOST="docker"
DOCKER_HOST="tcp://$HOST:$PORT"

echo "Docker host: $HOST"
echo "Docker port: $PORT"

I=0
while ! timeout 1 bash -c "echo > /dev/tcp/$HOST/$PORT"; do
  I=$((I+1))
  sleep 1
  if [ $($I % 10) == 0 ]; then
    echo "Waiting for docker container to boot, $I seconds elapsed"
  fi
done

cd $(dirname $0)

docker -H $DOCKER_HOST build --no-cache -t intermediate/slave-base slave-base
docker -H $DOCKER_HOST build --no-cache -t slaves/java-1.7 java-1.7
docker -H $DOCKER_HOST build --no-cache -t slaves/java-1.7 java-1.7
docker -H $DOCKER_HOST build --no-cache -t slaves/ruby-2.0 ruby-2.0
docker -H $DOCKER_HOST build --no-cache -t intermediate/php-base php-base
