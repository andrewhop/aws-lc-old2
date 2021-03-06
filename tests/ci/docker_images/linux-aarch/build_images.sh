#!/bin/bash -ex
# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0

docker build -t ubuntu-19.10-aarch:gcc-9x ubuntu-19.10_gcc-9x
docker build -t ubuntu-19.10-aarch:clang-9x ubuntu-19.10_clang-9x
docker build -t ubuntu-19.10-aarch:sanitizer ubuntu-19.10_clang-9x_sanitizer
