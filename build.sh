#! /usr/bin/env bash

REPO="tanmay"
IMAGE="opencv3-cudagl"
TAG="latest"

docker build --tag ${REPO}/${IMAGE}:${TAG} .