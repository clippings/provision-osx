#/usr/bin/env bash

# Install Command Line Extensions
xcode-select -p 1> /dev/null || xcode-select --install

# Install Brew if not installed
command -v brew > /dev/null || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Update Brew and Formulae
brew update

# Install Brew bundle
brew tap Homebrew/bundle

# Install tools and apps for Devolepers
brew bundle --file=Developer.bundle

# Install Composer tool for dependency management
./composer.sh

# Set the latest Composer version(branch --1)
composer self-update --1

# Instruct the Devoleper how to add the path into ~/.bash_profile
echo "Composer is installed at ~/bin. You need to add it to your PATH with:"
echo
echo " echo \"PATH=\$PATH:\$HOME/bin\" >> ~/.bash_profile"
echo

# Cleanup old downloads
brew cleanup
