#!/bin/bash
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y nano    yum-utils   docker-ce   docker-ce-cli   containerd.io
sudo systemctl enable docker
sudo systemctl start docker
sudo usermod -aG docker vagrant