" Plugins installed with vim-plug
exec "source " . g:vimHome . "plug.vim"

if filereadable(g:vimHome . ".vim_initialized")

    " Set ledaer key
    " Note: This line MUST come before any <leader> mappings 
    let mapleader=" "

    " Define whick_key map so that all sourced files can make use of it
    let g:which_key_map =  {}

    " All bindings that are not related to plugins
    exec "source " . g:vimHome . "bindings.vim"

    " User defined functions
    exec "source " . g:vimHome . "functions.vim"

    " Plugin-specific configuration
    exec "source " . g:vimHome . "plugin_config.vim"

    " Vim configuration
    exec "source " . g:vimHome . "config.vim"

    " Lua plugins
    exec "luafile " . g:vimHome . "lua/plugin_config.lua"

endif
