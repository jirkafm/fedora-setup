#!/bin/bash
sudo $INSTALL_CMD moby-engine
sudo groupadd docker 
sudo usermod -aG docker $USER
sudo systemctl enable docker
