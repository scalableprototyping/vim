if has("win64") || has("win32") || has("win16")

    " Plugins installed with vim-plug
    source ~/vimfiles/plug.vim

    " Set ledaer key
    " Note: This line MUST come before any <leader> mappings 
    let mapleader=" "

    " All bindings that are not related to plugins
    source ~/vimfiles/bindings.vim

    " User defined functions
    source ~/vimfiles/functions.vim

    " Plugin-specific configuration
    source ~/vimfiles/plugin_config.vim
    source ~/vimfiles/coc_config.vim

    " Vim configuration
    source ~/vimfiles/config.vim

elseif has("unix")

    " Plugins installed with vim-plug
    source ~/.vim/plug.vim

    " Set ledaer key
    " Note: This line MUST come before any <leader> mappings 
    let mapleader=" "

    " All bindings that are not related to plugins
    source ~/.vim/bindings.vim

    " User defined functions
    source ~/.vim/functions.vim

    " Plugin-specific configuration
    source ~/.vim/plugin_config.vim
    source ~/.vim/coc_config.vim

    " Vim configuration
    source ~/.vim/config.vim

endif
