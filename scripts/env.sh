#!/bin/bash
OVERWRITE=N
CONFS_GIT_URL=https://github.com/jirkafm
CONFS_GIT_REPO=my-env

git clone $CONFS_GIT_URL/$CONFS_GIT_REPO $HOME/.jirkafm/$CONFS_GIT_REPO

# This can be very dangerous as it may overwrite your environment
# settings if you are sure set OVERWRITE=Y to get dot files from
# git repo to your $HOME
if [[ ! -z $OVERWRITE && $OVERWRITE == 'Y' ]]; then
  rsync --exclude '.git'  -avI $HOME/$CONFS_GIT_REPO/.[^.]* ~/
	chmod 600 /home/$USER/.ssh/config
fi
