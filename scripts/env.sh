#!/bin/bash
OVERWRITE=N
CONFS_GIT_URL=https://github.com/jirkafm
CONFS_GIT_REPO=my-env
CONFS_GIT_ENV_DIR=$HOME/.jirkafm/$CONFS_GIT_REPO

git clone $CONFS_GIT_URL/$CONFS_GIT_REPO $CONFS_GIT_ENV_DIR 

# This can be very dangerous as it may overwrite your environment
# settings if you are sure set OVERWRITE=Y to get dot files from
# git repo to your $HOME
if [[ ! -z $OVERWRITE && $OVERWRITE == 'Y' ]]; then
  rsync --exclude '.git'  -avI $CONFS_GIT_ENV_DIR/.[^.]* ~/
	chmod 600 /home/$USER/.ssh/config
fi
