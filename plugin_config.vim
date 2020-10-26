"" Arpeggio is great, but the downside is that macros become unusable...
"" Arpeggio needs to be loaded before first use
" call arpeggio#load()

" ------------------
" vim-caser
" ------------------
let g:caser_prefix = 'cr'

" ------------------
" any-jump
" ------------------
" Normal mode: Jump to definition under cursore
silent nnoremap <leader>ja :AnyJump<CR>
" Visual mode: jump to selected text in visual mode
silent xnoremap <leader>ja :AnyJumpVisual<CR>
" Normal mode: open previous opened file (after jump)
nnoremap <leader>jb :AnyJumpBack<CR>
" Normal mode: open last closed search window again
nnoremap <leader>jl :AnyJumpLastResults<CR>

" ------------------
" tagbar
" ------------------
silent nmap <leader>to :TagbarToggle<CR>
let g:tagbar_type_typescript = {                                                  
  \ 'ctagsbin' : 'tstags',                                                        
  \ 'ctagsargs' : '-f-',                                                           
  \ 'kinds': [                                                                     
    \ 'e:enums:0:1',                                                               
    \ 'f:function:0:1',                                                            
    \ 't:typealias:0:1',                                                           
    \ 'M:Module:0:1',                                                              
    \ 'I:import:0:1',                                                              
    \ 'i:interface:0:1',                                                           
    \ 'C:class:0:1',                                                               
    \ 'm:method:0:1',                                                              
    \ 'p:property:0:1',                                                            
    \ 'v:variable:0:1',                                                            
    \ 'c:const:0:1',                                                              
  \ ],                                                                            
  \ 'sort' : 0                                                                    
\ } 

" ------------------
" lens.vim
" ------------------
let g:lens#disabled_filetypes = ['nerdtree', 'fzf', 'vim-minimap']
let g:lens#width_resize_max = 100
let g:lens#width_resize_min = 20

" ------------------
"" kana/vim-arpeggio
" ------------------
"" Arpeggio for simultaneous key bindings
" If the keys are pressed within less than 100 milliseconds they are conssidered to be arpeggiated
let g:arpeggio_timeoutlen=125

nnoremap <leader>wa :wa<CR>

" Window Movement
silent nnoremap <leader>wh :wincmd h<CR>
silent nnoremap <leader>wj :wincmd j<CR>
silent nnoremap <leader>wk :wincmd k<CR>
silent nnoremap <leader>wl :wincmd l<CR>
silent nnoremap <leader>wq :wincmd q<CR>

" Folds
silent nnoremap <leader>zj zj
silent nnoremap <leader>zk zk
silent nnoremap <leader>zo zo
silent nnoremap <leader>zc zc
silent xnoremap <leader>zf zf
silent xnoremap <leader>zd zd

" ------------------
" nanotech/jellybeans.vim
" ------------------
" Jellybeans Theme
let g:jellybeans_use_term_italics = 0
let g:jellybeans_use_gui_italics = 0

" ------------------
" arzg/vim-corvine
" ------------------
" Corvine Theme
colorscheme corvine
let g:corvine_italics = 0

" ------------------
" drmikehenry/vim-fontsize
" ------------------
" Change font size with <leader><leader>+
nmap <silent> <leader>=  <Plug>FontsizeBegin
nmap <silent> <leader>+  <Plug>FontsizeInc
nmap <silent> <leader>-  <Plug>FontsizeDec
nmap <silent> <leader>0  <Plug>FontsizeDefault

" ------------------
" junegunn/vim-peekaboo
" ------------------
" Vim registers previewer

let g:peekaboo_window  = 'vert bo 30new'
let g:peekaboo_compact = 0

" ------------------
" terryma/vim-smooth-scroll
" ------------------
" Smooth scrolling
"
" ------------------
" yuttie/comfortable-motion.vim
" ------------------
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"

