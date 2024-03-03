# my dotfiles repo

my dotfiles, can be managed into the base of an environment using GNU Stow

## requirements

neovim
stow
fish

## setup

clone the repo in home directory:
`git clone https://github.com/hardyphi/dotfiles.git`

use stow from /dotfiles:
`stow --adopt .`

clear all the changes that stow --adopt makes and go back to default config
`git restore`

ideally it's now all working

###

this setup was previously done with a bare git repo and some funky aliasing but
this seems to be a bit cleaner although requires an extra package to work.
