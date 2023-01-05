" Use same vim config
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath

" Find vim home relative to vimrc file
let g:vimHome=expand('<sfile>:p:h') . "/"

" Load lua files
exec "lua package.path =  package.path .. ';' .. vim.g.vimHome .. '/?.lua'"

if has("win64") || has("win32") || has("win16")
    source ~/vimfiles/vimrc
else
    source ~/.vim/vimrc
endif
