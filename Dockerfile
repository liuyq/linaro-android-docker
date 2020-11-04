# Use the official image as a parent image.
FROM ubuntu:18.04

# Set the working directory.
WORKDIR /linaro-android

RUN apt-get update && apt-get install -y apt-utils unzip wget git sudo usbutils curl tar xz-utils libcurl4 coreutils zip python-lxml python-setuptools python-pexpect aapt lib32z1-dev libc6-dev-i386 lib32gcc1 python-dev python-protobuf protobuf-compiler python-virtualenv python-pip python-pexpect psmisc openjdk-8-jdk-headless openjdk-11-jdk-headless

#RUN apt-get install libc6:i386 libstdc++6:i386 libgcc1:i386 zlib1g:i386 libncurses5:i386

ADD https://dl.google.com/android/repository/platform-tools_r28.0.0-linux.zip .
RUN unzip platform-tools_r28.0.0-linux.zip
RUN rm -f /usr/bin/fastboot /usr/bin/adb && ln -s /linaro-android/platform-tools/fastboot /usr/bin/fastboot && ln -s /linaro-android/platform-tools/adb /usr/bin/adb
