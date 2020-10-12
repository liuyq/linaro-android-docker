#!/bin/bash

#docker build --tag bulletinboard:1.0 .
#docker run --publish 8000:8080 --detach --name bb bulletinboard:1.0
docker build --tag linaro-android:0.1 . -f Dockerfile  # --tag is to define the image name
# docker run --name test-android linaro-android:0.1 # --name is used to specified the container name
# docker run --interactive --tty linaro-android:0.1 bash # name will be generated automatically
# docker image ls # list docker images
# docker ps --all # list containers

