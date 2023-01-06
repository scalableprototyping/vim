" ------------------
" neoclide/coc.nvim
" ------------------
" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" always show signcolumns
set signcolumn=yes

" jd := jump to definition
" jc := jump to code
silent nmap <leader>jd <Plug>(coc-definition)
silent nmap <leader>jc <Plug>(coc-implementation)

silent nmap <leader>jd <Plug>(coc-definition)
silent nmap <leader>jt <Plug>(coc-type-definition)
silent nmap <leader>ji <Plug>(coc-implementation)
silent nmap <leader>jr <Plug>(coc-references)

" Remap for rename current word
silent nmap <leader>rn <Plug>(coc-rename)

" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
autocmd Filetype cpp,typescript,javascript xmap if <Plug>(coc-funcobj-i)
autocmd Filetype cpp,typescript,javascript omap if <Plug>(coc-funcobj-i)
autocmd Filetype cpp,typescript,javascript xmap af <Plug>(coc-funcobj-a)
autocmd Filetype cpp,typescript,javascript omap af <Plug>(coc-funcobj-a)

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

nmap [f <Plug>(coc-diagnostic-next)
nmap ]f <Plug>(coc-diagnostic-prev)

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

" ------------------
" neoclide/coc-yank
" ------------------
silent nnoremap <space>p  :<C-u>CocList -A yank<cr>
autocmd VimEnter * execute "hi HighlightedyankRegion gui=NONE guibg=#005f87 term=NONE ctermbg=24"

" ------------------
" neoclide/coc-git
" ------------------
" navigate chunks of current buffer
nmap [g <Plug>(coc-git-prevchunk)
nmap ]g <Plug>(coc-git-nextchunk)
" navigate conflicts of current buffer
nmap [c <Plug>(coc-git-prevconflict)
nmap ]c <Plug>(coc-git-nextconflict)
" create text object for git chunks
omap ig <Plug>(coc-git-chunk-inner)
xmap ig <Plug>(coc-git-chunk-inner)
omap ag <Plug>(coc-git-chunk-outer)
xmap ag <Plug>(coc-git-chunk-outer)

let g:coc_global_extensions=[ 
            \'coc-yank',
            \'coc-git',
            \'coc-snippets',
            \]

" \'coc-angular', 
" \'coc-tsserver', 
" \'coc-eslint',
" \'coc-vimlsp',
" \'coc-lua',
