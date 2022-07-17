" Use same vim config
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath

if has("win64") || has("win32") || has("win16")
    source ~/vimfiles/vimrc
else
    source ~/.vim/vimrc
endif
