#/usr/bin/env bash

# Install Brew if not installed
command -v brew > /dev/null || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Update Brew and Formulae
brew update

# Install brew bundle
brew tap Homebrew/bundle

# Install tools and apps for Devolepers
brew bundle --file=Developer.bundle

# Install pecl repository
./pecl_installs.sh

# Install composer tool for dependency management and instruct the Devoleper how to add the path into ~/.bash_profile
./composer.sh

echo "Composer is installed at ~/bin. You need to add it to your PATH with:"
echo
echo " echo \"PATH=\$PATH:\$HOME/bin\" >> ~/.bash_profile"
echo

# Cleanup old downloads
brew cleanup

# If needed override the systems' PHP with the version from the Brewfile (currently version 7.1)
grep 'export PATH="/usr/local/opt/php@7.1/bin:$PATH"' ~/.bash_profile || echo 'export PATH="/usr/local/opt/php@7.1/bin:$PATH"' >> ~/.bash_profile
grep 'export PATH="/usr/local/opt/php@7.1/sbin:$PATH"' ~/.bash_profile || echo 'export PATH="/usr/local/opt/php@7.1/sbin:$PATH"' >> ~/.bash_profile
