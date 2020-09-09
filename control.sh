#!/bin/bash

# Applying KISS principle therefore if something fails:
#	1) Comment what is done
#	2) Fix failing script
#	3) Execute again

SHELL=/bin/bash
SECTION=all
SCRIPTS_ORDER="packages services docker mount-utils terminal-tools gui-tools dev-tools symlinks zshell flatpak env virtualbox"

export LIST_PKGS_CMD="rpm -qa"
export UPDATE_CMD="dnf -y update"
export INSTALL_CMD="dnf -y install"

function print_scripts() {
	for script in $SCRIPTS_ORDER
	do 
		echo $script.sh 
		cat ./scripts/$script.sh
		echo
	done
}

function execute() {
	echo "Executing setup script:	$1"
	$SHELL ./scripts/$1.sh
}


if [ $# -eq 1 ]
then
	if [ $1 == 'print' ]
	then
		print_scripts
		exit 0
	fi
	SECTION=$1
fi

function execute() {
	echo "Executing setup script:	$1"
	$SHELL ./scripts/$1.sh
}

case "$SECTION" in

all)  echo "Executing all setup scripts:"
	for script in $SCRIPTS_ORDER
	do
		execute $script
	done
   ;;
packages)
	execute packages
   ;;
services)
	execute services
   ;;
docker) 
	execute docker
   ;;
mount-utils) 
	execute mount-utils
   ;;
terminal-tools) 
	execute terminal-tools
   ;;
gui-tools) 
	execute gui-tools
   ;;
dev-tools)
	execute dev-tools
   ;;
symlinks)
	execute symlinks
   ;;
zshell)
	execute zshell
   ;;
env)
	execute env
   ;;
flatpak)
	execute flatpak
   ;;
virtualbox)
	execute virtualbox
   ;;
*) echo "Wrong action. Exiting..."
   ;;
esac

