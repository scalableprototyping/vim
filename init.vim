" " Installing neovim python module is required for python plugins:
"     " sudo pip2 install neovim
"     " sudo pip3 install neovim
" let g:python_host_prog  = '/usr/bin/python2'
" let g:python3_host_prog = '/usr/bin/python3'

" " Plugins installed with vim-plug
" source ~/.config/nvim/plug.vim

" " Set leaer key
" " Note: This line MUST come before any <leader> mappings 
" let mapleader=" "

" " All hotkeys, not depedant on plugins, are bound here.
" source ~/.config/nvim/bindings.vim

" " User defined functions.
" source ~/.config/nvim/functions.vim

" " Plugin-specific configuration.
" source ~/.config/nvim/plugin_config.vim
" source ~/.config/nvim/coc_config.vim

" " Vim configuration.
" source ~/.config/nvim/config.vim

set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vim/vimrc
