#!/usr/bin/env bash

# ~/osx.sh — Originally from https://mths.be/osx

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `osx.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

brew install zsh
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions
brew install z
# Install Oh My Zsh if it isn't already present
if [[ ! -d $dir/oh-my-zsh/ ]]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi
cp ./dotfiles/.zshrc ~

git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
rm -rf fonts

open iterm/Solarized\ Dark.itermcolors
open iterm/Solarized\ Light.itermcolors
