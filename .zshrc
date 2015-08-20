# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# ZSH Theme
ZSH_THEME="robbyrussell"

# Plugins
plugins=(git gitfast osx z sublime colorize compleat extract cloudapp npm brew bower grunt github brew-cask)

# Go!
source $ZSH/oh-my-zsh.sh

# iTermocil Autocompletion
compctl -g '~/.teamocil/*(:t:r)' itermocil
