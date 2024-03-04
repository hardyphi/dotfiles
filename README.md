# my dotfiles repo

my dotfiles, can be managed into the base of an environment using GNU Stow

## requirements

- stow
- fish
- neovim
- ripgrep

## setup

### get repo

clone the repo in home directory:
`git clone https://github.com/hardyphi/dotfiles.git`

use stow from /dotfiles:
`stow --adopt .`

clear all the changes that stow --adopt makes and go back to default config
`git restore`

ideally it's now all working

### setup shell

change to fish as default shell
```
echo /usr/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/bin/fish
```



###

this setup was previously done with a bare git repo and some funky aliasing but
this seems to be a bit cleaner although requires an extra package to work.

## Idea Vim Setup

`.ideavimrc` should be loaded automatically. 
Only major change I've needed to make is:
- add `ctrl+y` and `ctrl+shift+y` to `Choose Lookup Item` selection
- traditional vim key of `ctrl+y` is nop
- using ide shortcut instead of vim for ctrl+y
