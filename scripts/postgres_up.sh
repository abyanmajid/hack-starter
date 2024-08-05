#!/bin/bash

CONTAINER_NAME="postgres"
ENV_FILE=".env"
IMAGE="postgres:12"
VOLUME="pgdata:/var/lib/postgresql/data"
PORT="5432:5432"

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
    exec docker run -d --name $CONTAINER_NAME --env-file $ENV_FILE -p $PORT -v $VOLUME $IMAGE
    echo "Successfully created container '$CONTAINER_NAME"
fi
