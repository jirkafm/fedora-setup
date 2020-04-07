#!/bin/bash
DNF_CONF=/etc/dnf/dnf.conf

if ! grep -q 'ip_resolve' $DNF_CONF; then	
	echo 'ip_resolve=4' | sudo tee -a $DNF_CONF
fi

if ! grep -q 'fastestmirror' $DNF_CONF; then
	echo 'fastestmirror=True' | sudo tee -a $DNF_CONF
fi

sudo $UPDATE_CMD
sudo $INSTALL_CMD dnf-plugins-core

if ! $LIST_PKGS_CMD | grep -q rpmfusion-free; then
	sudo $INSTALL_CMD https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
fi

if ! $LIST_PKGS_CMD | grep -q rpmfusion-nonfree; then
	sudo $INSTALL_CMD https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
fi
