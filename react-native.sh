#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

brew install watchman

# iOS
brew install cocoapods

# Android
brew install zulu11
brew install android-studio
brew install android-platform-tools
brew install android-commandlinetools


echo 'export ANDROID_NDK_HOME="/usr/local/share/android-ndk"'