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

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed

# Install `wget` with IRI support.
brew install wget --with-iri

# Install Python
brew install python2
brew install python3

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

# Lxml and Libxslt
brew install libxml2
brew install libxslt
brew link libxml2 --force
brew link libxslt --force
brew install libyaml

# Openssl/erlang hack to get erlang@17 working
brew install https://raw.githubusercontent.com/Homebrew/homebrew-core/8b9d6d688f483a0f33fcfc93d433de501b9c3513/Formula/openssl.rb
brew install https://raw.githubusercontent.com/Homebrew/homebrew-core/8e8cdfb6eef17ce97bbfb4bc3936f9e1b26649d5/Formula/erlang@17.rb

# Web stuff
brew cask install chromedriver
brew install geckodriver
#brew install erlang
brew install fontconfig freetype
brew install nginx
brew install openssl
brew install pcre
brew install readline
brew install unixodbc
brew install postgresql@9.5
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

# Install hugo
brew install hugo

brew tap homebrew/cask-versions
# Core casks
brew cask install fastlane
brew cask install --appdir="~/Applications" iterm2
brew cask install --appdir="~/Applications" java
brew cask install --appdir="~/Applications" xquartz
brew cask install caskroom/versions/java8
# Development tool casks
brew cask install --appdir="/Applications" visual-studio-code

# Misc casks
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" firefox
brew cask install --appdir="/Applications" dropbox
brew cask install --appdir="/Applications" react-native-debugger
brew cask install --appdir="/Applications" rowanj-gitx
brew cask install --appdir="/Applications" steam
brew cask install --appdir="/Applications" yujitach-menumeters
brew cask install --appdir="/Applications" docker

# Remove outdated versions from the cellar.
brew cleanup