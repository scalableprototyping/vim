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

nmap g= <Plug>(crunch-operator)
xmap g= <Plug>(visual-crunch-operator)
nmap g== <Plug>(crunch-operator-line)

" ------------------
" tpope/vim-commentary
" ------------------
" Comment operator | gc  := go comment
autocmd Filetype c,cpp setlocal commentstring=//\ %s

" ------------------
" svermeulen/vim-subversive
" ------------------
" Substitute motion 
" s  := substitute 
" gr := replace in range 

nmap gs  <Plug>(SubversiveSubstitute)
" one line
nmap gss <Plug>(SubversiveSubstituteLine)
" until the end of the line
nmap gS  <Plug>(SubversiveSubstituteToEndOfLine)
" visual
xmap gs <Plug>(SubversiveSubstitute)

" gr<motion1><motion2> := replace <motion1> in <motion2>
nmap gr <Plug>(SubversiveSubstituteRange)
xmap gr <Plug>(SubversiveSubstituteRange)

" gr?<motion1><motion2> := replace with confirmation <motion1> in <motion2>
nmap gr? <Plug>(SubversiveSubstituteRangeConfirm)
xmap gr? <Plug>(SubversiveSubstituteRangeConfirm)

" ------------------
" tommcdo/vim-exchange
" ------------------
" gx := go exchange

let g:exchange_no_mappings=1
nmap gx  <Plug>(Exchange)
nmap gxc <Plug>(ExchangeClear)
nmap gxx <Plug>(ExchangeLine)

" ------------------
" haya14busa/vim-asterisk
" ------------------
" Improved star motion, keeps cursor position.
"map *  <Plug>(asterisk-gz*)
"map #  <Plug>(asterisk-gz#)
"map g* <Plug>(asterisk-z*)
"map g# <Plug>(asterisk-z#)

let g:asterisk#keeppos = 1

" ------------------
" wellle/targets.vim
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
