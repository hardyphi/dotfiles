#!/bin/bash
if [ -f /etc/os-release ]; then
    # freedesktop.org and systemd
    . /etc/os-release
    distribution=$ID
fi

case "$distribution" in
    manjaro | steamos | arch)
        sudo pacman -S fish --needed
    ;;
    debian | ubuntu)
        sudo apt update
        sudo apt install fish
    ;;
    *)
        echo "Error: Unsupported Linux distribution: $distribution"
        exit
    ;;
esac

echo "Switching default shell to fish"
if grep -q /usr/bin/fish /etc/shells; then
    echo "usr/bin/fish already added to /etc/shells, is fish already the default shell?"
else
    echo /usr/bin/fish | sudo tee -a /etc/shells
    chsh -s /usr/bin/fish
fi

echo "Adding dotfiles aliases to .bashrc"
if grep -q "alias dtf" ~/.bashrc; then
    echo "alias already exists in .bashrc"
else
    echo alias dtf='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME' | tee -a ~/.bashrc
    echo alias dft='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME' | tee -a ~/.bashrc
fi

echo "Adding dotfiles aliases to config.fish"
if grep -q "alias dtf" ~/.config/fish/config.fish; then
    echo "alias already exists in config.fish"
else
    echo alias dtf='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME' | tee -a ~/.config/fish/config.fish
    echo alias dft='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME' | tee -a ~/.config/fish/config.fish
fi

