#!/bin/bash

# Copyright (c) Microsoft Corporation.
# Licensed under the MIT license.

set -e

APT_PACKAGES="librdmacm-dev libmnl-dev build-essential clang libnuma-dev pkg-config python3 python3-pip meson"



apt-get update
apt-get -y install $APT_PACKAGES

pip3 install pyelftools
