# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0

FROM amazonlinux:2

SHELL ["/bin/bash", "-c"]

# Enable the EPEL repository on Amazon Linux 2 before installing packages
# https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/add-repositories.html

# gcc 7.3.1 is the latest version versions `yum --showduplicates list gcc`
RUN set -ex && \
    yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
    yum -y update && yum install -y \
    gcc \
    gcc-c++ \
    cmake \
    ninja-build \
    perl \
    quilt \
    golang && \
    yum clean packages && \
    yum clean metadata && \
    yum clean all && \
    rm -rf /tmp/* && \
    rm -rf /var/cache/yum

ENV CC=gcc
ENV CXX=g++
