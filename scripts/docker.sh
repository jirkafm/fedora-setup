#!/bin/bash
if ! grep -qiR docker-ce /etc/yum.repos.d/;then
	sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
fi

sudo $INSTALL_CMD docker-ce docker-ce-cli containerd.io
sudo groupadd docker 
sudo usermod -aG docker $USER
sudo systemctl enable docker
