"" Arpeggio needs to be loaded before first use
call arpeggio#load()

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

" Paragraph movement
" Mnemonic: like j and k but with Ctrl, which is the same
" modifier for moving with bigger motion brushes like up,
" down, forward, backward. 
noremap <C-k> {
noremap <C-j> }

" Escape terminal insert mode with Esc key
tnoremap <Esc> <C-\><C-n>

" Maximize windows
Arpeggio nnoremap wf <c-w>_ \| <c-w>\|
Arpeggio nnoremap wr <c-w>=
