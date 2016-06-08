FROM ubuntu

MAINTAINER Ryan Kurte <ryankurte@gmail.com>
LABEL Description="Qemu based emulation for raspberry pi using loopback images"

# Update package repository
RUN apt-get update 

# Install required packages
RUN apt-get install -y --allow-unauthenticated \
    qemu \
    qemu-user-static \ 
    binfmt-support \
    parted

# Setup working directory
RUN mkdir -p /usr/rpi
WORKDIR /usr/rpi


