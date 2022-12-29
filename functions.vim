" ---------------
" Functions
" ---------------

" Function to define abreviations or typos, used to correct :git command to :Git
function! CommandCabbr(abbreviation, expansion)
  execute 'cabbr ' . a:abbreviation . ' <c-r>=getcmdpos() == 1 && getcmdtype() == ":" ? "' . a:expansion . '" : "' . a:abbreviation . '"<CR>'
endfunction
command! -nargs=+ CommandCabbr call CommandCabbr(<f-args>)

" Split terminal with :T
if has("win64") || has("win32") || has("win16")
  command! -nargs=* T split | resize 15 | terminal powershell.exe -ep RemoteSigned <args>
else
  command! -nargs=* T split | resize 15 | terminal <args>
endif

" ---------------
" QFDo
" ---------------
" Populates the argument list with all of the files listed in the quickfix list:
" TODO: why is this better than cdo, is there any advantage? I do not remember why I wrote this function. I think by that time I didn't know about normal!

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

" Clear quickfix list
command! QuickfixListClear cexpr []
nmap <leader>qfd :QFDo<space>normal!<space>
nmap <leader>qfc :QuickfixListClear<CR>

" Profiling Functions
function! ProfilingStart()
    execute "profile start " . g:vimHome . "/performance-profile.log"
    execute "profile func *"
    execute "profile file *"
endfunc
function! ProfilingStop()
    call input('Performance profiling informnation has been saved to vim/performance-profile.log. Press any key to continue')
    execute "profile pause"
    execute "noautocmd qall!"
endfunc

command! ProfilingStart call ProfilingStart()
command! ProfilingStop call ProfilingStop()
