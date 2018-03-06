#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `osx.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

cp ./dotfiles/.zshrc ~
cp ./dotfiles/.aliases ~
cp ./dotfiles/.gitconfig ~

# Atom
apm install linter linter-ui-default
apm install linter-eslint
apm install prettier-atom
apm install linter-pycodestyle
pip install pycodestyle
yarn global add prettier
cp ./dotfiles/config.cson ~/.atom/
