#/usr/bin/env bash

# Install Brew if not installed
command -v brew > /dev/null || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Update Brew and Formula
brew update

# Install brew bundle
brew tap Homebrew/bundle

# Install tools and apps for Devolepers or Non-Developers
echo "Type the job role ( Developer or Non-Developer ), followed by [ENTER]:"
read role

while [[ "$role" != "Developer" && "$role" != "Non-Developer" ]]
do
  echo "Please type the correct format"
  read role
done

if [ "$role" != "Non-Developer" ]
then
  brew bundle --file=Developer
  pecl install xdebug
else
  brew bundle --file=Non-Developer
  pecl install xdebug
fi

# Cleanup old downloads
brew cleanup

# If needed override the systems' PHP with the version from the Brewfile (currently version 7.1)
grep 'export PATH="/usr/local/opt/php@7.1/bin:$PATH"' ~/.bash_profile || echo 'export PATH="/usr/local/opt/php@7.1/bin:$PATH"' >> ~/.bash_profile
grep 'export PATH="/usr/local/opt/php@7.1/sbin:$PATH"' ~/.bash_profile || echo 'export PATH="/usr/local/opt/php@7.1/sbin:$PATH"' >> ~/.bash_profile