let g:comfortable_motion_no_default_key_mappings = 1
let g:comfortable_motion_impulse_multiplier = 3
let g:comfortable_motion_friction = 0.0
let g:comfortable_motion_air_drag = 10.0
nnoremap <silent> <C-d> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 2)<CR>
nnoremap <silent> <C-u> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -2)<CR>
" nnoremap <silent> <C-f> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 5)<CR>
" nnoremap <silent> <C-b> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -5)<CR>

" ------------------
" vim-airline/vim-airline
" ------------------
set noshowmode     " Don't show the mode since Powerline shows it
set laststatus=2   " Always show the statusline
let g:airline_powerline_fonts=1
let g:airline_theme='deus'

" Buffer navigation top bar.
let s:buffer_navigation=0
    if s:buffer_navigation
        " Provides a buffer bar on top with a small number that
        " indicates that we can jump to pressing the space bar and the buffer number
        let g:airline#extensions#tabline#enabled = 1
        let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
        let g:airline#extensions#tabline#show_tab_nr = 1
        let g:airline#extensions#tabline#formatter = 'default'
        let g:airline#extensions#tabline#buffer_nr_show = 1
        let g:airline#extensions#tabline#fnametruncate = 16
        let g:airline#extensions#tabline#fnamecollapse = 2
        let g:airline#extensions#tabline#buffer_idx_mode = 1

        nmap <leader>1 <Plug>AirlineSelectTab1
        nmap <leader>2 <Plug>AirlineSelectTab2
        nmap <leader>3 <Plug>AirlineSelectTab3
        nmap <leader>4 <Plug>AirlineSelectTab4
        nmap <leader>5 <Plug>AirlineSelectTab5
        nmap <leader>6 <Plug>AirlineSelectTab6
        nmap <leader>7 <Plug>AirlineSelectTab7
        nmap <leader>8 <Plug>AirlineSelectTab8
        nmap <leader>9 <Plug>AirlineSelectTab9
    endif


" ------------------
" tpope/vim-ragtag
" ------------------
" XML tags autocompletion

let g:ragtag_global_maps = 1

" The mappings apply in insert mode. Interesting are the following:
" <C-X><Space>  <foo>^</foo>          *ragtag-CTRL-X_<Space>*
" <C-X><CR>     <foo>\n^\n</foo>      *ragtag-CTRL-X_<CR>*
" <C-X>/        Last HTML tag closed  *ragtag-CTRL-X_/*

" ------------------
" neoclide/coc.nvim, {'branch': 'release'}
" ------------------
" Configuration in coc_config.vim

" ------------------
" gu-fan/colorv.vim
" ------------------
" Color picker
" cp: Color Picker
nmap <leader>cp :ColorVEdit<CR>:ColorVPicker<CR>
" nmap <leader>ce :ColorVEdit<CR>:ColorVPicker<CR>
" <leader>ce: color edit
" Within the edit dialog :ColorVPicker for a picker dialog box
" <leader>cii : color insert
" <leader>cir : color insert rgb

" ------------------
" Olical/vim-enmasse
" ------------------
" Makes quickfix window editable

" ------------------
" dyng/ctrlsf.vim
" ------------------
let g:ctrlsf_mapping = {
    \ "split"   : "<C-s>",
    \ "vsplit": "<C-v>",
    \ }

" ------------------
" ctrlpvim/ctrlp.vim
" ------------------
" Fuzzy file explorer and most recent used files

let g:ctrlp_mruf_max = 1000
let g:ctrlp_map = ''
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode ='ra'
let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files --exclude-standard -co']
if executable('rg')
    set grepprg=rg\ --color=never
    let g:ctrlp_user_command = ['.git/', 'rg %s --files --color=never --glob ""']
    let g:ctrlp_use_caching = 0
