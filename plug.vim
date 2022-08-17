" Enable the following line if we have SSH configured with github
" let g:plug_url_format = "git@github.com:%s.git"
call plug#begin()

" -----------------
"{{{ UI Additions

    " Corvine Theme
    "{{{
        " Plug 'arzg/vim-corvine'
        Plug 'blasco/vim-corvine'
    "}}}

    " Buffer autoresizing
    "{{{
        " Plug 'camspiers/animate.vim'
        " Plug 'camspiers/lens.vim'
    "}}}

    " Smooth scrolling
    "{{{
        "Plug 'terryma/vim-smooth-scroll'
        Plug 'yuttie/comfortable-motion.vim'
    "}}}

    " Powerline bar
    " {{{
        Plug 'vim-airline/vim-airline'
        Plug 'blasco/vim-airline-themes'
        Plug 'ryanoasis/vim-devicons'
    "}}}

    " Tag bar
    "{{{
        Plug 'majutsushi/tagbar'
     "}}}
"}}}
" -----------------

" -----------------
"{{{ Extesions

    "{{{ Core extensions

        " File navigation and Most Recent Used files
        "{{{
            Plug 'ctrlpvim/ctrlp.vim'
            " Add .ctrlp to ~/.gitignore_global
            " git config --global core.excludesfile ~/.gitignore_global
            " touch .ctrlp where we want to set the project's search root
            " <leader>+of:= edit file
            " <leader>+or:= edit recent
        "}}}

        " File Explorer
        "{{{
            Plug 'scrooloose/nerdtree'
            " Plug 'tpope/vim-vinegar'
            " x := explorer
            " Toggle file explorer
            " xo := explorer open/close
            " xl := explorer locate := find current opened file in explorer
            " xp := explorer project := Change directory to root of the repository
            " Change the NERDTree directory to the root node
            " Remove vertical | chars
        "}}}

        " Fuzzy file content search
        " Make sure you have ack, ag, pt or rg installed
        " For rg (rip grep):
        " https://github.com/BurntSushi/ripgrep#installation
        "{{{
            Plug 'dyng/ctrlsf.vim'
            " Search word under cursor
            " Search last  searched pattern
        "}}}

        " Git integration
        "{{{
            Plug 'tpope/vim-fugitive'
            " There doesn't seem to be a confortable way to switch branches in vim-fugitive.
            " Best approach seems to use the terminal, if not we can use this:
            " Plug 'idanarye/vim-merginal'
        "}}}

        " Yank registers management
        " C-n(ext) and C-p(revious) after pasting to go through the yank ring
        "{{{
            " In order to keep yanked lines after closing vim: 
            " Install a clipboard manager such as parcellite and set it to launch in startup
            Plug 'svermeulen/vim-yoink'
            " Added in plugin_config:
            " <leader>p 
            " Change from using system clipboard to vim clipboard, which has a special
            " formatting that allows to paste visual blocks

        "}}}

        " Autocompletion with Language Server Processor
        "{{{
            Plug 'neoclide/coc.nvim', {'branch': 'release'}

            " Use <C-l> for trigger snippet expand.
            " Use <C-j> for jump to next placeholder, it's default of coc.nvim
            " Use <C-k> for jump to previous placeholder, it's default of coc.nvim
            " Use <C-j> for both expand and jump (make expand higher priority.)
            " Add header guards with :HeaderguardAdd
        "}}}

        "{{{
            Plug 'github/copilot.vim'
        "}}}

        " Undo history tree
        "{{{
            Plug 'mbbill/undotree'
        "}}}

        " Which Key
        "{{{
            " Plug 'liuchengxu/vim-which-key', {'branch': 'release'}
            Plug 'rene-descartes2021/vim-which-key', {'branch': 'only-desc-global'}
        "}}}
    "}}}

    " {{{ Extra

        " Infile diff
        " Allows to visually select text in one file and them compare it to a different selection
        " Ussage: Select text and run Linediff
        " when done, :LinediffReset
        "{{{
            Plug 'AndrewRadev/linediff.vim'
        "}}}

        " Fzf integration.
        " Use :Lines to fuzzy search lines of current file
        "{{{
            Plug 'junegunn/fzf.vim'
        "}}}

        " Search definition and ocurrences 
        "{{{
            " Plug 'pechorin/any-jump.vim'
        "}}}

        " Color picker
        "{{{
            " Plug 'gu-fan/colorv.vim'
            " Plug 'ap/vim-css-color'
        "}}}

    " }}}

    "{{{ Language dependent extensions

        " C# Language support
        Plug 'OmniSharp/omnisharp-vim'

        " XML tags autocompletion
        "{{{
            " Conficts with coc-vim
            " Plug 'tpope/vim-ragtag'
            " The mappings apply in insert mode. Interesting are the following:
            " <C-X><Space>  <foo>^</foo>          *ragtag-CTRL-X_<Space>*
            " <C-X><CR>     <foo>\n^\n</foo>      *ragtag-CTRL-X_<CR>*
            " <C-X>/        Last HTML tag closed  *ragtag-CTRL-X_/*
        "}}}

        " Create C/C++ header guards with :HeaderguardAdd
        "{{{
            " Plug 'drmikehenry/vim-headerguard'
        "}}}

    "}}}

