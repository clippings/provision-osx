# Provision OSX - Developer/Non-Developer

Provision a new OSX machine with dev tools.

## Intro

This is not a dotfiles configuration repository, nor it is a recipe repository. It is just a simple set of commands and tools to set up a developer's/non-developer machine. Its aim is to reduce the initial time of installing tools and apps on a new machine.

A prerequisite is having a GitHub account. It's recommended to generate ssh keys for each new machine as described in [Generating a new SSH key and adding it to the ssh-agent](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/).

## Install

Clone this project in a location of your choosing:

``` bash
cd ~/Documents
git clone git@github.com:clippings/provision-osx.git
```

## Usage

### Tools and apps through Brew

Run the `./developer.sh` or `./non-developer.sh` file to install [Homebrew](http://brew.sh/) if it's not installed, update it, install [`brew bundle`](https://github.com/Homebrew/homebrew-bundle) and run it with [`Developer.bundle`][`Non-Developer.bundle`].

*Note*: You are encouraged to read through the [`Developer.bundle`][`Non-Developer.bundle`] and remove things you don't need, don't want, have them installed another way or have better alternatives for.

``` bash
cd provision-osx
./developer.sh or
./non-developer.sh
```
*Note*: After the installation of ./developer.sh script, Composer will be installed at ~/bin. You need to add it to your PATH with:
`echo " echo \"PATH=\$PATH:\$HOME/bin\" >> ~/.bash_profile` or change `$HOME/bin ` to a different folder that doesn't require `sudo`.

## Installed software

You should really read the [`Developer.bundle`][`Non-Developer.bundle`] and check the latest version of it and what it would install.

As an overview it installs:

- CLI tools like GNU coreutils, findutils, latest Bash 4, Bash tab completions
- Latest versions of Git, wget, cURL, OpenSSL
- Image tools like Imagick, optipng, jpegoptim
- Browsers: Google Chrome and Firefox
- Latest versions of Python, Node & npm, PHP and rbenv for Ruby
- Text editors like Vim, Neovim, Atom, Sublime Text. You are free to remove the ones you won't use.
- Vagrant & Virtualbox for virtualisation.
- Communication and design tools - e.g. Slack and Sketch.
- Source Code Pro font


## Updating software

 To update just run the following command:

 ``` bash
 brew update && brew upgrade --all
 ```
