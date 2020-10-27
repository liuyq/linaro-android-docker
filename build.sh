#!/bin/bash

# https://docs.docker.com/engine/install/ubuntu/
#   $ sudo apt-get remove docker docker-engine docker.io containerd runc
#   $ sudo apt-get update
#   $ sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
#   $ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#   $ sudo apt-key fingerprint 0EBFCD88
#   $ sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
#   $ sudo apt-get update
#   $ sudo apt-get install docker-ce docker-ce-cli containerd.io
#   $ sudo groupadd docker
#   $ sudo usermod -aG docker $USER
#   $ newgrp docker
#   TO UNINSTALL
#   $ sudo apt-get purge docker-ce docker-ce-cli containerd.io


# https://hub.docker.com/repository/docker/yongqinliu/linaro-android-docker
# https://github.com/liuyq/linaro-android-docker
# https://docs.docker.com/engine/reference/builder/#add

#docker build --tag bulletinboard:1.0 .
#docker run --publish 8000:8080 --detach --name bb bulletinboard:1.0
#docker build --tag linaro-android:0.1 . -f Dockerfile  # --tag is to define the image name
docker build --tag yongqinliu/linaro-android-docker:0.1 . -f Dockerfile  # --tag is to define the image name
# docker run --name test-android yongqinliu/linaro-android-docker:0.1 # --name is used to specified the container name
# docker run --rm --init --interactive --device=/dev/bus/usb/003/003  --tty --rm yongqinliu/linaro-android-docker:0.1 bash # name will be generated automatically
# docker run --rm --init --interactive --tty --mount=type=bind,source=/SATA3/srv/test-definitions-github/,destination=/lava --device=/dev/bus/usb/003/010 yongqinliu/linaro-android-docker:0.1 bash
#   # cd /lava/automated/android/boottime
#   # ./boottime.sh -S true -s "" -t 300 -o COLLECT -n 1 -v ""
#   # --rm remove automatically when exit
#   #--init Run an init inside the container that forwards signals and reaps processes
# docker image ls # list docker images
# docker ps --all # list containers
# docker login
# docker tag <local-repository-name>:<local-tag> <Your-DockerID>/<remote-repository-name>:<remote-tag>
# local repository name and tag could be checked from the output of docker image ls command
# docker tag linaro-android:0.1 yongqinliu/linaro-android-docker:0.1
# docker push <Your-DockerID>/<remote-repository-name>:<remote-tag>

