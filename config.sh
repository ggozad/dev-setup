#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `osx.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

cp ./dotfiles/.zshrc ~
cp ./dotfiles/.aliases ~
cp ./dotfiles/.gitconfig ~

# ssh
cp ./dotfiles/sshconfig ~/.ssh/config

cp -R ./dotfiles/.iterm ~