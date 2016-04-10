#/usr/bin/env bash

# Install Brew if not installed
command -v brew > /dev/null || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Update Brew and Formulae
brew update

# Install brew bundle
brew tap Homebrew/bundle

# Install tools and apps from the Brewfile wih Brew and Cask
brew bundle --file=Brewfile

# Cleanup old downloads
brew cleanup
