#!/bin/bash

# Copyright (c) Microsoft Corporation.
# Licensed under the MIT license.

set -e

pkgs=(
	clang
	clang-tools-extra
	libmnl-devel
	meson
	numactl-devel
	pkgconf-pkg-config
	python3
	python3-pip
	rdma-core-devel
)

sudo dnf update -y
sudo dnf install -y ${pkgs[*]}

pip3 install pyelftools
