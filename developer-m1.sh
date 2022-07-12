#/usr/bin/env bash

# Install Command Line Extensions
xcode-select -p 1> /dev/null || xcode-select --install

# Install Brew if not installed
command -v brew > /dev/null || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Add Homebrew to your PATH
sudo echo 'eval $(/opt/homebrew/bin/brew shellenv)' >> /Users/$USER/.zprofile && eval "$(/opt/homebrew/bin/brew shellenv)"

# Update Brew and Formulae
brew update

# Install Brew bundle
brew tap Homebrew/bundle

# Install tools and apps for Devolepers
brew bundle --file=Developer-m1.bundle

# Install Composer tool for dependency management
sudo ./composer.sh
