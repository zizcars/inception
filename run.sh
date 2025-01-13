#!/bin/bash

docker rmi -f $(docker images -aq)
docker rm -f $(docker ps -aq)
# docker build -t my-nginx . --no-cache
# docker run -d -p 5000:80 my-nginx:latest
