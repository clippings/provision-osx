#######################################
# Brewfile for host development machine
#######################################

# GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew 'coreutils'
# GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew 'findutils'
# GNU `sed`, overwriting the built-in `sed`
brew 'gnu-sed', args: ['default-names']
# Latest OpenSSL
brew 'openssl'
# Latest Bash
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
brew 'bash'
# Bash completion
brew 'bash-completion'

# Useful completions
brew 'homebrew/completions/brew-cask-completion'
brew 'homebrew/completions/bundler-completion'
brew 'homebrew/completions/gem-completion'
brew 'homebrew/completions/open-completion'
brew 'homebrew/completions/vagrant-completion'

# Latest versions of essential tools
brew 'wget', args: ['with-iri']
brew 'curl'
brew 'git'

# PHP and tools
brew 'homebrew/php/php70', args: ['with-gmp']
brew 'homebrew/php/php70-xdebug'

# Languages
brew 'node' # This installs `npm` too using the recommended installation method
brew 'python3'
brew 'rbenv'

# Image-related tools
brew 'jpegoptim'
brew 'optipng'
brew 'imagemagick', args: ['with-webp']

# For GUI and other apps having an installer
tap 'caskroom/cask'
tap 'caskroom/versions'

# Fonts
tap 'caskroom/fonts'
cask 'font-source-code-pro'

# Browsers
cask 'firefox'
cask 'google-chrome'

# Communication
cask 'slack'

# UI & vectors
cask 'sketch'

# Text-editors
brew 'vim', args: ['override-system-vi']
tap 'neovim/neovim'
brew 'neovim/neovim/neovim'
cask 'atom'
cask 'sublime-text3'

# Database client
cask 'sequel-pro'

# Virtualisation
cask 'vagrant'
cask 'virtualbox'
