#!/bin/bash -ex

PROJECT_NAME=redis-slave
#PROJECT_TAG=`git describe --tags --always`
PROJECT_TAG=v4.0
DOCKER_REGISRTY=192.168.152.243:5000
docker build --rm -t ${PROJECT_NAME}:${PROJECT_TAG} .
docker tag ${PROJECT_NAME}:${PROJECT_TAG} ${DOCKER_REGISRTY}/servicemesh/${PROJECT_NAME}:${PROJECT_TAG}
docker push ${DOCKER_REGISRTY}/servicemesh/${PROJECT_NAME}:${PROJECT_TAG}
