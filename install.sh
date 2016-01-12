#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)
export DOTFILES_DIR EXTRA_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
EXTRA_DIR="$HOME/.extra"

# Bunch of symlinks
ln -sfv "$DOTFILES_DIR/.bash_profile" ~
ln -sfv "$DOTFILES_DIR/.bashrc" ~
ln -sfv "$DOTFILES_DIR/.rubocop.yml" ~
ln -sfv "$DOTFILES_DIR/.vimrc" ~
