#!/bin/bash

# Copyright (c) Microsoft Corporation.
# Licensed under the MIT license.

export LIBURING_VERSION=liburing-2.1

# Fail on error.
set -e

# Switch to working directory.
pushd $PWD
mkdir -p $HOME/tmp
cd $HOME/tmp

# Get sources
git clone https://github.com/axboe/liburing.git -b $LIBURING_VERSION

# Build and install.
cd liburing
./configure --prefix=$HOME
make
make install

# Cleanup.
popd
rm -rf $HOME/tmp/liburing