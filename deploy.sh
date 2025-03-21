#!/bin/bash

# Set Docker image name, tag, and container name
IMAGE_NAME="sabarivasan/proj3"
TAG="latest"
CONTAINER_NAME="my_container"  # <-- FIXED: No slash

# Stop and remove any existing container with the same name
docker stop $CONTAINER_NAME || true
docker rm $CONTAINER_NAME || true

# Run the new Docker container
docker run -d -p 3002:80 --name $CONTAINER_NAME $IMAGE_NAME:$TAG
