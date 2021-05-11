"" Arpeggio needs to be loaded before first use
"sarp call arpeggio#load()

" ----------------------------------------
" Bindings
" ----------------------------------------
" Instead of stumbling into ex mode, repeat the last macro used.
nnoremap Q @@

" Beginning and End of line movement
" Mnemonic: like h and l but with Ctrl, which is the same
" modifier for moving with bigger motion brushes like up,
" down, forward, backward. 
noremap <c-h> ^
noremap <c-l> $

" Make Y behave like other capital commands.
nnoremap Y y$

" Save all
nnoremap <leader>wa :wa<CR>

" Paragraph movement
" Mnemonic: like j and k but with Ctrl, which is the same
" modifier for moving with bigger motion brushes like up,
" down, forward, backward. 
noremap <C-k> {
noremap <C-j> }

" Window Movement
nnoremap <silent> <leader>wh :wincmd h<CR>
nnoremap <silent> <leader>wj :wincmd j<CR>
nnoremap <silent> <leader>wk :wincmd k<CR>
nnoremap <silent> <leader>wl :wincmd l<CR>
nnoremap <silent> <leader>wq :wincmd q<CR>

" Folds
nnoremap <silent> <leader>zj zj
nnoremap <silent> <leader>zk zk
nnoremap <silent> <leader>zo zo
nnoremap <silent> <leader>zc zc
xnoremap <silent> <leader>zf zf
xnoremap <silent> <leader>zd zd


" Escape terminal insert mode with Esc key
tnoremap <Esc> <C-\><C-n>

" Maximize windows
nnoremap <space>wf <c-w>_ \| <c-w>\|
nnoremap <space>wr <c-w>=
