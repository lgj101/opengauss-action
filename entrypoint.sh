#!/bin/sh

docker_run="docker run"
docker_run="$docker_run -e GS_USERNAME=$INPUT_GS_USERNAME"
docker_run="$docker_run -e GS_PASSWORD=$INPUT_GS_PASSWORD"
docker_run="$docker_run -e GS_DB=$INPUT_GS_DB"
docker_run="$docker_run -d -p 15432:5432 enmotech/opengauss:$INPUT_GS_VERSION"

sh -c "$docker_run"
