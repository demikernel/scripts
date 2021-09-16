#!/bin/bash

# Copyright (c) Microsoft Corporation.
# Licensed under the MIT license.

set -e

APT_PACKAGES="\
	build-essential\
	clang \
	libnuma-dev \
	pkg-config \
	python3 \
	python3-pip\
	libboost-dev \
	libyaml-cpp-dev \
	libboost-chrono-dev \
	libboost-program-options-dev \
	libboost-system-dev"

PIP_PACKAGES="pyelftools ninja meson"

apt-get update
apt-get -y install $APT_PACKAGES

pip3 install $PIP_PACKAGES