"}}}
" -----------------

" -----------------
"{{{ Syntax Hihgliht
    Plug 'sudar/vim-arduino-syntax'
    Plug 'leafgarland/typescript-vim'
    Plug 'peterhoeg/vim-qml'
    Plug 'http://git.oschina.net/qiuchangjie/ShaderHighLight'
"}}}
" -----------------

" -----------------
"{{{ Additional Operators

    " Repeat plugin operations
    " Allows to repeat plugin operators with `dot`
    "{{{
        Plug 'tpope/vim-repeat'
    "}}}

    " user defined operators boiler plate.
    "{{{
        Plug 'kana/vim-operator-user'
    "}}}

    " Targeted f/t and search motions
    "{{{
       Plug 'easymotion/vim-easymotion'
       Plug 'haya14busa/incsearch.vim'
       Plug 'haya14busa/incsearch-fuzzy.vim'
       Plug 'haya14busa/incsearch-easymotion.vim' 
    "}}}

    " Improved * (star) and # motions.
    "{{{
        Plug 'haya14busa/vim-asterisk'
    "}}}

    " Comment operator | gc  := go comment
    "{{{
        Plug 'tpope/vim-commentary'
    "}}}

    " Surround with quotes and braces
    "{{{
        Plug 'tpope/vim-surround'
    "}}}

    " Substitute motion
    " gs := go substitute
    " gr := go replace in range
    "{{{
        " TODO: 'griwiw' not working, it takes the whole line
        Plug 'svermeulen/vim-subversive'
        " one line
        " until the end of the line
        " visual
        " sc := swap characters
        " TODO: motion 2 is taken as whole line
        " gr<motion1><motion2> := replace <motion1> in <motion2>
        " gr<right><right> := rll := replace one character
        " gr?<motion1><motion2> := replace with confirmation <motion1> in <motion2>
    "}}}

    " gx := exchange
    "{{{
        Plug 'tommcdo/vim-exchange'
    "}}}

    " go: go order
    "{{{
        Plug 'christoomey/vim-sort-motion'
        " Allow sorting from visual block
        Plug 'yaroot/vissort'
    "}}}

    " m: move (cut), d: delete
    "{{{
        Plug 'svermeulen/vim-cutlass'
        " one line
        " until the end of line
        " visual
        " set marks with <leader>m
        " Moving lines
    "}}}


    " Calculator and base converter
    " g= := go equal, replaces selection or text object with result of calculation
    " :Crunch command for expanded result
    "{{{
        Plug 'arecarn/vim-crunch'
        " Plug 'blasco/vim-crunch'
        Plug 'arecarn/vim-selection' " arecarn/vim-crunch dependency
    "}}}

    " ga: go append
    " gi: go insert
    "{{{
        "TODO: Is not repeatable
        Plug 'bagohart/vim-operator-insert-append'
        " Plug 'mwgkgk/vim-operator-append'
        " Plug 'deris/vim-operator-insert'
    "}}}

    " :S for smart substitution and coercion:
    " coerce operator: = cr[
    "     s:= snake_case,
    "     m:= mixedCase,
    "     c:= camelCase,
    "     u:= UPPER_CASE ,
    "     -:= dash-case,
    "     .:= dot.case,
    "     <space>:=space case,a
    "     t:= Title Case
    "{{{
        Plug 'tpope/vim-abolish'
        Plug 'arthurxavierx/vim-caser'
    "}}}

    " cra  := convert(cr) all(n), shows all the number representations of the number under
    " cr[x,b,d,o]  := convert to hexadecimal, binary, decimal, octal
    " cursor
    "{{{
        Plug 'glts/vim-magnum'
        Plug 'glts/vim-radical'
        " Plug 'blasco/vim-radical'
    "}}}

    " gws := (go web search) search in google
    "{{{
        Plug 'kana/vim-wwwsearch'
    "}}}

    " g[>,<] := go [>,<]
    " g[>,<]p := go [>,<] partial
    "{{{
        Plug 'machakann/vim-operator-jerk'
        " go shift partial
    "}}}

    " gfa[l,r] := go format align [left,right]
    "{{{
        Plug 'junegunn/vim-easy-align'
        " Plug 'tommcdo/vim-lion'
        " TODO: LionRight("="), so it doesn't ask and a mapping like gfae (go format align equation) can be created
        " TODO: gfa{char}{motion} is more natural than gfa{motion}{char}
    "}}}

    " <leader>[h,j,k,l] send to window (useful with repl or terimal)
    "{{{
        Plug 'KKPMW/vim-sendtowindow'
    "}}}

    " ge: go to the end of + <text-obj> 
    " gb: go to the beginning of + <text-obj> 
    "{{{
        "Plug 'rjayatilleka/vim-operator-goto'
        Plug 'blasco/vim-operator-goto'
    "}}}

    " Many additional mappings, check `:map [` for more details
    "{{{
        Plug 'tpope/vim-unimpaired'
    "}}}

    " Operations for working with dates
    "{{{
        " Plug 'tpope/vim-speeddating'
    "}}}

    " d<space> delete trailing spaces in line. Also shows them
    "{{{
       " Plug 'ntpeters/vim-better-whitespace'
        "Plug 'blasco/vim-better-whitespace'
        " Set the highlight color for trailing whitespaces:
    "}}}

