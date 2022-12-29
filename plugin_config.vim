exec "luafile " . g:vimHome . "plugin_config.lua"

let g:which_key_map =  {}
let g:which_key_ignore_outside_mappings = 1

nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

autocmd! User vim-which-key call which_key#register('<Space>', 'g:which_key_map')

" ------------------
" liuchengxu/vim-which-key
" ------------------

let g:which_key_map.w = {'name': '+ Window'}
let g:which_key_map.w.a = 'save All'
let g:which_key_map.w.q = 'Quit window'
let g:which_key_map.w.h = 'Move window left'
let g:which_key_map.w.j = 'Move window down'
let g:which_key_map.w.k = 'Move window up'
let g:which_key_map.w.l = 'Move window right'

let g:which_key_map.v = {'name': '+ Vim'}

let g:which_key_map.v.e = 'Edit Config'
nnoremap <silent> <leader>ve :e $MYVIMRC<CR>

function! UpdateVim()
  exe 'cd' "~/dotfiles/vim"
  call input("Updating dotfiles/vim git repository. Press ENTER to continue")
  call system("git checkout -- . && " .
        \"git clean -fd && " .
        \"git pull")
  call input("Cleaning old plugins. Press ENTER to continue")
  execute "PlugClean"
  call input("Installing plugins. Press ENTER to continue")
  execute "PlugInstall"
endfunction
command! UpdateVim call UpdateVim()

let g:which_key_map.v.u = 'Update vim'
nnoremap <silent> <leader>vu :UpdateVim<CR>

" " TODO
" let g:which_key_map.l = {'name': '+ Lists'}
" let g:which_key_map.l.q = {'name': '+ Quickfix'}
" let g:which_key_map.l.l = {'name': '+ Local'}
" let g:which_key_map.l.a = {'name': '+ Argument'}
" let g:which_key_map.l.q.d = 'Quickfix Do'
" let g:which_key_map.l.q.c = 'Quickfix clear'
" let g:which_key_map.l.q.n = 'Quickfix next'
" let g:which_key_map.l.q.p = 'Quickfix previous'

" ------------------
" vim-caser
" ------------------
let g:caser_prefix = 'cr'

" ------------------
" any-jump
" ------------------

" " Normal mode: Jump to definition under cursore
" nnoremap <silent> <leader>ja :AnyJump<CR>
" " Visual mode: jump to selected text in visual mode
" xnoremap <silent> <leader>ja :AnyJumpVisual<CR>
" " Normal mode: open previous opened file (after jump)
" nnoremap <leader>jb :AnyJumpBack<CR>
" " Normal mode: open last closed search window again
" nnoremap <leader>jl :AnyJumpLastResults<CR>

" ------------------
" tagbar
" ------------------
nmap <silent> <leader>to :TagbarToggle<CR>
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
" arzg/vim-corvine
" ------------------
" Corvine Theme
set t_Co=256
if exists('+termguicolors')
  set termguicolors
endif
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

let g:which_key_map.e = { 'name' : '+ Edit' }

" ef:= expore recent
let g:which_key_map.e.r = 'edit Recent files'
nmap <silent> <leader>er :CtrlPMRUFiles<CR>
" ep:= expore project
let g:which_key_map.e.p = 'edit Project files'
nmap <silent> <leader>ep :CtrlP<CR>

" ------------------
" dyng/ctrlsf.vim
" ------------------
" Fuzzy file content explorer
let g:ctrlsf_auto_focus = {
    \ "at": "start",
    \ "duration_less_than": 1000
    \ }

com! -n=1 CtrlSFindInFile CtrlSF <q-args> %

let g:which_key_map.s = { 'name' : '+ Search' }

function! SearchInProject()
  let search_input = input("Search REGEX in project: ")

  " exit if escape is pressed
  if search_input ==# ''
    return
  endif

  redraw
  execute "CtrlSF " . search_input
endfunction
command! SearchInProject call SearchInProject()

function! SearchInFile()
  let search_input = input("Search REGEX in file: ")

  " exit if escape is pressed
  if search_input ==# ''
    return
  endif

  redraw
  execute "CtrlSFindInFile " . search_input
endfunction
command! SearchInFile call SearchInFile()

