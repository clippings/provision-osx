#/usr/bin/env bash

# Install Brew if not installed
command -v brew > /dev/null || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Update Brew and Formula
brew update

# Install brew bundle
brew tap Homebrew/bundle

# Install tools and apps for Devolepers
brew bundle --file=Developer.bundle

# Cleanup old downloads
brew cleanup

# If needed override the systems' PHP with the version from the Brewfile (currently version 7.1)
grep 'export PATH="/usr/local/opt/php@7.1/bin:$PATH"' ~/.bash_profile || echo 'export PATH="/usr/local/opt/php@7.1/bin:$PATH"' >> ~/.bash_profile
grep 'export PATH="/usr/local/opt/php@7.1/sbin:$PATH"' ~/.bash_profile || echo 'export PATH="/usr/local/opt/php@7.1/sbin:$PATH"' >> ~/.bash_profile
