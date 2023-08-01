#!/bin/sh

docker_run="docker run"
docker_run="$docker_run -e GS_USERNAME=$INPUT_GS_USERNAME"
docker_run="$docker_run -e GS_PASSWORD=$INPUT_GS_PASSWORD"
docker_run="$docker_run -e GS_DB=$INPUT_GS_DB"
docker_run="$docker_run -d -p $INPUT_HOST_PORT:$INPUT_CONTAINER_PORT enmotech/opengauss:$INPUT_GS_VERSION --port=$INPUT_CONTAINER_PORT"

sh -c "$docker_run"
