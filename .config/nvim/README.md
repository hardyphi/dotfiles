# Neovim Setup

## What's required?

- install Neovim
- install prettierd using `pnpm | npm install -g @fsouza/prettierd`
- install ripgrep `sudo pacman -S ripgrepo`
- system that displays terminal needs a [nerd font](https://www.nerdfonts.com/) (go to is hack)

## What's happening?

packer.lua should install itself when possible. it then gets all the required
nvim plugins and pulls them all down.

lua/config contains most of the basic vim things:

- set.lua does all the setting (i.e. setting relativenumber & smartcase)
- remap.lua contains the basic remaps (leader key, split movement)

after/plugin contains settings related to plugins:

- format-on-save setup (generally uses lsp formatting apart from specific cases)
- harpoon is better marks
- lsp sets up language servers, autocomplete & sets up things `gd` -> go to definition & `K` -> hover
- telescope does find files & find in files (latter using ripgrep)
- treesitter gives syntax highlighting
- trouble sets up diagnostics & errors

## vscode.vim

this is a setup for using the neovim plugin in vscode, not really been used much
