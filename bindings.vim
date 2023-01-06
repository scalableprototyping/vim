" ------------------
" Bindings
" ------------------

" Instead of stumbling into ex mode, repeat the last macro used.
nnoremap Q @@

" Beginning and End of line movement
" Mnemonic: like h and l but with Ctrl, which is the same
" modifier for moving with bigger motion brushes like up,
" down, forward, backward. 
noremap <c-h> ^
noremap <c-l> $

" Paragraph movement
" Mnemonic: like j and k but with Ctrl, which is the same
" modifier for moving with bigger motion brushes like up,
" down, forward, backward. 
noremap <C-k> {
noremap <C-j> }

" Make Y behave like other capital commands.
nnoremap Y y$

" Save all
nnoremap <leader>wa :wa<CR>
" Quit all
nnoremap <space>qa :qa<CR>

" Window Movement
nnoremap <silent> <leader>wh :wincmd h<CR>
nnoremap <silent> <leader>wj :wincmd j<CR>
nnoremap <silent> <leader>wk :wincmd k<CR>
nnoremap <silent> <leader>wl :wincmd l<CR>
nnoremap <silent> <leader>wq :wincmd q<CR>
" Maximize windows
nnoremap <space>wf <c-w>_ \| <c-w>\|
nnoremap <space>wr <c-w>=

" Escape terminal insert mode with Esc key
tnoremap <Esc> <C-\><C-n>

" Format text Operator
" gf := go format
" gfs := go format syntax
nnoremap gf  gw
nnoremap gfs =

" Jump to file (originally go to file but used by go format)
nnoremap <leader>jf gf
