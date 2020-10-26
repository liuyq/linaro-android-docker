#!/bin/bash

# https://docs.docker.com/engine/install/ubuntu/
# https://hub.docker.com/repository/docker/yongqinliu/linaro-android-docker
# https://github.com/liuyq/linaro-android-docker
# https://docs.docker.com/engine/reference/builder/#add

#docker build --tag bulletinboard:1.0 .
#docker run --publish 8000:8080 --detach --name bb bulletinboard:1.0
#docker build --tag linaro-android:0.1 . -f Dockerfile  # --tag is to define the image name
docker build --tag yongqinliu/linaro-android-docker:0.1 . -f Dockerfile  # --tag is to define the image name
# docker run --name test-android linaro-android:0.1 # --name is used to specified the container name
# docker run --interactive --tty --rm linaro-android:0.1 bash # name will be generated automatically
# 		# --rm remove automatically when exit
# docker image ls # list docker images
# docker ps --all # list containers
# docker login
# docker tag <local-repository-name>:<local-tag> <Your-DockerID>/<remote-repository-name>:<remote-tag>
# local repository name and tag could be checked from the output of docker image ls command
# docker tag linaro-android:0.1 yongqinliu/linaro-android-docker:0.1
# docker push <Your-DockerID>/<remote-repository-name>:<remote-tag>

