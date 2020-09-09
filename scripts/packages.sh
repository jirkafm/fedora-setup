#!/bin/bash
sudo $UPDATE_CMD
sudo $INSTALL_CMD dnf-plugins-core

if ! $LIST_PKGS_CMD | grep -q rpmfusion-free; then
	sudo $INSTALL_CMD https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
fi

if ! $LIST_PKGS_CMD | grep -q rpmfusion-nonfree; then
	sudo $INSTALL_CMD https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
fi
