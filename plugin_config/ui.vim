if !exists('g:vscode')

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
  " vim-airline/vim-airline
  " ------------------
  set noshowmode     " Don't show the mode since Powerline shows it
  set laststatus=2   " Always show the statusline
  let g:airline_powerline_fonts=1
  let g:airline_theme='deus'

  let g:which_key_map.e = { 'name' : '+ Edit' }

  " TODO: replace ctrlP functionality with Telescope
  " er:= expore recent
  let g:which_key_map.e.r = 'Edit Recent files'
  " nmap <silent> <leader>er :CtrlPMRUFiles<CR>
  " ep:= expore project
  let g:which_key_map.e.p = 'Edit Project files'
  " nmap <silent> <leader>ep :CtrlP<CR>

  let g:which_key_map.s = { 'name' : '+ Search' }

  " TODO: replace ctrlSF functionality with telescope
  let g:which_key_map.s.p = 'search in Project'
  " nmap <silent> <leader>sp :SearchInProject<CR>
  let g:which_key_map.s.f = 'search in File'
  " nnoremap <silent> <leader>sf :SearchInFile<CR>
  let g:which_key_map.s.b = 'search in Buffer'
  nnoremap <silent> <leader>sb :Telescope buffers<CR>
  let g:which_key_map.s.g = 'search current path with live grep'
  nnoremap <silent> <leader>sg :Telescope live_grep<CR>
  let g:which_key_map.s.o = 'Open/close search results'
  " nnoremap <silent> <leader>so :CtrlSFToggle<CR>

endif
