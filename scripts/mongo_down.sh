#!/bin/bash

CONTAINER_NAME="mongodb"

if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
    echo "Stopping container '$CONTAINER_NAME'."
    docker stop $CONTAINER_NAME
    echo "Successfully stopped container '$CONTAINER_NAME'."
else
    echo "Container '$CONTAINER_NAME' is not running."
fi
