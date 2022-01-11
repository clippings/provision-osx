#/usr/bin/env bash

# Install Command Line Extensions
xcode-select -p 1> /dev/null || xcode-select --install

# Install Brew if not installed
command -v brew > /dev/null || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add Homebrew to your PATH
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$USER/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Update Brew and Formulaе
brew update

# Install Brew bundle
brew tap Homebrew/bundle

# Install tools and apps for Non-Developers
brew bundle --file=Non-Developer.bundle

# Cleanup old downloads
brew cleanup
