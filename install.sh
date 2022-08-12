# Gitpod install script
pwd
cp -r ~/vim ~/dotfiles_vim

# Vim
sudo add-apt-repository -y ppa:jonathonf/vim
sudo apt-get update
sudo apt-get install -y vim
rm -rf ~/.vim
sudo ln -s ~/dotfiles_vim ~/.vim
vim +PlugInstall +qall
touch ~/dotfiles_vim/.vim_initialized

# Nvim
mkdir -p ~/programs/neovim
cd ~/programs/neovim
wget https://github.com/neovim/neovim/releases/download/v0.7.2/nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz
sudo ln -s ~/programs/neovim/nvim-linux64/bin /usr/bin/
rm nvim-linux64.tar.gz
mkdir ~/.config
ln -s ~/dotfiles_vim  ~/.config/nvim
nvim +PlugInstall +qall
