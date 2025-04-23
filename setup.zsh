#!/bin/zsh
stow --target=$HOME/.config --ignore=.zshrc .
stow --target=$HOME/ .zshrc