#!/usr/bin/sh

# Setup ~/.zshrc
cp ~/.system-config/dotfile-zshrc ~/.zshrc

# Run ZSH so that everything intializes
zsh

# Change user shell to zsh
chsh

# Install ohmyzsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
