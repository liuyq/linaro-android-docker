#!/bin/bash -ex

mount binfmt_misc -t binfmt_misc /proc/sys/fs/binfmt_misc
apt-get install -y qemu-user-static libc6:amd64
#cat /proc/sys/fs/binfmt_misc/qemu-aarch64
