#!/bin/bash

CONTAINER_NAME="mongodb"
ENV_FILE=".env"  
IMAGE="mongo:5" 
VOLUME="mongodbdata:/data/db" 
PORT="27017:27017"

if [ "$(docker ps -a -q -f name=$CONTAINER_NAME)" ]; then
    if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
        echo "Container '$CONTAINER_NAME' is already running."
    else
        echo "Starting existing container '$CONTAINER_NAME'."
        docker start $CONTAINER_NAME
        echo "Successfully started container '$CONTAINER_NAME'."
    fi
else
    echo "Creating and starting a new container '$CONTAINER_NAME'."
    docker run -d --name $CONTAINER_NAME --env-file $ENV_FILE -p $PORT -v $VOLUME $IMAGE
    echo "Successfully created and started container '$CONTAINER_NAME'."
fi
