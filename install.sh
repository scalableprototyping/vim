#!/bin/bash

# Gitpod install script

# # Vim
# sudo add-apt-repository -y ppa:jonathonf/vim
# sudo apt-get update
# sudo apt-get install -y vim
rm -rf ~/.vim
sudo ln -s ~/.dotfiles ~/.vim
# vim +PlugInstall +qall

# Nvim
mkdir -p ~/programs/neovim
cd ~/programs/neovim
wget https://github.com/neovim/neovim/releases/download/v0.7.2/nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz
if [ -f "/usr/bin/nvim" ] ; then
    sudo rm "/usr/bin/nvim"
fi
sudo ln -s ~/programs/neovim/nvim-linux64/bin/nvim /usr/bin/
rm -f nvim-linux64.tar.gz
mkdir -p ~/.config
ln -s ~/.dotfiles  ~/.config/nvim
nvim +PlugInstall +qall

touch ~/.dotfiles/.vim_initialized