endif
" Add .ctrlp to ~/.gitignore_global
" git config --global core.excludesfile ~/.gitignore_global
" touch .ctrlp where we want to set the project's search root
let g:ctrlp_root_markers = ['.ctrlp']
" ef:= expore recent
silent nmap <leader>er :CtrlPMRUFiles<CR>
" ep:= expore project
silent nmap <leader>ep :CtrlP<CR>

" ------------------
" dyng/ctrlsf.vim
" ------------------
" Fuzzy file content explorer
let g:ctrlsf_auto_focus = {
    \ "at": "start",
    \ "duration_less_than": 1000
    \ }

com! -n=1 CtrlSFindInFile CtrlSF <q-args> %

" sp := search in project
silent nmap <leader>sp <Plug>CtrlSFPrompt
" sf := search in file
silent nnoremap <leader>sf :CtrlSFindInFile 
" st := search menu open
silent nnoremap <leader>so :CtrlSFToggle<CR>

let g:ctrlsf_regex_pattern = 1
let g:ctrlsf_default_root = 'project'

" ------------------
" scrooloose/nerdtree
" ------------------
" Navigation bar
" x := explorer
" Toggle file explorer
" xo : = explorer open/close
""TODO: nnoremap doens't seem to be working with Arpeggio.
let g:NERDTreeWinSize=45
nnoremap <C-t> :NERDTreeToggle<CR>:set relativenumber<CR>:set number<CR>
silent nnoremap <leader>xo :NERDTreeToggle<CR>:set relativenumber<CR>:set number<CR>
" xl := explorer locate file := find current opened file in explorer
silent nnoremap <leader>xl :NERDTreeFind<CR>:set relativenumber<CR>:set number<CR>
" xp := explorer project := Change directory to root of the repository
silent nnoremap <leader>xp :NERDTreeVCS<CR>:set relativenumber<CR>:set number<CR>

let g:NERDTreeShowBookmarks=1
" Change the NERDTree directory to the root node
let g:NERDTreeChDirMode=2
" Mappings
let NERDTreeMapOpenSplit='<C-s>'
let NERDTreeMapOpenVSplit='<C-v>'
" '<C-e>' := edit
let NERDTreeMapMenu='<C-e>'

" Remove vertical | chars
set fillchars+=vert:\

" ------------------
" tpope/vim-fugitive
" ------------------
" Git integration

nmap <silent> <leader>gc :Gcommit<CR>
nmap <silent> <leader>gm :Git checkout
" Revert local changes
nmap <silent> <leader>gr :Git checkout .<CR>
nmap <silent> <leader>gw :Gwrite<CR> :Gstatus<CR>
nmap <silent> <leader>gs :Gstatus<CR>
nmap <silent> <leader>gp :Git push<CR>
" Mnemonic, gu = Git Update
nmap <silent> <leader>gu :Git pull<CR>
nmap <silent> <leader>gd :Gdiff<CR>
set diffopt+=vertical
let g:fugitive_summary_format = "%h %cd %an %s"

" Change from using system clipboard to vim clipboard, which has a special
" formatting that allows to paste visual blocks
let g:unnamedplusToggleFlag = 1
command! UnnamedplusToggle call UnnamedplusToggle()
function! UnnamedplusToggle()
    if (g:unnamedplusToggleFlag == 1)
        exec 'set clipboard='
        let g:unnamedplusToggleFlag = 0
        echo 'Visual block copy/paste enabled. System clipboard disabled.'
    else
        exec 'set clipboard=unnamedplus'
        let g:unnamedplusToggleFlag = 1
        echo 'Visual block copy/paste disabled. System clipboard enable.'
    endif
endfunction
nmap <leader>p :UnnamedplusToggle<cr>

let g:yoinkAutoFormatPaste=0
let g:yoinkIncludeDeleteOperations=1
nmap <c-n> <Plug>(YoinkPostPasteSwapForward)
nmap <c-p> <Plug>(YoinkPostPasteSwapBack)
let g:yoinkIncludeDeleteOperations=1
nmap <c-n> <Plug>(YoinkPostPasteSwapForward)
nmap <c-p> <Plug>(YoinkPostPasteSwapBack)

