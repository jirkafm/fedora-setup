#!/bin/bash
if ! grep -qiR virtualbox /etc/yum.repos.d; then
	sudo dnf config-manager --add-repo https://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo
fi

sudo $INSTALL_CMD VirtualBox
