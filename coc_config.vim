" ------------------
" neoclide/coc.nvim
" ------------------
" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" " always show signcolumns
" set signcolumn=yes

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

" let g:coc_global_extensions=[ 
"             \]

" \'coc-yank',
" \'coc-git',
" \'coc-snippets',
" \'coc-angular', 
" \'coc-tsserver', 
" \'coc-eslint',
" \'coc-vimlsp',
" \'coc-lua',
