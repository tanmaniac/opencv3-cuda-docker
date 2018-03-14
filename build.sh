#! /usr/bin/env bash

REPO="tanmaniac"
IMAGE="opencv3-cudagl"
TAG="latest"

docker build --tag ${REPO}/${IMAGE}:${TAG} .