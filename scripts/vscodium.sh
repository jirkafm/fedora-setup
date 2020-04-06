#!/bin/bash
sudo rpm --import https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg

if ! grep -qiR vscodium /etc/yum.repos.d; then
	printf "[gitlab.com_paulcarroty_vscodium_repo]\nname=gitlab.com_paulcarroty_vscodium_repo\nbaseurl=https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/repos/rpms/\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg" |sudo tee -a /etc/yum.repos.d/vscodium.repo
fi

sudo $INSTALL_CMD codium

