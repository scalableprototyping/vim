" ----------------------------------------
" Bindings
" ----------------------------------------

" Make going to beginning and end of lines easier.
noremap H ^
noremap L $

" Make Y behave like other capital commands.
nnoremap Y y$

noremap <C-k> {
noremap <C-j> }

" Escape terminal insert mode with Esc key
tnoremap <Esc> <C-\><C-n>
