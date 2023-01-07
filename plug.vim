call plug#begin(g:vimHome . "plugged")

" -----------------
" UI Additions
" -----------------

" Corvine Theme
Plug 'blasco/vim-corvine'

" Smooth scrolling
Plug 'yuttie/comfortable-motion.vim'

" Powerline bar
Plug 'vim-airline/vim-airline'
Plug 'blasco/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

" Tab bar
Plug 'romgrk/barbar.nvim'

" -----------------
" Extesions
" -----------------

" File navigation and Most Recent Used files
Plug 'ctrlpvim/ctrlp.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-telescope/telescope.nvim'
" Add .ctrlp to ~/.gitignore_global
" git config --global core.excludesfile ~/.gitignore_global
" touch .ctrlp where we want to set the project's search root
" <leader>+of:= edit file
" <leader>+or:= edit recent

" File Explorer
Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
Plug 'nvim-tree/nvim-tree.lua'

" Fuzzy file content search (search in project) that allows to edit the search buffer
" Make sure you have ack, ag, pt or rg installed
" For rg (rip grep):
" https://github.com/BurntSushi/ripgrep#installation
Plug 'dyng/ctrlsf.vim'

" Git integration
Plug 'tpope/vim-fugitive'

" Yank registers management
" C-n(ext) and C-p(revious) after pasting to go through the yank ring
Plug 'svermeulen/vim-yoink'

" Autocompletion with (LSP) Language Server Protocol
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'github/copilot.vim'

Plug 'neovim/nvim-lspconfig'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" LSP installer manager
Plug 'williamboman/mason.nvim'

" C Sharp
Plug 'Decodetalkers/csharpls-extended-lsp.nvim'

" Undo history tree
Plug 'mbbill/undotree'

" Which Key
Plug 'folke/which-key.nvim'

" BufOnly, delete all other buffers (similar to builtin :tabonly but for buffers)
Plug 'vim-scripts/BufOnly.vim'

" Infile diff
" Allows to visually select text in one file and them compare it to a different selection
" Ussage: Select text and run Linediff
" when done, :LinediffReset
Plug 'AndrewRadev/linediff.vim'

" -----------------
" Additional Operators
" -----------------

" Allows to repeat plugin operators with `dot`
Plug 'tpope/vim-repeat'

" user defined operators boiler plate.
Plug 'kana/vim-operator-user'

" Targeted f/t and search motions
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'haya14busa/incsearch-easymotion.vim' 

" Improved * (star) and # motions.
Plug 'haya14busa/vim-asterisk'

" Comment operator | gc  := go comment
Plug 'tpope/vim-commentary'

" Surround with quotes and braces
Plug 'tpope/vim-surround'

" Substitute motion
" gs := go substitute (using yanked text)
Plug 'svermeulen/vim-subversive'

" gx := exchange
Plug 'tommcdo/vim-exchange'

" m: move (cut), d: delete
Plug 'svermeulen/vim-cutlass'

" Calculator and base converter
" g= := go equal, replaces selection or text object with result of calculation
" :Crunch command for expanded result
Plug 'arecarn/vim-crunch'
Plug 'arecarn/vim-selection'

" <leader>[h,j,k,l] send to window (useful with repl or terimal)
Plug 'KKPMW/vim-sendtowindow'

" Many additional mappings, check `:map [` for more details
Plug 'tpope/vim-unimpaired'

" -----------------
" Additional Text Objects
" -----------------

" Template to create custom text objects
Plug 'kana/vim-textobj-user'

" Pair, quote, separator, and arguments text object
" Pair text objects:
" ( ) (work on parentheses)
" { } B (work on curly braces)
" [ ] (work on square brackets)
" < > (work on angle brackets)
" t (work on tags)
" Quote text objects:
" ' (work on single quotes)
" " (work on double quotes)
" ` (work on back ticks)
" Separator text objects:
" , . ; : + - = ~ _ * # / | \ & $
" b: Any block, wildcard for pair text objects
" q: Any quote, wildcard for any quote text object
" a: Argument text objects
" na, Na: Next and last arguments text objects
Plug 'wellle/targets.vim'

" l: line
Plug 'blasco/vim-textobj-line'

" e: entire document
Plug 'kana/vim-textobj-entire'

" i: indent
"Plug 'michaeljsmith/vim-indent-object'
Plug 'blasco/vim-indent-object'

" x: xml attribute
Plug 'whatyouhide/vim-textobj-xmlattr'

" c: comment
Plug 'glts/vim-textobj-comment'

" iv: in variable segment
" av: a variable segment
"Plug 'Julian/vim-textobj-variable-segment'
Plug 'blasco/vim-textobj-variable-segment'

call plug#end()
