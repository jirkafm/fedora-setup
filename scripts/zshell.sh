#!/bin/sh
if [ ! -z "$INSTALL_CMD" ]; then
	sudo $INSTALL_CMD zsh zsh-lovers
fi

if [ ! -z $USER ]; then
	sudo chsh -s /bin/zsh $USER 
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
