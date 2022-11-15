#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated).
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed

# Install `wget`
brew install wget

# Install Python
brew install python3

# Install pre-commit
brew install pre-commit

# Rust
brew install rust

# Install cli utils
brew install fzf && /usr/local/opt/fzf/install
brew install broot

# Install other useful binaries.
brew install dark-mode
brew install git
brew install git-flow
brew install git-extras
brew install diff-so-fancy
brew install hub
brew install htop
brew install mkcert && mkcert -install
brew install less

# js
brew install node
brew install yarn

# docker
# Install docker from installer
brew install docker-completion

# z-sh
brew install zsh
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions
brew install z

# ml
brew install hdf5
brew install protobuf


# Misc casks
brew install visual-studio-code
brew install google-chrome
brew install firefox
brew install dropbox
brew install rectangle
brew install stats
brew install tailscale 
brew install warp

