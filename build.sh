#!/bin/bash

# Function to build Docker image
build_image() {
    local version=$1
    local image_name="python:$version"

    echo "Building Docker image for Python $version..."
    docker build --build-arg PYTHON_VERSION=$version -t $image_name -f Dockerfile.template .
}

# Check command line arguments
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <python_version>"
    echo "Example: $0 3.8.10"
    exit 1
fi

# Build the specified Python version image
build_image $1
