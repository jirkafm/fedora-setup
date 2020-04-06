#!/bin/sh
sudo $INSTALL_CMD zsh
sudo chsh -s /bin/zsh $USER 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
