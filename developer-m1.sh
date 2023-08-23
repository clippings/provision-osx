#/usr/bin/env bash

# Install Command Line Extensions
xcode-select -p 1> /dev/null || xcode-select --install

# Install Brew if not installed
command -v brew > /dev/null || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add Homebrew to your PATH
sudo echo 'eval $(/opt/homebrew/bin/brew shellenv)' >> /Users/$USER/.zprofile
sudo eval "$(/opt/homebrew/bin/brew shellenv)"

# Update Brew and Formulae
brew update

# Install Brew bundle
brew tap Homebrew/bundle

# Install tools and apps for Devolepers
brew bundle --file=Developer-m1.bundle

# Create the dir if it doesn't exist
[ -e /usr/local/bin ] || sudo mkdir -p /usr/local/bin

# Change owner of the dir
sudo chown -R 'whoami' /usr/local/bin

# Install Composer tool for dependency management
sudo ./composer.sh

# Set the latest Composer version(branch --1)
sudo composer self-update --1

# Cleanup old downloads
brew cleanup
