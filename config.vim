" ---------------------------------------------
" Vim Configuration (No Plugins)
" ---------------------------------------------

" -----------------
" Backups, Tmp Files, and Undo
" -----------------
" Keep all this files in contained folders so the system's filesystem
set backup
exec "set backupdir=" . g:vimHome . ".backup"
" Persistent Undo
set undofile
exec "set undodir=" . g:vimHome . ".undo"
" swapfiles
exec "set directory=" . g:vimHome . ".swap"

" Change working directory to current directory
set autochdir

" Disable existing swap file warning message
set shortmess+=A

" ---------------
" UI
" ---------------
set shortmess+=I   " Disable Intro Message
set ruler          " Ruler on
set number         " Line numbers on
set relativenumber " Line RelativeNumvers on
set previewheight=25

" Disable scroll bars
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

" Disable Sound
if has("win64") || has("win32")
    set novisualbell
    set belloff=all
elseif has("unix")
    set noerrorbells
    set novisualbell
endif

" Visual
set showmatch   " Show matching brackets.
set matchtime=2 " How many tenths of a second to blink

set nolist " hide invisible chars
" hide vertical | chars at the end of the buffer
set fillchars+=vert:\
" hide tilde char at end of buffer
set fillchars+=eob:\ 

" ---------------
" Behaviors
" ---------------
syntax enable           " Enable syntax highlighting
set autoread            " Automatically reload changes if detected
set wildmenu            " Turn on WiLd menu. Allows completing :commands with tab
set hidden              " Change buffer - without saving. This allows to open new files whithout having 
                        " to save the file we are leaving every time, which is quite bothering
set history=1000        " Number of things to remember in history.
set timeoutlen=250      " Time to wait for a command (after leader for example).
set formatoptions=crql
set nostartofline       " Don't go to the start of the line after some commands
if has('nvim')
    set inccommand=nosplit  " Preview substitue changes on the fly
endif
set backspace=indent,eol,start " Backspace over everything in insert mode
set mousehide  " Hide mouse after chars typed
set mouse=a    " Mouse in all modes

set clipboard=unnamedplus
if has("win64") || has("win32")
    set clipboard=unnamed
endif

" Add {count}[j|k] to the jump list, so that we can <c-o> and <c-i> to jump back and forth
nnoremap <expr> k (v:count > 1 ? "m`" . v:count : "") . "k"
nnoremap <expr> j (v:count > 1 ? "m`" . v:count : "") . "j"
nnoremap <expr> h "h"
nnoremap <expr> l "l"

" Disable auto comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Allow incrementing letters with <c-a> and <c-m>
set nrformats=alpha

set autoindent
set foldmethod=marker

" ---------------
" Searching
" ---------------

set ignorecase " Case insensitive search
set smartcase  " Non-case sensitive search
set incsearch
set hlsearch " Highlight search, dissable it with ESC

" Bold Highlight when searching
hi Search ctermbg=NONE ctermfg=126 cterm=bold
hi IncSearch ctermbg=NONE ctermfg=47 cterm=bold
hi Search guibg=NONE guifg=MediumVioletRed gui=bold
hi IncSearch guibg=NONE guifg=SpringGreen2 gui=bold

" Disable highlight when pressing ESC
nnoremap <silent> <esc> :noh<return><esc> 

" ---------------
" Text 
" ---------------
set encoding=UTF-8
set textwidth=60

" Fonts
" Install the font from: 
" https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Inconsolata/complete
if has("win64") || has("win32")
    " Do not install Regular and Bold separately, use the complete version:
    " Inconsolata Nerd Font Complete Mono Windows Compatible.otf
    set guifont=Inconsolata\ NF:h15"
elseif has("unix")
    " Inconsolata Nerd Font Complete.otf
    set guifont=Inconsolata\ Nerd\ Font\ Mono\ 16"
endif

" represent tabs with 2 white spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2

" always uses spaces instead of tab characters
set expandtab
