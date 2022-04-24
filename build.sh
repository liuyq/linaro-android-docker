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
#   # docker: Error response from daemon: failed to create endpoint charming_dirac on network bridge: failed to add the host (veth1277202) <=> sandbox (veth3344514) pair interfaces: operation not supported.
#   # ERRO[0009] error waiting for container: context canceled
#   # https://www.mail-archive.com/ubuntu-bugs@lists.ubuntu.com/msg5968593.html
#   $ sudo apt install linux-modules-extra-raspi # for 21.10 with RPi4
#   $ docker run hello-world
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
# docker run --rm --init --interactive --tty --mount=type=bind,source=/SATA3/srv/test-definitions-github/,destination=/lava --device=/dev/bus/usb/003/010 '--env=PS1=docker-test-shell:$ ' yongqinliu/linaro-android-docker:0.1 bash --norc -i
# docker run --rm --init --interactive --name=lava-docker-test-shell-2198961-5.3 --hostname=lava --mount=type=bind,source=/SATA3/srv/test-definitions-github,destination=/lava --device=/dev/bus/usb/003/019 '--env=PS1=docker-test-shell:$ ' yongqinliu/linaro-android-docker:0.1 bash --norc -i
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

exit
# error 1:
#    22:15:21 liuyq:linaro-android-docker$ docker run hello-world
#    Unable to find image 'hello-world:latest' locally
#    latest: Pulling from library/hello-world
#    93288797bd35: Pull complete
#    Digest: sha256:507ecde44b8eb741278274653120c2bf793b174c06ff4eaa672b713b3263477b
#    Status: Downloaded newer image for hello-world:latest
#    docker: Error response from daemon: failed to create endpoint awesome_mcclintock on network bridge: failed to add the host (vethde17a27) <=> sandbox (veth2d2a4ef) pair interfaces: operation not supported.
#    ERRO[0024] error waiting for container: context canceled
#    22:16:03 liuyq:linaro-android-docker$
# solution:
#    https://flutterq.com/docker-error-response-from-daemon-failed-to-create-endpoint-priceless_noether-on-network-bridge/
#    https://stackoverflow.com/questions/69780128/docker-error-response-from-daemon-failed-to-create-endpoint-priceless-noether
#    The vent kernel module is not installed. If you do: sudo apt install linux-modules-extra-raspi
#    $ sudo apt install linux-modules-extra-raspi
#    $ sudo reboot
# install lava instance:
#    https://git.lavasoftware.org/lava/pkg/docker-compose
#    https://linaro.atlassian.net/wiki/spaces/LIPUB/pages/18852151302/Getting+Started+with+LAVA+Docker+and+a+FRDM-K64F
#    https://github.com/danrue/lava.therub.org
#    https://therub.org/2019/03/01/lava-docker-compose/
#    https://www.youtube.com/watch?v=3SHNhiCb5-4
#    https://elinux.org/images/8/86/Bootstraping_Local_KernelCI.pdf
