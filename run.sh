#!/bin/bash

# Function to run Docker container
run_container() {
    local version=$1
    local image_name="python:$version"
    local container_name="python$version"

    echo "Running Docker container for Python $version..."
    docker run -it --name $container_name $image_name
}

# Check command line arguments
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <python_version>"
    echo "Example: $0 3.8.10"
    exit 1
fi

# Run the specified Python version container
run_container $1
