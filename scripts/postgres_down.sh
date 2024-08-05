#!/bin/bash

CONTAINER_NAME="postgres"

if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
    echo "Stopping container '$CONTAINER_NAME'."
    docker stop $CONTAINER_NAME
else
    echo "Container '$CONTAINER_NAME' is not running."
fi
