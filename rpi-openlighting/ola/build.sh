#!/bin/sh

OLA_VERSION=$(cat Dockerfile  | grep "ARG OLAVERSION" | head -1 | cut -f 2 -d '=')
CONTAINER_VERSION=$(git describe --match="" --always --abbrev --dirty)

docker image build -t olad:${OLA_VERSION}-${CONTAINER_VERSION} .
docker image tag olad:${OLA_VERSION}-${CONTAINER_VERSION} olad:latest
