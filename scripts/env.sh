#!/bin/bash
OVERWRITE=N
CONFS_GIT_URL=https://github.com/jirkafm
CONFS_GIT_REPO=my-env
CONFS_GIT_ENV_DIR=$HOME/.jirkafm/$CONFS_GIT_REPO

git clone $CONFS_GIT_URL/$CONFS_GIT_REPO $CONFS_GIT_ENV_DIR 

# Install tmux tpm
if [ ! -d ~/.tmux/plugins/tpm ]; then
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

# This can be very dangerous as it may overwrite your environment
# settings if you are sure set OVERWRITE=Y to get dot files from
# git repo to your $HOME
if [[ ! -z $OVERWRITE && $OVERWRITE == 'Y' ]]; then
  rsync --exclude '.git'  -avI $CONFS_GIT_ENV_DIR/.[^.]* ~/
	chmod 600 /home/$USER/.ssh/config
fi

# Install vim plugins related dependencies
if [[ $INSTALL_VIM_DEPS == 'Y' ]]; then
	sudo $INSTALL_CMD make cmake python-devel gcc g++ nodejs curl xdg-utils the_silver_searcher
	sudo npm -g install instant-markdown-d
fi