" Only one clipboard
set clipboard=unnamedplus  " Yanks go to clipboard (typically Ctrl+C).
" Persistent clipboard on leave: Install parcellite and set it to launch in startup

nmap p <Plug>(YoinkPaste_p)
nmap P <Plug>(YoinkPaste_P)

" Yoink doesn't work in visual mode
" Paste in visual mode without copying
xnoremap p pgvy
xnoremap P Pgvy

nmap [y <Plug>(YoinkRotateBack)
nmap ]y <Plug>(YoinkRotateForward)

nmap y= <Plug>(YoinkPostPasteToggleFormat)

" ------------------
" mbbill/undotree
" ------------------
" Undo history tree
" uo: Undootree open
silent nnoremap <leader>uo :UndotreeToggle<cr>
let g:undotree_SetFocusWhenToggle = 1

" ------------------
" easymotion/vim-easymotion
" ------------------
let g:EasyMotion_skipfoldedline = 0

" Targeted f/t and search motions
" <leader>s := search
" map <Plug>(arpeggio-default:/) <plug>(easymotion-sn)
silent map / <plug>(easymotion-sn)
silent noremap <leader>/ /
silent map <leader>sa <plug>(easymotion-sn)
silent map <leader>sk <plug>(easymotion-k)
silent map <leader>sj <plug>(easymotion-j)
silent noremap <leader><leader>/ /\v

