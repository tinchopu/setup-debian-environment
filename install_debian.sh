#!/bin/bash

sudo apt update && sudo apt upgrade
sudo apt install neovim zsh tldr fzf git wget git -y
sudo apt remove vim -y
sudo apt autoremove -y
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
wget https://gitlab.anton-puetz.com/tincho/setup-debian-environment/-/raw/master/.p10k.zsh -O .p10k.zsh
mkdir .ssh
wget https://gitlab.anton-puetz.com/tincho/setup-debian-environment/-/raw/master/ssh_public_keys -O .ssh/authorized_keys
wget https://gitlab.anton-puetz.com/tincho/setup-debian-environment/-/raw/master/.zshrc -O .zshrc
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
curl https://getcroc.schollz.com | bash
