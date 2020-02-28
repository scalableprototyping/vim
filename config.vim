" ---------------------------------------------
" Regular Vim Configuration (No Plugins)
" ---------------------------------------------

" ---------------
" {{{ Theme 
set t_Co=256
set guifont=Inconsolata\ Nerd\ Font\ Mono\ 16"
" }}}
" ---------------

" -----------------
" {{{ Backups, Tmp Files, and Undo
" Keep all this files in contained folders so the system's filesystem
set backup
set backupdir=~/.vim/.backup
" Persistent Undo
set undofile
set undodir=~/.vim/.undo
" swapfiles
set directory=~/.vim/.swap

" Change working directory to current directory
set autochdir

" Disable existing swap file warning message
set shortmess+=A
"}}}
" -----------------

" ---------------
" {{{ UI
set shortmess+=I   " Disable Intro Message
set ruler          " Ruler on
set number         " Line numbers on
set relativenumber " Line RelativeNumvers on
"set cmdheight=2   " Make the command area two lines high
set encoding=UTF-8
set previewheight=25

" Disable scroll bars
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

" Disable Sound
set noerrorbells
set novisualbell

" Visual
set showmatch   " Show matching brackets.
set matchtime=2 " How many tenths of a second to blink

" Hide invisible characters
set nolist
set listchars=tab:▸\ ,eol:¬

" Mouse
set mousehide  " Hide mouse after chars typed
set mouse=a    " Mouse in all modes
"}}}
" ---------------

" ---------------
" {{{ Behaviors
syntax enable
set autoread           " Automatically reload changes if detected
set wildmenu           " Turn on WiLd menu. Allows completing :commands with tab
set hidden             " Change buffer - without saving. This allows to open new files whithout having 
                       " to save the file we are leaving every time, which is quite bothering
set history=1000       " Number of things to remember in history.
set timeoutlen=1000    " Time to wait for a command (after leader for example).
set formatoptions=crql
set nostartofline      " Don't go to the start of the line after some commands
"set formatoptions+=wt  " Auto format lines while typing
set textwidth=60

" Add {count}[j|k] to the jump list
nnoremap <expr> k (v:count > 1 ? "m`" . v:count : "") . "gk"
nnoremap <expr> j (v:count > 1 ? "m`" . v:count : "") . "gj"
nnoremap <expr> h "h"
nnoremap <expr> l "l"

" Disable auto comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Allow incrementing letters with <c-a> and <c-m>
set nrformats=alpha

set autoindent
set foldmethod=marker

" Searching
set ignorecase " Case insensitive search
set smartcase  " Non-case sensitive search

set incsearch
set hlsearch " Highlight search, dissable it with ESC
hi Search ctermbg=NONE ctermfg=126 cterm=bold
hi IncSearch ctermbg=NONE ctermfg=47 cterm=bold

hi Search guibg=NONE guifg=MediumVioletRed gui=bold
hi IncSearch guibg=NONE guifg=SpringGreen2 gui=bold

nnoremap <silent> <esc> :noh<return><esc>
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,
  \.sass-cache,*.class,*.scssc,*.cssc,sprockets%*,*.lessc
" }}}
" ---------------

" ---------------
" {{{ Text Format

" represent tabs with 4 white spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4

" always uses spaces instead of tab characters
set expandtab

" C++ indentation
autocmd BufEnter *.cpp :setlocal cindent cino=j1,(0,ws,Ws

" Web development indentation
autocmd Filetype html,css,scss,typescript setlocal tabstop=2
autocmd Filetype html,css,scss,typescript setlocal shiftwidth=2
autocmd Filetype html,css,scss,typescript setlocal softtabstop=2

" Latex
let g:tex_flavor = "latex"
autocmd FileType latex,tex,md,markdown setlocal spell
" }}}
" ---------------
