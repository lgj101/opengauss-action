#!/bin/sh

docker_run="docker run"
docker_run="$docker_run -e GS_PASSWORD=$INPUT_GS_PASSWORD"
docker_run="$docker_run -d -p 5432:5432 enmotech/opengauss:$INPUT_GS_VERSION"

sh -c "$docker_run"
