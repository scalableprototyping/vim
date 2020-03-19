" ------------------
" neoclide/coc.nvim
" ------------------
" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=200

" don't give |ins-completion-menu| messages.
"set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use enter to choose autocomplete option
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


" jd := jump to definition
" jc := jump to code
silent Arpeggio nmap <silent> jd <Plug>(coc-definition)
silent Arpeggio nmap <silent> jc <Plug>(coc-implementation)

nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gt <Plug>(coc-type-definition)
nmap <silent> <leader>gi <Plug>(coc-implementation)
nmap <silent> <leader>gr <Plug>(coc-references)

" Remap for rename current word
silent Arpeggio nmap <silent> rn <Plug>(coc-rename)

" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
autocmd Filetype cpp,typescript,javascript xmap if <Plug>(coc-funcobj-i)
autocmd Filetype cpp,typescript,javascript omap if <Plug>(coc-funcobj-i)
autocmd Filetype cpp,typescript,javascript xmap af <Plug>(coc-funcobj-a)
autocmd Filetype cpp,typescript,javascript omap af <Plug>(coc-funcobj-a)

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" ------------------
" neoclide/coc-snippets
" ------------------
" Use <C-s> for trigger snippet expand.
" Use <C-j> for select text for visual placeholder of snippet.
imap <C-s> <Plug>(coc-snippets-expand)
" vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
" imap <C-s> <Plug>(coc-snippets-expand-jump)

" ------------------
" neoclide/coc-git
" ------------------
" navigate chunks of current buffer
nmap [g <Plug>(coc-git-prevchunk)
nmap ]g <Plug>(coc-git-nextchunk)

" show chunk diff at current position
nmap <leader>gs <Plug>(coc-git-chunkinfo)
" show commit contains current position
nmap <leader>gc <Plug>(coc-git-commit)
" TODO: is this correct? it is not working
" create text object for git chunks
omap ig <Plug>(coc-text-object-inner)
xmap ig <Plug>(coc-text-object-inner)
omap ag <Plug>(coc-text-object-outer)
xmap ag <Plug>(coc-text-object-outer)

nnoremap <silent> <space>y  :<C-u>CocList -A yank<cr>
autocmd VimEnter * execute "hi HighlightedyankRegion gui=NONE guibg=#005f87 term=NONE ctermbg=24"
