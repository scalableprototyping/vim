if !exists('g:vscode')

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

endif
