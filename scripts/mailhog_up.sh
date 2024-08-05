#!/bin/bash

CONTAINER_NAME="mailhog"
IMAGE="mailhog/mailhog"

if [ "$(docker ps -a -q -f name=$CONTAINER_NAME)" ]; then
    if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
        echo "Container '$CONTAINER_NAME' is already running."
    else
        echo "Starting existing container '$CONTAINER_NAME'."
        exec docker start $CONTAINER_NAME
        echo "Successfully started container '$CONTAINER_NAME'."
    fi
else
    echo "Creating and starting a new container '$CONTAINER_NAME'."
    exec docker run -d --name $CONTAINER_NAME -p 1025:1025 -p 8025:8025 $IMAGE
    echo "Successfully created container '$CONTAINER_NAME'."
fi
