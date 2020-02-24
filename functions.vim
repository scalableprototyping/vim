" ---------------
" Functions
" ---------------

" ---------------
" QFDo
" ---------------
" Populates the argument list with all of the files listed in the quickfix list:

" Define a command to make it easier to use
command! -nargs=+ QFDo call QFDo(<q-args>)
function! QFDo(command)
    " Create a dictionary so that we can
    " get the list of buffers rather than the
    " list of lines in buffers (easy way
    " to get unique entries)
    let buffer_numbers = {}
    " For each entry, use the buffer number as 
    " a dictionary key (won't get repeats)
    for fixlist_entry in getqflist()
        let buffer_numbers[fixlist_entry['bufnr']] = 1
    endfor
    " Make it into a list as it seems cleaner
    let buffer_number_list = keys(buffer_numbers)

    " For each buffer
    for num in buffer_number_list
        " Select the buffer
        exe 'buffer' num
        " Run the command that's passed as an argument
        exe a:command
        " Save if necessary
        update
    endfor
endfunction

" Clean vim registers
command! WipeReg for i in range(34,122) | silent! call setreg(nr2char(i), []) | endfor

" ---------------
" Go-Bring from line
" ---------------
" gp := go paste from {number} {j or k for direction}
" TODO:
" gb := go bring from {number} {j or k for direction}
" Example: gb3k
command! -nargs=+ GoBringFromLine call GoBringFromLine(<q-args>)
function! GoBringFromLine(paste_position)
    let s:char0 = nr2char(getchar())
    let s:char1 = nr2char(getchar())

    let s:cursor_position = [line('.'), col('.')]

    if s:char1 =~# '^\d\+$'
        let s:number = s:char0*10 + s:char1
        let s:direction = nr2char(getchar())
    else
        let s:number = (s:char0)
        let s:direction = s:char1
    endif

    if (s:direction == 'j')
        let s:reverse_direction = 'k'
    else
        let s:reverse_direction = 'j'
    endif

    execute "normal! " . s:number . s:direction . "yy" . s:number . s:reverse_direction . a:paste_position ."V="

    if (a:paste_position ==# 'p')
        keepjumps call cursor(s:cursor_position)
    else
        keepjumps call cursor(s:cursor_position)
        execute "normal! j"
    endif

endfunction

nmap <silent> gp :GoBringFromLine p<CR>
nmap <silent> gP :GoBringFromLine P<CR>

function! JJCmdWinResume()
    let cmd = 'q:'
    if exists('g:CmdWinCurPos')
        let cmd .= ':call setpos(".", g:CmdWinCurPos)<CR>'
    endif
    return cmd
endfunc

" Resume to cmdline-window
nnoremap <expr> <Leader>: JJCmdWinResume()
:autocmd CmdWinEnter * nnoremap <buffer> <Leader>: :let g:CmdWinCurPos = getpos('.')<CR>:q<CR>