" sp := search in project
let g:which_key_map.s.p = 'search in Project'
nmap <silent> <leader>sp :SearchInProject<CR>
" sf := search in file
let g:which_key_map.s.f = 'search in File'
nnoremap <silent> <leader>sf :SearchInFile<CR>
" st := search menu open

" sb := search buffer
let g:which_key_map.s.b = 'search in Buffer'
nnoremap <silent> <leader>sb :Telescope buffers<CR>

" sg := current path using grep
let g:which_key_map.s.g = 'search current path with live grep'
nnoremap <silent> <leader>sg :Telescope live_grep<CR>

let g:which_key_map.s.o = 'Open/close search results'
nnoremap <silent> <leader>so :CtrlSFToggle<CR>

let g:ctrlsf_regex_pattern = 1
let g:ctrlsf_default_root = 'project'

" ------------------
" File Explorer
" ------------------
" Navigation bar
" x := explorer
" Toggle file explorer
" xo : = explorer open/close

let g:which_key_map.x = { 'name' : '+ file eXplorer' }

let g:which_key_map.x.o = 'Open/close file explorer'
nnoremap <silent> <leader>xo :NvimTreeToggle<CR>:set relativenumber<CR>:set number<CR>

" xl := explorer locate file := find current opened file in explorer
let g:which_key_map.x.l = 'Locate file in explorer'
nnoremap <silent> <leader>xl :NvimTreeFindFile<CR>:set relativenumber<CR>:set number<CR>

" " xp := explorer project := Change directory to root of the repository
" let g:which_key_map.x.p = 'change explorer location to Project root'
" nnoremap <silent> <leader>xp :NERDTreeVCS<CR>:set relativenumber<CR>:set number<CR>

" Remove vertical | chars
set fillchars+=vert:\

" ------------------
" tpope/vim-fugitive
" ------------------
" Git integration

CommandCabbr git Git

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
nnoremap <silent> <leader>uo :UndotreeToggle<cr>
let g:undotree_SetFocusWhenToggle = 1

" ------------------
" easymotion/vim-easymotion
" ------------------
let g:EasyMotion_skipfoldedline = 0

" Targeted f/t and search motions
" <leader>s := search

noremap <silent> <leader><leader>/ /
" noremap <silent> <leader><leader>/ /\v

" You can use other keymappings like <C-l> instead of <CR> if you want to
" use these mappings as default search and sometimes want to move cursor with
" EasyMotion.
function! s:incsearch_config(...) abort
  return incsearch#util#deepextend(deepcopy({
  \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
  \   'keymap': {
  \     "\<CR>": '<Over>(easymotion)'
  \   },
  \   'is_expr': 0
  \ }), get(a:, 1, {}))
endfunction
function! s:config_easyfuzzymotion(...) abort
  return extend(copy({
  \   'converters': [incsearch#config#fuzzyword#converter()],
  \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
  \   'keymap': {"\<CR>": '<Over>(easymotion)'},
  \   'is_expr': 0,
  \   'is_stay': 1
  \ }), get(a:, 1, {}))
endfunction

noremap <silent><expr> <leader>/ incsearch#go(<SID>config_easyfuzzymotion())
noremap <silent><expr> /  incsearch#go(<SID>incsearch_config())
noremap <silent><expr> ?  incsearch#go(<SID>incsearch_config({'command': '?'}))
noremap <silent><expr> g/ incsearch#go(<SID>incsearch_config({'is_stay': 1}))

map <silent> <leader>sa <plug>(easymotion-sn)
map <silent> <leader>sk <plug>(easymotion-k)
map <silent> <leader>sj <plug>(easymotion-j)

"" find character
map f <Plug>(easymotion-fl)
omap f <Plug>(easymotion-fl)
xmap f <Plug>(easymotion-fl)
map F <Plug>(easymotion-Fl)

"" unTil character
map t <plug>(easymotion-tl)
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

""Plug 'rjayatilleka/vim-operator-goto'
""Plug 'blasco/vim-operator-goto'
"map <leader>e <plug>(operator-gotoend)
"map <leader>s <plug>(operator-gotostart)
"" map ge <plug>(operator-gotoend)
"" map gb <plug>(operator-gotostart)

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
