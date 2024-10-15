#!/bin/bash
set -e

# Stop the running container (replace <container_name> with your actual container name or ID)
docker stop $(docker ps -q --filter ancestor=aabdullahoctavedocker/simple-python-flask-app)

# Remove the stopped container
docker rm $(docker ps -a -q --filter ancestor=aabdullahoctavedocker/simple-python-flask-app)
