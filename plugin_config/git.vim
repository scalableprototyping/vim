if !exists('g:vscode')

  " ------------------
  " tpope/vim-fugitive
  " ------------------
  " Git integration

  " alias git to Git
  CommandCabbr git Git

  let g:which_key_map.g = {'name': '+ Git'}
  let g:which_key_map.g.s = 'git Status'
  nnoremap <silent> <leader>gs :Git<CR>

  let g:which_key_map.g.p = 'git Push'
  command! GitFugitivePush call GitFugitivePush()
  function! GitFugitivePush()
    echo "Pushing to remote..."
    execute "Git push"
  endfunction
  nnoremap <leader>gp :GitFugitivePush<CR>

  let g:which_key_map.g.u = 'git Update (pull)'
  command! GitFugitivePull call GitFugitivePull()
  function! GitFugitivePull()
    echo "Pulling from remote..."
    execute "Git push"
  endfunction
  nnoremap <leader>gu :GitFugitivePull<CR>

  " let g:which_key_map.g.b = 'git change Branch'
  " nmap <leader>gb :Git checkout 
  let g:which_key_map.g.l = 'git Log of curent file'
  nmap <leader>gl :0GlLog<CR>
  let g:which_key_map.g.r = 'git Revert (discard) file changes'
  nmap <leader>gr :Git checkout .<CR>
  set diffopt+=vertical
  let g:fugitive_summary_format = "%h %cd %an %s"

endif
