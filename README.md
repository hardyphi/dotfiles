# My DotFiles Repo

Once setup using dtf alias in place of git while in $HOME directory should do the trick.

## Setup

```bash
git clone --bare $REPO $HOME/.dotfiles
git --git-dir=$HOME/.dotfiles/ config --local status.showUntrackedFiles no
```
To use dtf alias may need to reload your fish.config or .bashrc
```bash
. ~/.bashrc
. ~/.config/fish/config.fish
```

## Explanation

A bare git repository is setup in $HOME/.dotfiles
To add files from $HOME to the repo you would use;
```bash
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME add /path/to/.dotfile
```
Instead an alias of `dtf` is setup to call `git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME` making it much simpler to interact with the repo

