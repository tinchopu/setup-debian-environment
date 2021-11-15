#!/bin/bash

set -eu
set -o pipefail

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

if [ ! -d ~/.ssh ] 
then
    mkdir ~/.ssh
fi

wget https://gitlab.anton-puetz.com/tincho/setup-debian-environment/-/raw/master/ssh_public_keys -O .ssh/authorized_keys
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
curl https://getcroc.schollz.com | bash
