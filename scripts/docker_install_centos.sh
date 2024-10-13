#!/bin/bash

# How to use: sudo bash docker_install_centos.sh
# Installing docker 
set -e

yum install -y yum-utils

yum-config-manager \
	--add-repo \
	https://download.docker.com/linux/centos/docker-ce.repo

yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

systemctl enable docker
systemctl start docker
