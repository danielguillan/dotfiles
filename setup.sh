#!/usr/bin/env bash
# Setup script for setting up a new macos machine
echo "Starting setup"
# install xcode CLI
xcode-select —-install

# Install Homebrew
if test ! $(which brew); then
    echo "Installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" 
fi

# Update homebrew recipes
brew update

# Git config
brew install diff-so-fancy
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"

# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

# Set fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1

# Set short delay until key repeat
defaults write NSGlobalDomain InitialKeyRepeat -int 10

# Show filename extensions by default
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Show the ~/Library folder
chflags nohidden ~/Library

# Store screenshots in subfolder on desktop
mkdir ~/Desktop/Screenshots
defaults write com.apple.screencapture location ~/Desktop/Screenshots