"}}}
" -----------------

" -----------------
"{{{ Additional Text Objects

    " To beginning or end of following text object modifier
    "{{{
        Plug 'tommcdo/vim-ninja-feet'
    "}}}

    " Template to create custom text objects
    "{{{
        Plug 'kana/vim-textobj-user'
    "}}}

    " Pair, quote, separator, and arguments text object
    "{{{
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
        " Plug 'blasco/targets.vim', { 'branch': 'feature/count_parsing' }
    "}}}

    " l: line
    "{{{
        Plug 'blasco/vim-textobj-line'
    "}}}

    " e: entire document
    "{{{
        Plug 'kana/vim-textobj-entire'
    "}}}

    " i: indent
    "{{{
        "Plug 'michaeljsmith/vim-indent-object'
        Plug 'blasco/vim-indent-object'
    " }}}

    " x: xml attribute
    "{{{
        Plug 'whatyouhide/vim-textobj-xmlattr'
    "}}}

    " f: function object for c, java, vim. When a language server is available we us coc instead
    "{{{
        Plug 'kana/vim-textobj-function'
    "}}}

    " c: comment
    "{{{
    " TODO: target single line comments
    Plug 'glts/vim-textobj-comment'
    " if: in find between characters
    " af: a find between characters

    " in between text object
    "{{{
        " TODO: b from targets vim needs to be remaped to br (brackets)
        " Plug 'thinca/vim-textobj-between'
        " ibc := in between characters
        " abc := around between characters
        " let g:textobj_between_no_default_key_mappings=1
        " omap ibc <Plug>(textobj-between-i)
        " xmap ibc <Plug>(textobj-between-i)
        " omap abc <Plug>(textobj-between-a)
        " xmap abc <Plug>(textobj-between-a)
    "}}}

    " iv: in variable segment
    " av: a variable segment
    "Plug 'Julian/vim-textobj-variable-segment'
    Plug 'blasco/vim-textobj-variable-segment'

    "}}}
"}}}
" -----------------

" -----------------
"{{{ Vim debugging
    " Add vimscript funtions to debug with Breakadd func s:func
    "{{{
        " Plug 'tpope/vim-scriptease'
    "}}}
"}}}
" -----------------

call plug#end()
