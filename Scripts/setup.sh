#!/bin/bash

IMAGE_NAME='fprime'
CONTAINER_NAME='fpp-config'

git submodule update --init --recursive

echo "Configuring Docker"

docker build -t $IMAGE_NAME .

echo "Done Configuring Docker Image: $IMAGE_NAME"

echo "Making and Running Container $CONTAINER_NAME"

echo "Creating and starting $CONTAINER_NAME..."
docker run --name $CONTAINER_NAME -it $IMAGE_NAME

echo "goodbye, world"