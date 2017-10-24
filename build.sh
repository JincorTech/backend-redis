#!/bin/bash

set -ex
IMAGE_NAME="jincort/backend-redis"
TAG="${1}"
docker build -t ${IMAGE_NAME}:${TAG} -t ${IMAGE_NAME}:latest .
docker push ${IMAGE_NAME}

