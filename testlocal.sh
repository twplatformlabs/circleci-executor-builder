#!/usr/bin/env bash
_() { echo 'cleanup'; docker rm -f di-circleci-executor-builder-alpine-edge; docker rmi -f twdps/di-circleci-executor-builder:alpine-edge; docker rm -f di-circleci-executor-builder-slim-edge; docker rmi -f twdps/di-circleci-executor-builder:slim-edge ; }
trap _ EXIT

type=${1:-'pinned'}
alpine_dockerfile='Dockerfile.alpine'
slim_dockerfile='Dockerfile.slim'

# pass unpinned as a parameter to this script to test the unpinned
# package definitions for early detection of upcoming breaking changes
if [[ $type == "unpinned" ]]; then
  alpine_dockerfile='Dockerfile.alpine.unpinned'
  slim_dockerfile='Dockerfile.slim.unpinned'
fi

echo "build twdps/di-circleci-executor-builder:alpine"
docker build -t twdps/di-circleci-executor-builder:alpine-edge -f $alpine_dockerfile .
echo "build twdps/di-circleci-executor-builder:slim"
docker build -t twdps/di-circleci-executor-builder:slim-edge -f $slim_dockerfile .

echo "run image configuration tests"
docker run -it -d --name di-circleci-executor-builder-alpine-edge --entrypoint "/bin/ash" twdps/di-circleci-executor-builder:alpine-edge
docker run -it -d --name di-circleci-executor-builder-slim-edge --entrypoint "/bin/bash" twdps/di-circleci-executor-builder:slim-edge
bats test
