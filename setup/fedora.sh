#!/bin/bash

# Copyright (c) Microsoft Corporation.
# Licensed under the MIT license.

set -e

PACKAGES="rdma-core-devel libmnl-devel clang numactl-devel pkgconf-pkg-config
python3 python3-pip meson clang-tools-extra"

sudo dnf update -y
sudo dnf install -y $PACKAGES

pip3 install pyelftools
