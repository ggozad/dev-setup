#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew,
# Install if we don't have it
# if test ! $(which brew); then
#   echo "Installing homebrew..."
#   ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# fi

# Make sure we’re using the latest Homebrew.
brew update

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
brew install miniconda
# Rust
brew install rust

# Install other useful binaries.
brew install ack
brew install dark-mode
brew install git
brew install git-flow
brew install git-extras
brew install diff-so-fancy
brew install hub
brew install pkg-config libffi
brew install htop
brew install thefuck
brew install mkcert

# Lxml and Libxslt
brew install libxml2
brew install libxslt
brew install libyaml

# Web stuff
brew install chromedriver
brew install geckodriver
brew install fontconfig freetype
brew install nginx
brew install openssl
brew install pcre
brew install readline
brew install unixodbc
brew install postgresql
brew install imagemagick
# js
brew install node
brew install watchman
brew install yarn
brew install less
# ios
brew install cocoapods
brew install carthage
brew install libimobiledevice
brew install ios-deploy

# android
brew install android-studio
# Install hugo
brew install hugo

# Core casks
brew install ruby
brew install --appdir="~/Applications" iterm2
brew install --appdir="~/Applications" java
brew install --appdir="~/Applications" xquartz
# Development tool casks
brew install --cask adoptopenjdk/openjdk/adoptopenjdk8
brew install --appdir="/Applications" visual-studio-code

# Misc casks
brew install --appdir="/Applications" google-chrome
brew install --appdir="/Applications" firefox
brew install --appdir="/Applications" dropbox
brew install --appdir="/Applications" react-native-debugger
brew install --appdir="/Applications" rectangle

# Remove outdated versions from the cellar.
brew cleanup