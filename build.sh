#!/bin/bash

# Directories
BUILD=build
KEYS=keys
STEAM=steam

# Delete current build
rm -rf $BUILD

# Prepare build
mkdir $BUILD

# Build authorized_keys
cat $KEYS/*.pub > $BUILD/authorized_keys

# Build steam_ids
cat $STEAM/*.id > $BUILD/steam_ids
