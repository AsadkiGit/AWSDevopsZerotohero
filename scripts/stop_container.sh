#!/bin/bash
set -e

# Define the image name
IMAGE_NAME="aabdullahoctavedocker/simple-python-flask-app"

# Stop running containers
docker stop $(docker ps -q --filter ancestor=$IMAGE_NAME) || true

# Remove stopped containers
docker rm $(docker ps -a -q --filter ancestor=$IMAGE_NAME) || true

echo "Containers based on $IMAGE_NAME have been stopped and removed."
