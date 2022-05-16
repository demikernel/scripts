#!/bin/bash

# Copyright (c) Microsoft Corporation.
# Licensed under the MIT license.

export LIBURING_VERSION=7ad5e52d4d2f91203615cd738e56aba10ad8b8f6

# Fail on error.
set -e

# Switch to working directory.
pushd $PWD
mkdir -p $HOME/tmp
cd $HOME/tmp

# Get sources
git clone https://github.com/axboe/liburing.git
cd liburing
git checkout $LIBURING_VERSION

# Build and install.
./configure --prefix=$HOME
make
make install

# Cleanup.
popd
rm -rf $HOME/tmp/liburing