if !exists('g:vscode')

  " ---------------
  " Functions
  " ---------------

  " Function to define abreviations or typos, used to correct :git command to :Git
  function! CommandCabbr(abbreviation, expansion)
    execute 'cabbr ' . a:abbreviation . ' <c-r>=getcmdpos() == 1 && getcmdtype() == ":" ? "' . a:expansion . '" : "' . a:abbreviation . '"<CR>'
  endfunction
  command! -nargs=+ CommandCabbr call CommandCabbr(<f-args>)

  " Terminal with :T
  if has("win64") || has("win32") || has("win16")
    command! -nargs=* T split | resize 15 | terminal powershell.exe -ep RemoteSigned <args>
  else
    command! -nargs=* T split | resize 15 | terminal <args>
  endif

  " Update Vim from dotfiles
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

endif
