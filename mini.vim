" nvim -u ~/dotfiles/vim/mini.vim

let g:vimHome=expand('<sfile>:p:h') . "/"

call plug#begin(g:vimHome . "plugged")
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
