# Installation
Create symbolic link
~/.vim -> vim
    ln -s ~/dotfiles/vim ~/.vim

Create necessary folders
    mkdir ~/.vim/.backup ~/.vim/.undo ~/.vim/.swap

To fix the white borders in gtk-3.0
~/.config/gtk-3.0/gtk.css -> gtk.css
    ln -s ~/dotfiles/vim/gtk.css ~/.config/gtk-3.0/
