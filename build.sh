#!/bin/bash
# Build script for compilation of EPICS Base using docker container

# ${EPICS_VERSION} variable is used from within Dockerfile when downloading sources
EPICS_VERSION=3.15.5

# build an image
docker build --build-arg EPICS_VERSION=${EPICS_VERSION} -t epics-base-compiler --rm .

# run the image once to instantiate container
docker run --name ebc epics-base-compiler

# copy necessary binaries/libraries from the container to the host
docker cp ebc:/tmp/base-3.15.5/lib/linux-x86_64/libca.so.${EPICS_VERSION} .
docker cp ebc:/tmp/base-3.15.5/lib/linux-x86_64/libCom.so.${EPICS_VERSION} .

# cleanup: remove the container and image
docker rm ebc
docker rmi epics-base-compiler

