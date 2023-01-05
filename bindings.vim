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
" Quit all
nnoremap <space>qa :qa<CR>

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
" Maximize windows
nnoremap <space>wf <c-w>_ \| <c-w>\|
nnoremap <space>wr <c-w>=

" Escape terminal insert mode with Esc key
tnoremap <Esc> <C-\><C-n>