"" find character
map <Plug>(arpeggio-default:f) <Plug>(easymotion-fl)
omap f <Plug>(easymotion-fl)
xmap f <Plug>(easymotion-fl)
map F <Plug>(easymotion-Fl)
""" unTil character
map <Plug>(arpeggio-default:t) <plug>(easymotion-tl)
omap t <Plug>(easymotion-tl)
xmap t <Plug>(easymotion-tl)
map T <Plug>(easymotion-Tl)

""let g:EasyMotion_move_highlight=0
map ; <Plug>(easymotion-next)
map , <Plug>(easymotion-prev)
let g:EasyMotion_smartcase = 1
let g:EasyMotion_landing_highlight = 0
let g:EasyMotion_move_highlight = 0

hi link EasyMotionMoveHL IncSearch
hi link EasyMotionIncSearch IncSearch

" ------------------
" yaroot/vissort
" ------------------
" go: go order
let g:sort_motion = 'go'
let g:sort_motion_lines = 'goo'
let g:sort_motion_visual = 'go'
" Allow sorting from visual block
let g:sort_motion_visual_block_command = "Vissort"

" ------------------
" svermeulen/vim-cutlass
" ------------------
" m: move (cut), d: delete
nnoremap m d
xnoremap m d
" one line
nnoremap mm dd
" until the end of line
nnoremap M D
" set marks with <leader>m
nnoremap <leader>m m

" ------------------
" arecarn/vim-crunch
" ------------------
" Calculator and base converter
" g= := go equal, replaces selection or text object with result of calculation
" :Crunch command for exmpanded result
"Plug 'blasco/vim-crunch'
"Plug 'arecarn/vim-selection' " arecarn/vim-crunch dependency

nmap g= <Plug>(crunch-operator)
xmap g= <Plug>(visual-crunch-operator)
nmap g== <Plug>(crunch-operator-line)

" ------------------
" tpope/vim-commentary
" ------------------
" Comment operator | gc  := go comment
autocmd Filetype c,cpp setlocal commentstring=//\ %s

" ------------------
" tpope/vim-abolish
" ------------------
map cr <Plug>(abolish-coerce)

" ------------------
" blasco/vim-radical
" ------------------
let g:radical_no_mappings=1
nmap cra <Plug>RadicalView
xmap cra <Plug>RadicalView
nmap crd <Plug>RadicalCoerceToDecimal
nmap crx <Plug>RadicalCoerceToHex
nmap cro <Plug>RadicalCoerceToOctal
nmap crb <Plug>RadicalCoerceToBinary

" ------------------
" svermeulen/vim-subversive
" ------------------
" Substitute motion 
" s  := substitute 
" gr := replace in range 
" TODO: 'griwiw' not working, it takes the whole line

nmap gs  <Plug>(SubversiveSubstitute)
" one line
nmap gss <Plug>(SubversiveSubstituteLine)
" until the end of the line
nmap gS  <Plug>(SubversiveSubstituteToEndOfLine)
" visual
xmap gs <Plug>(SubversiveSubstitute)

" TODO: motion 2 is taken as whole line
" gr<motion1><motion2> := replace <motion1> in <motion2>
nmap gr <Plug>(SubversiveSubstituteRange)
xmap gr <Plug>(SubversiveSubstituteRange)
" gr<right><right> := rll := replace one character

" gr?<motion1><motion2> := replace with confirmation <motion1> in <motion2>
nmap gr? <Plug>(SubversiveSubstituteRangeConfirm)
xmap gr? <Plug>(SubversiveSubstituteRangeConfirm)

" ------------------
" kana/vim-wwwsearch
" ------------------
" gwww := search in google

nmap gws <Plug>(operator-wwwsearch)
let g:wwwsearch_command_to_open_uri = 'google-chrome {uri}'

" ------------------
" machakann/vim-operator-jerk
" ------------------
" g[>,<] := go [>,<]
" g[>,<]p := go [>,<] partial

xmap g> <Plug>(operator-jerk-forward)
nmap g> <Plug>(operator-jerk-forward)

xmap g< <Plug>(operator-jerk-backward)
nmap g< <Plug>(operator-jerk-backward)

nmap g>> <Plug>(operator-jerk-forward)l
nmap g<< <Plug>(operator-jerk-backward)l

" go shift partial
nmap g>p <Plug>(operator-jerk-forward-partial)
xmap g>p <Plug>(operator-jerk-forward-partial)

nmap g<p <Plug>(operator-jerk-backward-partial)
xmap g<p <Plug>(operator-jerk-backward-partial)

nmap g>pp <Plug>(operator-jerk-forward-partial)iw
nmap g<pp <Plug>(operator-jerk-backward-partial)iw


" ------------------
" lambdalisue/vim-operator-breakline
" ------------------
" gfh := go format here
" gfnc := go format n characters

map gF <Plug>(operator-breakline-textwidth)
" go format n characters
map gFn <Plug>(operator-breakline-manual)

" ------------------
" tommcdo/vim-exchange
" ------------------
" gx := go exchange

let g:exchange_no_mappings=1
nmap gx  <Plug>(Exchange)
nmap gxc <Plug>(ExchangeClear)
nmap gxx <Plug>(ExchangeLine)

" ------------------
" junegunn/vim-easy-align
" ------------------
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Builtin format Operator
" gf := go format
" gfs := go format syntax
" jf: = jump to file (originaly gf goto file, but used by go format
nnoremap <leader>jf gf
nnoremap gf  gw
nnoremap gfs =

let g:lion_create_maps=0
let g:lion_squeeze_spaces=0

" TODO: LionRight("="), so it doesn't ask and a mapping like gfae (go format align equation) can be created
" TODO: gfa{char}{motion} is more natural than gfa{motion}{char}
nmap gfa  <Plug>LionRight
xmap gfa  <Plug>VLionRight

nmap gfal <Plug>LionLeft
xmap gfal <Plug>VLionLeft

nmap gfah <Plug>LionRight
xmap gfah <Plug>VLionRight

" ------------------
" KKPMW/vim-sendtowindow
" ------------------

let g:sendtowindow_use_defaults=0
nmap <leader>l <Plug>SendRight
xmap <leader>l <Plug>SendRightV
nmap <leader>ll vil<Plug>SendRightV

nmap <leader>h <Plug>SendLeft
xmap <leader>h <Plug>SendLeftV
xmap <leader>hh vil<Plug>SendLeftV

nmap <leader>k <Plug>SendUp
xmap <leader>k <Plug>SendUpV
nmap <leader>kk vil<Plug>SendUpV

nmap <leader>j <Plug>SendDown
xmap <leader>j <Plug>SendDownV
xmap <leader>jj vil<Plug>SendDownV

" ------------------
" deris/vim-operator-insert
" ------------------
nmap gi <Plug>(OperatorInsert-first-invocation)
nmap ga <Plug>(OperatorAppend-first-invocation)
" gi: go insert

"xmap gi  <Plug>(operator-insert-i)
" nmap gi  <Plug>(operator-insert-i)

"xmap ga  <Plug>(operator-insert-a)
" nmap ga  <Plug>(operator-insert-a)

" TODO: remaps for ge gb go end go begin
" TODO: visual mode is missing!
"Plug 'rjayatilleka/vim-operator-goto'
"Plug 'blasco/vim-operator-goto'
map <leader>e <plug>(operator-gotoend)
map <leader>b <plug>(operator-gotostart)
map ge <plug>(operator-gotoend)
map gb <plug>(operator-gotostart)

" ------------------
" haya14busa/vim-asterisk
" ------------------
" Improved star motion, keeps cursor position.
" map *   <Plug>(asterisk-*)
" map #   <Plug>(asterisk-#)
" map g*  <Plug>(asterisk-g*)
" map g#  <Plug>(asterisk-g#)
" map z*  <Plug>(asterisk-z*)
" map gz* <Plug>(asterisk-gz*)
" map z#  <Plug>(asterisk-z#)
" map gz# <Plug>(asterisk-gz#)

"If you want to set "z" (stay) behavior as default
map *  <Plug>(asterisk-gz*)
map #  <Plug>(asterisk-gz#)
map g* <Plug>(asterisk-z*)
map g# <Plug>(asterisk-z#)

let g:asterisk#keeppos = 1

" -----------------
" Additional Text Objects
" -----------------

" i: indent
"Plug 'michaeljsmith/vim-indent-object'

" ------------------
" blasco/vim-indent-object
" ------------------

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

" ------------------
" wellle/targets.vim
" ------------------
let g:targets_aiAI = 'aIAi'
let g:targets_nl = 'nN'
" TODO: breaks caw and other text objects
" omap <expr> <plug>(arpeggio-default:a) targets#e('o', 'a', 'a')
" xmap <expr> <plug>(arpeggio-default:a) targets#e('o', 'a', 'a')

" ------------------
" blasco/vim-textobj-line
" ------------------
" l: line
let g:textobj_line_no_default_key_mappings=1
xmap al <Plug>(textobj-line-a)
omap al <Plug>(textobj-line-a)

xmap il <Plug>(textobj-line-i)
omap il <Plug>(textobj-line-i)

xmap Il <Plug>(textobj-line-I)
omap Il <Plug>(textobj-line-I)

" ------------------
" kana/vim-textobj-function
" ------------------
" f: function object for c, java, vim. When a language server is available we us coc instead
autocmd Filetype vim,c,java xmap af <Plug>(textobj-function-a)
autocmd Filetype vim,c,java omap af <Plug>(textobj-function-a)

autocmd Filetype vim,c,java xmap if <Plug>(textobj-function-i)
autocmd Filetype vim,c,java omap if <Plug>(textobj-function-i)

autocmd Filetype vim,c,java xmap Af <Plug>(textobj-function-A)
autocmd Filetype vim,c,java omap Af <Plug>(textobj-function-A)

autocmd Filetype vim,c,java xmap If <Plug>(textobj-function-I)
autocmd Filetype vim,c,java omap If <Plug>(textobj-function-I)
