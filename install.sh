apt-get install -y wget

# Vim
apt-get install -y vim
rm -rf ~/.vim
ln -s ~/dotfiles/vim ~/.vim
vim +PlugInstall +qall
touch ~/dotfiles/vim/.vim_initialized

# Nvim
mkdir -p ~/programs/neovim
cd ~/programs/neovim
wget https://github.com/neovim/neovim/releases/download/v0.7.2/nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz
ln -s ~/programs/neovim/nvim-linux64/bin /usr/bin/
rm nvim-linux64.tar.gz
mkdir ~/.config
ln -s ~/dotfiles/vim  ~/.config/nvim
nvim +PlugInstall +qall
