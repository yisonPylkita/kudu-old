#!/bin/sh
# Build whole application

SOURCE_DIR="source"
BUILD_DIR=".build"    # Build directory

# Remove previous build directory
rm -rf $BUILD_DIR

# Create build directory
mkdir $BUILD_DIR 

# Copy project files to build directory
cp -R $SOURCE_DIR $BUILD_DIR

# Build project in build directory
dub build --root=.build