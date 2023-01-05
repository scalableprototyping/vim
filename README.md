# TODO:

* Better which key with (allows hints for operators and text objects)
  https://github.com/folke/which-key.nvim

# Installation

Ephemiral devs can now be used to install this configuration

Install patched fonts from:
```
https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Inconsolata/complete
```

For windows we need to enable the fonts in the terminal
options:
```
https://docs.microsoft.com/en-us/windows/terminal/tutorials/custom-prompt-setup
```

Create symbolic link for vim
```
~/.vim -> vim
Linux:
    ln -s ~/dotfiles/vim ~/.vim
Windows:
    New-Item -ItemType SymbolicLink -Path ~/vimfiles -Target C:\Users\blasc\dotfiles\vim
```

Create symbolic link for neovim:
```
Linux:
    ln -s ~/dotfiles/vim  ~/.config/nvim
Windows:
    New-Item -ItemType SymbolicLink -Path ~/AppData/Local/nvim -Target C:\Users\blasc\dotfiles\vim
```

To fix the white borders in gtk-3.0
```
~/.config/gtk-3.0/gtk.css -> gtk.css
    ln -s ~/dotfiles/vim/gtk.css ~/.config/gtk-3.0/
```

Install rip grep:
    https://github.com/BurntSushi/ripgrep

To get an entry on dmenu for neovim:
```
    sudo ln -s ~/dotfiles/vim/nvim.desktop /usr/share/applications/
```
Check also the mime type to make sure that nvim is used to
open text files:
```
xdg-mime query default text/plain
xdg-mime default nvim.desktop text/plain
```

# Painting motion with the right brush, stop abusing hjkl

## Horizontal Movement 

### Character Search 

Almost always the best choice when moving within a line

| Command | Mnemonic |
|:-|:-:|
|`f` | **f**ind|
|`Shift + f` | Shift to reverse direction 
|`t` | **t**o / un**t**il
|`Shift + t` | Shift to reverse direction 

Use easy-motion plugin to enhance search navigation

   `Plug 'easymotion/vim-easymotion'`
   
### End and Beginning of Line

| Command | Proposed Keybinding|
|:-|:-:|
|^ | `Ctrl+h` |
|$ | `Ctrl+l` |

**Mnemonic**: like `h` and `l` but with `Ctrl`, which is the same modifier for moving with bigger motion brushes like up, down, forward, backward. 

### Big Word 

| Command | Mnemonic |
|:-|:-:|
|W | **W**ord |
|E | **E**nd |
|B | **B**eginning |

### Small word movement
| Command | Mnemonic |
|:-|:-:|
|w | **w**ord |
|e | **e**nd |
|b | **b**eginning |


### Character movement
`h` `l`

## Vertical Movement

### Relative Jump
`<number>j` `<number>k`

If you are not comfortable writing numbers,I recommend using easy-motion plugin

| Command | Mnemonic |
|:-|:-:|
|`s+k` | **s**earch up `k`|
|`s+j` | **s**earch down `j`|

### Paragraph
| Command | Proposed keybinding |
|:-|:-:|
|`{` | `Ctrl+j`|
|`}` | `Ctrl+k`|
     
**Mnemonic**: like `j` and `k` but with `Ctrl`, which is the same modifier for moving with bigger motion brushes like up, down, forward, backward. 
### Line
`j` `k` 
 
## Moving to a target

### Search
| Command | Mnemonic |
|:-|:-:|
|`/`| |
| `Shift + /` (with the *right* keyboard layout)| Shift to reverse direction
|`n`| **n**ext
|`Shift+n` | Shift to reverse direction

If we use easy motion plugin, we can map the search all as follows:

| Command | Mnemonic |
|:-|:-:|
| `s+a` | **S**earch **a**ll

### Return to position before we jumped
| Command | Mnemonic |
|:-|:-:|
|`Ctrl+i`| jump `Ctrl`+**i**n
|`Ctrl+o``| jump `Ctrl`+**o**ut

Add the following to be able to jump in and out of relative line jumps

    " Add {count}[j|k] to the jump list
    nnoremap <expr> k (v:count > 1 ? "m`" . v:count : "") . "gk"
    nnoremap <expr> j (v:count > 1 ? "m`" . v:count : "") . "gj"

### Asterisk
`*`
This plugin really makes a big difference when working with the star
    Plug 'haya14busa/vim-asterisk'
With this plugin we can mark a word with `*` and then navigate with `n`, `N` keeping the initial position within the word marked with `*`. Great for repeating edits with the dot operator!
 

## Navigation

### Up and Down

When we are exploring and we don’t know very well the text (smooth scrolling for not getting sick and lost).

| Command | Mnemonic |
|:-|:-:|
|`Ctrl+u`| Scroll `Ctrl`+**u**p
|`Ctrl+d`| Scroll `Ctrl`+**d**own
	
### Forwards and Backwards
When we want to advance a whole page of text.

| Command | Mnemonic |
|:-|:-:|
|`Ctrl+f`| Scroll `Ctrl`+**f**orwards
|`Ctrl+b`| Scroll `Ctrl`+**b**backwards

When navigating use `zz` to scroll current line to middle of the screen.
**Mnemonic**: Use `zz` in order to be able to **zz**ee
