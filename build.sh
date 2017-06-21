#!/bin/bash
set -ue
VERSION=${1:-dev}

echo "Version is ${VERSION}"
docker run --rm \
  -v $PWD:/go/src/github.com/saymedia/journald-cloudwatch-logs \
  -w /go/src/github.com/saymedia/journald-cloudwatch-logs \
  -e CGO_ENABLED=1 -e GOOS=linux \
  golang:1.8.3-stretch \
  /bin/sh -c 'apt-get update && apt-get install "libsystemd-dev" -y && go build -a -o docker/journald-cloudwatch-logs'

docker build --rm -t jollinshead/journald-cloudwatch-logs:${VERSION} docker/