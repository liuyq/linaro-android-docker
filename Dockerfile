# Use the official image as a parent image.
FROM ubuntu:18.04

# Set the working directory.
WORKDIR /linaro-android

RUN apt-get update
RUN apt-get install -y apt-utils unzip wget git

ADD https://dl.google.com/android/repository/platform-tools_r28.0.0-linux.zip .
RUN unzip platform-tools_r28.0.0-linux.zip
RUN rm -f /usr/bin/fastboot /usr/bin/adb
RUN ln -s /linaro-android/platform-tools/fastboot /usr/bin/fastboot
RUN ln -s /linaro-android/platform-tools/adb /usr/bin/adb
RUN ls -l /usr/bin/adb /usr/bin/fastboot
RUN fastboot --version
RUN adb --version


