FROM debian:jessie
MAINTAINER Ruslan Nagimov "nagimov@outlook.com"
ARG EPICS_VERSION
RUN apt-get update && \
    apt-get install -y wget && \
    apt-get install -y build-essential && \
    apt-get install -y libreadline-dev && \
    wget -P /tmp https://www.aps.anl.gov/epics/download/base/base-${EPICS_VERSION}.tar.gz && \
    tar -xzvf /tmp/base-${EPICS_VERSION}.tar.gz -C /tmp && \
    cd /tmp/base-${EPICS_VERSION} && \
    make
