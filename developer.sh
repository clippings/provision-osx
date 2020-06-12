#/usr/bin/env bash

# Install Xcode
xcode-select -p 1> /dev/null || xcode-select --install

# Install Brew if not installed
command -v brew > /dev/null || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Update Brew and formulae
brew update

# Install Brew bundle
brew tap Homebrew/bundle

# Install Homebrew-deprecated
brew tap exolnet/homebrew-deprecated

# Install tools and apps for Devolepers
brew bundle --file=Developer.bundle

# Install Pecl repository
./pecl_installs.sh

# Install Composer tool for dependency management and instruct the Devoleper how to add the path into ~/.bash_profile
./composer.sh

echo "Composer is installed at ~/bin. You need to add it to your PATH with:"
echo
echo " echo \"PATH=\$PATH:\$HOME/bin\" >> ~/.bash_profile"
echo

# Cleanup old downloads
brew cleanup
