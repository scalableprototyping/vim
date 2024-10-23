if !exists('g:vscode')

  " ------------------
  " yuttie/comfortable-motion.vim
  " ------------------
  " Smooth scrolling for easier visual tracking

  let g:comfortable_motion_scroll_down_key = "j"
  let g:comfortable_motion_scroll_up_key = "k"

  let g:comfortable_motion_no_default_key_mappings = 1
  let g:comfortable_motion_impulse_multiplier = 5 
  let g:comfortable_motion_friction = 0.0
  let g:comfortable_motion_air_drag = 20.0
  nnoremap <silent> <C-d> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 2)<CR>
  nnoremap <silent> <C-u> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -2)<CR>

  " ------------------
  " nvim-telescope/telescope.nvim
  " ------------------
  " TODO: replace with telescope
  let g:which_key_map.e = { 'name' : '+ Edit' }
  " er:= expore recent
  let g:which_key_map.e.r = 'edit Recent files'
  " ep:= expore project
  let g:which_key_map.e.p = 'edit Project files'

  let g:which_key_map.s = { 'name' : '+ Search' }

  let g:which_key_map.s.p = 'search in Project'
  " nmap <silent> <leader>sp :SearchInProject<CR>
  let g:which_key_map.s.f = 'search in File'
  " nnoremap <silent> <leader>sf :SearchInFile<CR>
  let g:which_key_map.s.b = 'search in Buffer'
  " nnoremap <silent> <leader>sb :Telescope buffers<CR>
  let g:which_key_map.s.g = 'search current path with live grep'
  " nnoremap <silent> <leader>sg :Telescope live_grep<CR>
  let g:which_key_map.s.o = 'Open/close search results'
  " nnoremap <silent> <leader>so :CtrlSFToggle<CR>

  " ------------------
  " ThePrimeagen/harpoon
  " ------------------
  let g:which_key_map.e.a = 'Add to jump'
  let g:which_key_map.e.j = 'Edit jump'
  let g:which_key_map.e.1 = 'Open jump 1'
  let g:which_key_map.e.2 = 'Open jump 2'
  let g:which_key_map.e.3 = 'Open jump 3'
  let g:which_key_map.e.4 = 'Open jump 4'

  let g:ctrlsf_regex_pattern = 1
  let g:ctrlsf_default_root = 'project'

  " ------------------
  " nvim-tree/nvim-tree.lua
  " ------------------
  " Navigation bar
  " x := explorer
  " Toggle file explorer
  " xo : = explorer open/close
  " Locate current file
  " xl : = explore locate

  let g:which_key_map.x = { 'name' : '+ file eXplorer' }

  let g:which_key_map.x.o = 'Open/close file explorer'
  nnoremap <silent> <leader>xo :NvimTreeToggle<CR>:set relativenumber<CR>:set number<CR>

  let g:which_key_map.x.l = 'Locate file in explorer'
  nnoremap <silent> <leader>xl :NvimTreeFindFile<CR>:set relativenumber<CR>:set number<CR>

  " ------------------
  " mbbill/undotree
  " ------------------
  " Undo history tree
  " uo: Undo tree Open
  " It seems to only be working in linux
  " TODO: replace with telescope-undo
  if !has('win32') || !has('win64')
    nnoremap <silent> <leader>uo :UndotreeToggle<cr>
    let g:undotree_SetFocusWhenToggle = 1
  endif

endif
