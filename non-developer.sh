#/usr/bin/env bash

# Install Command Line Extensions
xcode-select -p 1> /dev/null || xcode-select --install

# Install Brew if not installed
command -v brew > /dev/null || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Update Brew and Formulaе
brew update

# Install brew bundle
brew tap Homebrew/bundle

# Install tools and apps for Non-Developers
brew bundle --file=Non-Developer.bundle

# Cleanup old downloads
brew cleanup
