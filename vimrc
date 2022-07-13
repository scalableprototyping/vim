if has("win64") || has("win32") || has("win16")
    let g:vimHome = "~/vimfiles/"
elseif has("unix")
    let g:vimHome = "~/.vim/"
endif

" Plugins installed with vim-plug
exec "source " . g:vimHome . "plug.vim"

if filereadable(".vim_initialized")

    " Set ledaer key
    " Note: This line MUST come before any <leader> mappings 
    let mapleader=" "

    " All bindings that are not related to plugins
    exec "source " . g:vimHome . "bindings.vim"

    " User defined functions
    exec "source " . g:vimHome . "functions.vim"

    " Plugin-specific configuration
    exec "source " . g:vimHome . "plugin_config.vim"
    exec "source " . g:vimHome . "coc_config.vim"

    " Vim configuration
    exec "source " . g:vimHome . "config.vim"

endif
