#! /usr/bin/env bash

REPO="tanmay"
IMAGE="opencv3-cudagl"
TAG="latest"

if [ ! "$(docker ps -q -f name=${TAG})" ]; then
    if [ "$(docker ps -aq -f status=exited -f name=${TAG})" ]; then
        # cleanup
        docker rm ${TAG}
    fi
    docker run -it \
           --runtime=nvidia \
           --privileged \
           --name ${TAG} \
           -e DISPLAY=$DISPLAY \
           -v /tmp/.X11-unix:/tmp/.X11-unix \
           ${REPO}/${IMAGE}:${TAG} \
           /bin/bash
fi
